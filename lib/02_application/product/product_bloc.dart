import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sha_admin/03_domain/products/i_product_repo.dart';

import '../../05_core/models/apiresponse.dart';
import '../../05_core/services/image_picker.dart';
import '../../01_presentation/widgets/toast.dart';
import '../../03_domain/products/models/product/product_base_model.dart';

part 'product_state.dart';
part 'product_event.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductRepo iProductRepo;
  late ScrollController productScrollCtr;
  late ScrollController allProductScrollCtr;
  ProductBloc(this.iProductRepo) : super(ProductState.initial()) {
    void productByCategoryPagination() {
      productScrollCtr = ScrollController();
      productScrollCtr.addListener(
        () {
          if (productScrollCtr.position.pixels >=
              productScrollCtr.position.maxScrollExtent) {
            ProductBaseModel? baseModel =
                state.result.data as ProductBaseModel?;
            List<ProductData>? list = baseModel?.productList?.toList();
            if (list != null &&
                baseModel?.pagination?.totalRecords != null &&
                list.length < baseModel!.pagination!.totalRecords! &&
                state.result.pagination == true &&
                !(state.result.paginationLoading)) {
              int pageNo = baseModel.pagination!.page!;

              pageNo++;
              log("Pagination started $pageNo ${baseModel.pagination!.totalRecords!}");
              add(ProductEvent.getProductListByCategory(
                pageNo: pageNo,
                categoryId: state.categoryId ?? "",
              ));
            }
          }
        },
      );
    }

    void allProductsPagination() {
      allProductScrollCtr = ScrollController();
      allProductScrollCtr.addListener(
        () {
          if (allProductScrollCtr.position.pixels >=
              allProductScrollCtr.position.maxScrollExtent) {
            ProductBaseModel? baseModel =
                state.allProducts.data as ProductBaseModel?;
            List<ProductData>? list = baseModel?.productList?.toList();
            if (list != null &&
                baseModel?.pagination?.totalRecords != null &&
                list.length < baseModel!.pagination!.totalRecords! &&
                state.allProducts.pagination == true &&
                !(state.allProducts.paginationLoading)) {
              int pageNo = baseModel.pagination!.page!;

              pageNo++;
              log("Pagination started $pageNo ${baseModel.pagination!.totalRecords!}");
              add(ProductEvent.getAllProductList(pageNo: pageNo));
            }
          }
        },
      );
    }

    //  Do initial tasks here
    on<_Init>((event, emit) {
      allProductsPagination();
      productByCategoryPagination();
      add(const ProductEvent.getAllProductList());
    });

    // Get product list under category
    on<_GetProductListByCategory>(
      (event, emit) async {
        // When pagination works
        if (event.pageNo != null && event.pageNo != 1) {
          emit(state.copyWith(result: state.result.copyWith(pagination: true)));
        }
        // State on search product
        else if (event.searchKey != null) {
          emit(state.copyWith(
            categoryId: event.categoryId,
            result: state.result.copyWith(searchLoading: true),
          ));
        }
        // Get products
        else {
          emit(state.copyWith(
            categoryId: event.categoryId,
            result: state.result.copyWith(loading: true),
          ));
        }
        final dataOrFailure = await iProductRepo.getProductByCategory(
          page: event.pageNo,
          searchKey: event.searchKey,
          categoryId: event.categoryId,
        );
        dataOrFailure.fold((l) {
          emit(state.copyWith(
            result: state.result.copyWith(
              error: l,
              loading: false,
              pagination: false,
              searchLoading: false,
              paginationLoading: false,
            ),
          ));
        }, (result) {
          // Pagination data
          if (event.pageNo != null) {
            // Get data from state and add new data to list
            ProductBaseModel? baseModel =
                state.result.data as ProductBaseModel?;
            List<ProductData> list = baseModel?.productList?.toList() ?? [];
            list.addAll(result.productList ?? []);
            baseModel = baseModel?.copyWith(
              productList: list,
              pagination: result.pagination,
            );
            emit(state.copyWith(
              categoryId: event.categoryId,
              result: state.result.copyWith(
                error: null,
                loading: false,
                data: baseModel,
                searchLoading: false,
                paginationLoading: false,
                pagination: (baseModel?.productList != null &&
                        result.pagination?.totalRecords != null &&
                        baseModel!.productList!.length <
                            result.pagination!.totalRecords!)
                    ? true
                    : false,
              ),
            ));
          }
          // For the first response
          else {
            emit(state.copyWith(
              categoryId: event.categoryId,
              result: state.result.copyWith(
                error: null,
                data: result,
                loading: false,
                searchLoading: false,
                paginationLoading: false,
                pagination: (result.productList != null &&
                        result.pagination?.totalRecords != null &&
                        result.productList!.length <
                            result.pagination!.totalRecords!)
                    ? true
                    : false,
              ),
            ));
          }
        });
      },
    );

    // Get product list under category
    on<_GetAllProductList>(
      (event, emit) async {
        // When pagination works
        if (event.pageNo != null && event.pageNo != 1) {
          emit(state.copyWith(
              allProducts: state.allProducts.copyWith(pagination: true)));
        }
        // State on search product
        else if (event.searchKey != null) {
          emit(state.copyWith(
            allProducts: state.allProducts.copyWith(searchLoading: true),
          ));
        }
        // Get products
        else {
          emit(state.copyWith(
            allProducts: state.allProducts.copyWith(loading: true),
          ));
        }
        final dataOrFailure = await iProductRepo.getAllProduct(
          page: event.pageNo,
          searchKey: event.searchKey,
        );
        dataOrFailure.fold((l) {
          emit(state.copyWith(
            allProducts: state.allProducts.copyWith(
              error: l,
              loading: false,
              pagination: false,
              searchLoading: false,
              paginationLoading: false,
            ),
          ));
        }, (result) {
          // Pagination data
          if (event.pageNo != null) {
            // Get data from state and add new data to list
            ProductBaseModel? baseModel =
                state.allProducts.data as ProductBaseModel?;
            List<ProductData> list = baseModel?.productList?.toList() ?? [];
            list.addAll(result.productList ?? []);
            baseModel = baseModel?.copyWith(
              productList: list,
              pagination: result.pagination,
            );
            emit(state.copyWith(
              allProducts: state.allProducts.copyWith(
                error: null,
                loading: false,
                data: baseModel,
                searchLoading: false,
                paginationLoading: false,
                pagination: (baseModel?.productList != null &&
                        result.pagination?.totalRecords != null &&
                        baseModel!.productList!.length <
                            result.pagination!.totalRecords!)
                    ? true
                    : false,
              ),
            ));
          }
          // For the first response
          else {
            emit(state.copyWith(
              allProducts: state.allProducts.copyWith(
                error: null,
                data: result,
                loading: false,
                searchLoading: false,
                paginationLoading: false,
                pagination: (result.productList != null &&
                        result.pagination?.totalRecords != null &&
                        result.productList!.length <
                            result.pagination!.totalRecords!)
                    ? true
                    : false,
              ),
            ));
          }
        });
      },
    );

    on<_SearchBarVisibility>((event, emit) {
      emit(state.copyWith(searchEnabled: !state.searchEnabled));
    });

    // picker image from gallery
    on<_PickProductImage>((event, emit) {
      emit(state.copyWith(productImage: event.image));
    });
    // Edit product image and category
    on<_EditProduct>((event, emit) async {
      emit(state.copyWith(
        editProductRes: state.editProductRes.copyWith(loading: true),
      ));
      final dataOrFailure = await iProductRepo.editProduct(
        productUuid: event.productUuid,
        categoryUuid: event.categoryUuid,
        productImage: state.productImage,
      );
      dataOrFailure.fold((l) {
        emit(state.copyWith(
          productImage: null,
          editProductRes: state.editProductRes.copyWith(loading: false),
        ));
        failureToast("Something went wrong");
      }, (res) {
        // Update the list item
        ProductBaseModel? baseModel =
            state.allProducts.data as ProductBaseModel?;
        List<ProductData>? list = baseModel?.productList?.toList();
        baseModel = baseModel?.copyWith(productList: list);
        int? index = list?.indexWhere((element) => element.uuid == res.uuid);
        if (index != null && index != -1) {
          list![index] = res;
        }
        emit(state.copyWith(
          productImage: null,
          allProducts: state.allProducts.copyWith(data: baseModel),
          editProductRes: state.editProductRes.copyWith(loading: false),
        ));
        Navigator.pop(event.context);
        successToast("Product updated");
      });
    });

    // Reset Bloc
    on<_Reset>((event, emit) {
      emit(ProductState.initial());
    });
  }
}

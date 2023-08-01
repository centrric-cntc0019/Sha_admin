import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sha_admin/03_domain/products/i_product_repo.dart';

import '../../05_core/models/apiresponse.dart';
import '../../03_domain/products/models/product/product_base_model.dart';

part 'product_state.dart';
part 'product_event.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final IProductRepo iProductRepo;
  late ScrollController productScrollCtr;
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

    //  Do initial tasks here
    on<_Init>((event, emit) {
      productByCategoryPagination();
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
                data: baseModel,
                error: null,
                loading: false,
                pagination: false,
                searchLoading: false,
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
                pagination: false,
                searchLoading: false,
              ),
            ));
          }
        });
      },
    );
  }
}

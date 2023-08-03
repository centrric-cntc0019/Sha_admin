import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:sha_admin/02_application/product/product_bloc.dart';
import 'package:sha_admin/01_presentation/product/widgets/product.dart';
import 'package:sha_admin/01_presentation/product/widgets/product_search_icon.dart';
import 'package:sha_admin/01_presentation/product/widgets/product_list_heading.dart';
import 'package:sha_admin/01_presentation/product/widgets/product_list_shimmer.dart';

import '../widgets/wa_text.dart';
import '../widgets/error_widget.dart';
import '../../05_core/utils/themes.dart';
import '../widgets/search_bar_field.dart';
import '../../05_core/utils/constant.dart';
import '../widgets/pagination_loading_tile.dart';
import '../../03_domain/products/models/product/product_base_model.dart';

class AllProductsScreen extends StatefulWidget {
  const AllProductsScreen({super.key});

  @override
  State<AllProductsScreen> createState() => _AllProductsScreenState();
}

class _AllProductsScreenState extends State<AllProductsScreen> {
  Timer? _debounce;
  late TextEditingController searchCtr;

  @override
  void initState() {
    searchCtr = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchCtr.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      appBar: AppBar(
        // centerTitle: true,
        title: const WAText(
          text: "Products",
        ),
        actions: [
          const ProductSearchIcon(),
          sized0wx20,
        ],
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        buildWhen: (previous, current) {
          return previous.allProducts != current.allProducts;
        },
        builder: (context, state) {
          ProductBaseModel? baseModel =
              state.allProducts.data as ProductBaseModel?;
          List<ProductData>? productList = baseModel?.productList?.toList();

          return state.allProducts.loading
              ? const ProductListShimmer(fromAllProduct: true)
              : Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: RefreshIndicator(
                            onRefresh: () async {
                              searchCtr.clear();
                              context.read<ProductBloc>().add(
                                    const ProductEvent.getAllProductList(),
                                  );
                            },
                            child: CustomScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              controller: context
                                  .read<ProductBloc>()
                                  .allProductScrollCtr,
                              slivers: [
                                if (context.select((ProductBloc bloc) =>
                                    bloc.state.searchEnabled == true)) ...[
                                  SliverToBoxAdapter(
                                    child: SearchBarField(
                                      ctr: searchCtr,
                                      clearField: () {
                                        if (searchCtr.text.isNotEmpty) {
                                          context.read<ProductBloc>().add(
                                                const ProductEvent
                                                        .getAllProductList(
                                                    searchKey: ""),
                                              );
                                        }
                                      },
                                      onChanged: (String data) {
                                        if (_debounce?.isActive ?? false) {
                                          _debounce?.cancel();
                                        }
                                        _debounce = Timer(
                                          const Duration(milliseconds: 350),
                                          () {
                                            context.read<ProductBloc>().add(
                                                  ProductEvent
                                                      .getAllProductList(
                                                    searchKey: searchCtr.text,
                                                  ),
                                                );
                                          },
                                        );
                                      },
                                    ),
                                  )
                                ],
                                SliverList(
                                  delegate: SliverChildListDelegate(
                                    [
                                      ProductListHeading(
                                          count: baseModel
                                                  ?.pagination?.totalRecords ??
                                              0),
                                      state.allProducts.searchLoading
                                          ? SizedBox(
                                              height: 150.h,
                                              child:
                                                  const CupertinoActivityIndicator(),
                                            )
                                          : state.allProducts.error != null
                                              ? CustomErrorWidget(
                                                  mainFailure:
                                                      state.allProducts.error,
                                                  onTap: () {
                                                    context
                                                        .read<ProductBloc>()
                                                        .add(
                                                          const ProductEvent
                                                              .getAllProductList(),
                                                        );
                                                  },
                                                )
                                              : productList == null ||
                                                      productList.isEmpty
                                                  ? Lottie.asset(
                                                      'assets/lotties/empty_data.json')
                                                  : ListView.separated(
                                                      shrinkWrap: true,
                                                      physics:
                                                          const NeverScrollableScrollPhysics(),
                                                      itemCount:
                                                          productList.length +
                                                              1,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return const Divider();
                                                      },
                                                      itemBuilder:
                                                          (context, index) {
                                                        return productList
                                                                    .length ==
                                                                index
                                                            ? state.allProducts
                                                                    .pagination
                                                                ? const PaginationLoadingTile(
                                                                    padding:
                                                                        45.0)
                                                                : const SizedBox()
                                                            : GestureDetector(
                                                                onTap: () {
                                                                  // Navigator.of(context)
                                                                  //     .pushNamed(
                                                                  //   RouteNames
                                                                  //       .productDetailScreen,
                                                                  //   arguments: {
                                                                  //     "index_of_product": state
                                                                  //                 .productList !=
                                                                  //             null
                                                                  //         ? state
                                                                  //             .productList!
                                                                  //             .indexOf(state
                                                                  //                     .productList![
                                                                  //                 index])
                                                                  //         : null
                                                                  //   },
                                                                  // );
                                                                },
                                                                child:
                                                                    ProductItem(
                                                                  index: index,
                                                                  fromAllProduct:
                                                                      true,
                                                                ),
                                                              );
                                                      },
                                                    ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                );
        },
      ),
    );
  }
}

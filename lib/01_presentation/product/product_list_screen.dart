import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha_admin/02_application/product/product_bloc.dart';
import 'package:sha_admin/01_presentation/product/widgets/product.dart';
import 'package:sha_admin/01_presentation/product/widgets/product_list_heading.dart';
import 'package:sha_admin/01_presentation/product/widgets/product_list_shimmer.dart';
import 'package:sha_admin/01_presentation/product/widgets/product_list_carousel.dart';

import '../widgets/pagination_loading_tile.dart';
import '../widgets/wa_text.dart';
import '../widgets/error_widget.dart';
import '../../05_core/utils/themes.dart';
import '../widgets/search_bar_field.dart';
import '../../05_core/utils/constant.dart';
import '../../03_domain/products/models/product/product_base_model.dart';

class ProductListScreen extends StatefulWidget {
  final Map headText;
  const ProductListScreen({super.key, required this.headText});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
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
        title: WAText(
          text: widget.headText['category_name'],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // context.read<CategoryBloc>().add(
              //       const CategoryEvent.searchBarVisibility(),
              //     );
            },
            icon: Icon(
              Icons.search,
              // color: context.select(
              //         (CategoryBloc bloc) => bloc.state.searchEnabled == true)
              //     ? Colors.pink
              //     : Colors.white,
            ),
          ),
          sized0wx20,
        ],
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        buildWhen: (previous, current) {
          return previous.result != current.result;
        },
        builder: (context, state) {
          ProductBaseModel? baseModel = state.result.data as ProductBaseModel?;
          List<ProductData>? productList = baseModel?.productList?.toList();
          return state.result.loading
              ? const ProductListShimmer()
              : Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: RefreshIndicator(
                            onRefresh: () async {
                              searchCtr.clear();
                              context.read<ProductBloc>().add(
                                    ProductEvent.getProductListByCategory(
                                      categoryId: state.categoryId ?? "",
                                    ),
                                  );
                            },
                            child: CustomScrollView(
                              controller:
                                  context.read<ProductBloc>().productScrollCtr,
                              slivers: [
                                // if (context.select((CategoryBloc bloc) =>
                                //     bloc.state.searchEnabled == true)) ...[
                                //   SliverToBoxAdapter(
                                //     child: SearchBarField(
                                //       ctr: searchCtr,
                                //       clearField: () {
                                //         if (searchCtr.text.isNotEmpty) {
                                //           context.read<CategoryBloc>().add(
                                //                 CategoryEvent
                                //                     .getProductListByCategory(
                                //                   searchKey: "",
                                //                   categoryId: state.categoryId,
                                //                 ),
                                //               );
                                //         }
                                //       },
                                //       onChanged: (String data) {
                                //         if (_debounce?.isActive ?? false) {
                                //           _debounce?.cancel();
                                //         }
                                //         _debounce = Timer(
                                //           const Duration(milliseconds: 350),
                                //           () {
                                //             context.read<CategoryBloc>().add(
                                //                   CategoryEvent
                                //                       .getProductListByCategory(
                                //                     searchKey: searchCtr.text,
                                //                     categoryId:
                                //                         state.categoryId,
                                //                   ),
                                //                 );
                                //           },
                                //         );
                                //       },
                                //     ),
                                //   )
                                // ],
                                const SliverToBoxAdapter(
                                  child: ProductListCarousel(),
                                ),
                                SliverList(
                                  delegate: SliverChildListDelegate(
                                    [
                                      ProductListHeading(
                                          count: baseModel
                                                  ?.pagination?.totalRecords ??
                                              0),
                                      state.result.error != null
                                          ? CustomErrorWidget(
                                              mainFailure: state.result.error,
                                            )
                                          : productList == null ||
                                                  productList.isEmpty
                                              ? Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 80.h),
                                                  child: const WAText(
                                                    text: "No products found",
                                                    textAlign: TextAlign.center,
                                                  ),
                                                )
                                              : ListView.separated(
                                                  shrinkWrap: true,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  itemCount:
                                                      productList.length + 1,
                                                  separatorBuilder:
                                                      (context, index) {
                                                    return const Divider();
                                                  },
                                                  itemBuilder:
                                                      (context, index) {
                                                    return productList.length ==
                                                            index
                                                        ? state.result
                                                                .pagination
                                                            ? const PaginationLoadingTile(
                                                                padding: 45.0)
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
                                                            child: ProductItem(
                                                                index: index),
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

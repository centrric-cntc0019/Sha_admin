import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha_admin/01_presentation/home/widgets/category_shimmer.dart';
import 'package:sha_admin/01_presentation/home/widgets/category_add_or_edit_widget.dart';
import 'package:sha_admin/05_core/utils/custom_print.dart';

import '../widgets/wa_text.dart';
import '../widgets/wa_carousel.dart';
import '../widgets/error_widget.dart';
import 'widgets/category_grid_item.dart';
import '../../05_core/utils/constant.dart';
import '../../05_core/route/route_name.dart';
import '../../02_application/product/product_bloc.dart';
import '../../02_application/category/category_bloc.dart';
import '../../03_domain/category/models/category_list/category_base_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchCtr = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    searchCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: WAText(
          text: "Shah Distributors",
          fontSize: 19.sp,
          fontWeight: FontWeight.w500,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
              // Navigator.of(context).pushNamed(RouteNames.profile);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Icon(Icons.person),
            ),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          context.read<CategoryBloc>().add(const CategoryEvent.getCategory());
        },
        child: CustomScrollView(
          // controller: _scrollController,
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: WACarousel(
                height: 200.h,
                imageList: const [
                  'assets/lotties/shopping1.json',
                  'assets/lotties/shopping2.json'
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  BlocBuilder<CategoryBloc, CategoryState>(
                    buildWhen: (previous, current) {
                      return previous.result != current.result;
                    },
                    builder: (context, state) {
                      CategoryBaseModel? baseModel =
                          state.result.data as CategoryBaseModel?;
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sized0hx20,
                            Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  sized0hx20,
                                  Padding(
                                    padding: EdgeInsets.only(left: 10.w),
                                    child: WAText(
                                      text: "SHOP BY CATEGORY",
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700,
                                      fontColor: Colors.black38,
                                    ),
                                  ),
                                  sized0hx10,
                                  state.result.loading
                                      ? const CategoryShimmer()
                                      : state.result.error != null
                                          ? CustomErrorWidget(
                                              mainFailure: state.result.error,
                                              onTap: () {
                                                context
                                                    .read<CategoryBloc>()
                                                    .add(const CategoryEvent
                                                        .getCategory());
                                              },
                                            )
                                          : GridView.builder(
                                              padding: EdgeInsets.zero,
                                              shrinkWrap: true,
                                              physics: const ScrollPhysics(),
                                              itemCount:
                                                  baseModel?.data?.length ?? 0,
                                              gridDelegate:
                                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 3,
                                                // crossAxisSpacing: 4.0,
                                                // mainAxisSpacing: 4.0
                                              ),
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return CategoryGridItem(
                                                  image: baseModel?.data?[index]
                                                          .image ??
                                                      "",
                                                  categoryName: baseModel
                                                          ?.data?[index]
                                                          .categoryName ??
                                                      "",
                                                  offer: baseModel
                                                          ?.data?[index].offer
                                                          .toString() ??
                                                      "",
                                                  onTap: () {
                                                    //  Get products under category
                                                    context
                                                        .read<ProductBloc>()
                                                        .add(
                                                          ProductEvent.getProductListByCategory(
                                                              categoryId: baseModel
                                                                      ?.data?[
                                                                          index]
                                                                      .id ??
                                                                  ""),
                                                        );

                                                    Navigator.of(context)
                                                        .pushNamed(
                                                      RouteNames
                                                          .productListScreen,
                                                      arguments: {
                                                        'category_name':
                                                            baseModel
                                                                ?.data?[index]
                                                                .categoryName,
                                                        'category_uuid':
                                                            baseModel
                                                                ?.data?[index]
                                                                .id
                                                      },
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            builder: (BuildContext context) {
              return CategoryAddOrEditWidget(
                categoryEnum: EnumCategoryAddEdit.edit,
                ctr: context.read<CategoryBloc>().state.addCatCtr,
                formKey: _formKey,
                onTap: () {
                  var bloc = context.read<CategoryBloc>();
                  bloc.add(CategoryEvent.addEditCategory(
                      enumCategoryAddEdit: EnumCategoryAddEdit.add,
                      context: context,
                      categoryName: bloc.state.addCatCtr.text,
                      image: bloc.state.categoryImage));
                },
              );
            },
          ).whenComplete(() => context
              .read<CategoryBloc>()
              .add(const CategoryEvent.addCategoryReset()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

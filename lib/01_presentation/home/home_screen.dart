import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:sha_admin/01_presentation/home/widgets/category_shimmer.dart';
import 'package:sha_admin/01_presentation/home/widgets/category_add_or_edit_widget.dart';
import 'package:sha_admin/01_presentation/widgets/wa_button.dart';
import 'package:sha_admin/02_application/auth/auth_bloc.dart';
import 'package:sha_admin/05_core/services/image_picker.dart';
import 'package:sha_admin/05_core/utils/themes.dart';

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
              showDialog(
                context: context,
                barrierColor: Colors.transparent,
                builder: (BuildContext context) => const LogoutDialogueWidget(),
                // barrierColor: Colors.transparent,
              );

              // context.read<ProfileBloc>().add(const ProfileEvent.getProfile());
              // Navigator.of(context).pushNamed(RouteNames.profile);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Icon(Icons.logout_outlined),
            ),
          )
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          Future block = context.read<CategoryBloc>().stream.first;
          context.read<CategoryBloc>().add(const CategoryEvent.getCategory());
          await block;
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
                [const CategoryGridListWidget()],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionWidget(formKey: _formKey),
    );
  }
}

class LogoutDialogueWidget extends StatelessWidget {
  const LogoutDialogueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 05, sigmaY: 05),
      child: Dialog(
        elevation: 50,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WAText(
                text: 'Do you want to logout?',
              ),
              sized0hx10,
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  children: [
                    yesLogout(context),
                    sized0wx10,
                    cancel(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded cancel(BuildContext context) {
    return Expanded(
      child: WAButton(
        textColor: cPrimaryColor,
        fontWeight: FontWeight.bold,
        buttonColor: Colors.white,
        buttonText: 'Cancel',
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  Expanded yesLogout(BuildContext context) {
    return Expanded(
      flex: 2,
      child: WAButton(
        buttonText: 'Yes, log out',
        buttonColor: cPrimaryColor,
        textColor: cWhite,
        onPressed: () {
          context.read<AuthBloc>().add(const AuthEvent.logout());
          context.read<AuthBloc>().add(const AuthEvent.reset());
          context.read<ProductBloc>().add(const ProductEvent.reset());
          context.read<AuthBloc>().add(const AuthEvent.reset());

          Navigator.pushNamedAndRemoveUntil(
              context, RouteNames.loginPage, (route) => false);
        },
      ),
    );
  }
}

class FloatingActionWidget extends StatelessWidget {
  const FloatingActionWidget({
    super.key,
    required GlobalKey<FormState> formKey,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context
            .read<CategoryBloc>()
            .add(const CategoryEvent.addCategoryReset());
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          builder: (BuildContext context) {
            return CategoryAddOrEditWidget(
              categoryEnum: EnumCategoryAddEdit.add,
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
    );
  }
}

class CategoryGridListWidget extends StatelessWidget {
  const CategoryGridListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryBloc, CategoryState>(
      buildWhen: (previous, current) {
        return previous.result != current.result;
      },
      builder: (context, state) {
        CategoryBaseModel? baseModel = state.result.data as CategoryBaseModel?;
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
                                      .add(const CategoryEvent.getCategory());
                                },
                              )
                            : (baseModel?.data?.isEmpty ?? true)
                                ? Lottie.asset('assets/lotties/empty_data.json')
                                : GridView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    physics: const ScrollPhysics(),
                                    itemCount: baseModel?.data?.length ?? 0,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      // crossAxisSpacing: 4.0,
                                      // mainAxisSpacing: 4.0
                                    ),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return CategoryGridItem(
                                        image:
                                            baseModel?.data?[index].image ?? "",
                                        categoryName: baseModel
                                                ?.data?[index].categoryName ??
                                            "",
                                        offer: baseModel?.data?[index].offer
                                                .toString() ??
                                            "",
                                        onTap: () {
                                          //  Get products under category
                                          var data = baseModel?.data?[index];

                                          context.read<ProductBloc>().add(
                                                ProductEvent
                                                    .getProductListByCategory(
                                                        categoryId:
                                                            data?.id ?? ""),
                                              );

                                          context.read<CategoryBloc>().add(
                                                  CategoryEvent
                                                      .pickCategoryImage(
                                                image: ImagePickerModel(
                                                    imageUrl: data?.image),
                                              ));

                                          context
                                              .read<CategoryBloc>()
                                              .state
                                              .addCatCtr
                                              .text = data?.categoryName ?? '';

                                          Navigator.of(context).pushNamed(
                                            RouteNames.productListScreen,
                                            arguments: {
                                              'category_name': baseModel
                                                  ?.data?[index].categoryName,
                                              'category_uuid':
                                                  baseModel?.data?[index].id
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
    );
  }
}

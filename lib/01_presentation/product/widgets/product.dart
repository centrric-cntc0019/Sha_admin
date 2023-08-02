import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha_admin/02_application/product/product_bloc.dart';
import 'package:sha_admin/03_domain/category/models/category_list/category_base_model.dart';

import '../../../03_domain/di/injection.dart';
import '../../../05_core/services/image_picker.dart';
import '../../widgets/wa_text.dart';
import '../../widgets/wa_button.dart';
import '../../../05_core/utils/constant.dart';
import '../../../02_application/category/category_bloc.dart';
import '../../../03_domain/products/models/product/product_base_model.dart';
import '../../../03_domain/category/models/category_list/category_model.dart';

enum IncDecType { fromprodList, fromCart }

class ProductItem extends StatelessWidget {
  final int index;
  final bool fromAllProduct;
  const ProductItem({
    super.key,
    required this.index,
    this.fromAllProduct = false,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final data;
    if (fromAllProduct) {
      data = context
          .read<ProductBloc>()
          .state
          .allProducts
          .data
          .productList?[index];
    } else {
      data = context.read<ProductBloc>().state.result.data.productList?[index];
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 75.h,
            width: (size.width * .25),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      data?.productImageThumb ?? data?.productImage ?? "",
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: WAText(
                          text: data?.name ?? "",
                          fontWeight: FontWeight.w500,
                          fontSize: 16.sp,
                        ),
                      ),
                      ProductEditBtn(product: data),
                    ],
                  ),
                  sized0hx05,
                  WAText(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                    text: "\$${data?.salesDetails?.unitPrice}",
                  ),
                  sized0hx05,
                  if (fromAllProduct) ...[
                    if (data?.productCategory?.categoryName != null) ...[
                      Row(
                        children: [
                          WAText(
                            fontSize: 15.sp,
                            text: "Category : ",
                          ),
                          WAText(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w700,
                            fontColor: Theme.of(context).primaryColor,
                            text:
                                "${data?.productCategory?.categoryName ?? ""}",
                          ),
                          sized0wx05,
                        ],
                      )
                    ] else ...[
                      WAText(
                        fontSize: 12.sp,
                        fontColor: Colors.red,
                        fontWeight: FontWeight.w300,
                        text: "Category missing",
                      ),
                    ],
                    sized0hx05
                  ],
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProductEditBtn extends StatelessWidget {
  final ProductData product;
  const ProductEditBtn({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [
          const PopupMenuItem<int>(
            value: 0,
            child: Text("Edit"),
          )
        ];
      },
      onSelected: (value) {
        if (value == 0) {
          showModalBottomSheet<void>(
            context: context,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            builder: (BuildContext context) {
              return ProductUpdateSheet(product: product);
            },
          );
        }
      },
    );
  }
}

class ProductUpdateSheet extends StatefulWidget {
  const ProductUpdateSheet({
    super.key,
    required this.product,
  });

  final ProductData product;

  @override
  State<ProductUpdateSheet> createState() => _ProductUpdateSheetState();
}

class _ProductUpdateSheetState extends State<ProductUpdateSheet> {
  CategoryModel? selectedCategory;
  late CategoryBloc bloc;
  late ProductBloc productBloc;

  List<CategoryModel>? categoryList;
  @override
  void initState() {
    bloc = context.read<CategoryBloc>();
    productBloc = context.read<ProductBloc>();
    CategoryBaseModel? categoryBaseModel =
        bloc.state.result.data as CategoryBaseModel?;
    categoryList = categoryBaseModel?.data ?? [];
    int? index = categoryList?.indexWhere(
        (element) => element.id == widget.product.productCategory?.uuid);
    if (index != null && index != -1) {
      selectedCategory = categoryList![index];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WAText(
            fontSize: 20.sp,
            text: "${widget.product.name}",
            fontWeight: FontWeight.w700,
          ),
          sized0hx10,
          Align(
            alignment: Alignment.center,
            child: BlocBuilder<ProductBloc, ProductState>(
              buildWhen: (previous, current) =>
                  previous.productImage != current.productImage,
              builder: (context, state) {
                return InkWell(
                  onTap: () async {
                    ImagePickerModel? image =
                        await getIt<ImagePickerService>().imagePicker(context);
                    if (image != null) {
                      productBloc
                          .add(ProductEvent.pickProductImage(image: image));
                    }
                  },
                  child: PickImageWidget(
                    productImage: state.productImage?.imagePath,
                    netWorkImage: widget.product.productImageThumb ??
                        widget.product.productImage,
                  ),
                );
              },
            ),
          ),
          sized0hx20,
          WAText(
            fontSize: 20.sp,
            text: "Select Category",
            fontWeight: FontWeight.w500,
          ),
          sized0hx10,
          DropdownButton<CategoryModel>(
            isExpanded: true,
            hint: const Text("Select Category"),
            value: selectedCategory,
            items: categoryList?.map((CategoryModel value) {
              return DropdownMenuItem<CategoryModel>(
                value: value,
                child: Text(value.categoryName ?? ""),
              );
            }).toList(),
            onChanged: (cat) {
              selectedCategory = cat;
              setState(() {});
            },
          ),
          sized0hx40,
          BlocBuilder<ProductBloc, ProductState>(
            buildWhen: (previous, current) =>
                previous.editProductRes.loading !=
                current.editProductRes.loading,
            builder: (context, state) {
              return WAButton(
                onPressed: () {},
                buttonText: "Update",
                loading: state.editProductRes.loading,
              );
            },
          ),
        ],
      ),
    );
  }
}

class PickImageWidget extends StatelessWidget {
  final String? productImage, netWorkImage;
  const PickImageWidget({
    super.key,
    this.productImage,
    this.netWorkImage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 80.w,
          height: 70.h,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: productImage != null
              ? Image.file(
                  File(productImage!),
                  fit: BoxFit.cover,
                )
              : netWorkImage != null
                  ? Image.network(
                      netWorkImage!,
                      fit: BoxFit.cover,
                    )
                  : const Icon(
                      Icons.add,
                      size: 30.0,
                    ),
        ),
        if (productImage != null || netWorkImage != null)
          Positioned(
            bottom: -10,
            right: -10,
            child: CircleAvatar(
              backgroundColor: Theme.of(context).colorScheme.secondary,
              child: const Icon(Icons.add),
            ),
          ),
      ],
    );
  }
}

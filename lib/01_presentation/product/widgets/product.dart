import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:sha_admin/02_application/product/product_bloc.dart';
import 'package:sha_admin/01_presentation/product/widgets/product_update_sheet.dart';

import '../../widgets/wa_text.dart';
import '../../../05_core/utils/constant.dart';
import '../../../03_domain/products/models/product/product_base_model.dart';

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
    // ignore: prefer_typing_uninitialized_variables
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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // height: 75.h,
            // width: (size.width * .25),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        imageUrl:
                            data?.productImageThumb ?? data?.productImage ?? "",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      )),
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
                          maxLine: 2,
                        ),
                      ),
                      ProductEditBtn(
                        product: data,
                        fromAllProduct: fromAllProduct,
                      ),
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
  final bool fromAllProduct;
  const ProductEditBtn({
    super.key,
    required this.product,
    required this.fromAllProduct,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          builder: (BuildContext context) {
            return ProductUpdateSheet(
              product: product,
              fromAllProduct: fromAllProduct,
            );
          },
        );
      },
      icon: const Icon(
        Icons.edit_note,
        size: 25.0,
      ),
    );
  }
}

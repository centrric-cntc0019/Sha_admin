import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha_admin/02_application/product/product_bloc.dart';

import '../../widgets/wa_text.dart';
import '../../../05_core/utils/constant.dart';

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
                      WAText(
                        text: data?.name ?? "",
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.more_vert),
                      )
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

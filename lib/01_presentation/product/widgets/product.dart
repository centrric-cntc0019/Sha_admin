import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha_admin/02_application/product/product_bloc.dart';

import '../../widgets/wa_text.dart';
import '../../../05_core/utils/constant.dart';

enum IncDecType { fromprodList, fromCart }

class ProductItem extends StatelessWidget {
  final int index;
  const ProductItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final data =
        context.read<ProductBloc>().state.result.data.productList?[index];
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
                      data?.productImage ?? "",
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
                  WAText(
                    text: data?.name ?? "",
                    fontWeight: FontWeight.w500,
                    fontSize: 16.sp,
                  ),
                  sized0hx05,
                  Row(
                    children: [
                      WAText(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        text: "\$${data?.salesDetails?.unitPrice}",
                      ),
                      sized0wx05,
                    ],
                  ),
                  sized0hx05,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

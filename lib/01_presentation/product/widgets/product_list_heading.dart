import '../../widgets/wa_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductListHeading extends StatelessWidget {
  const ProductListHeading({
    super.key,
    required this.count,
  });
  final int count;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.h,
      margin: EdgeInsets.only(left: 4.w),
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r), topRight: Radius.circular(10.r)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WAText(
            text: "$count items",
            fontSize: 13.sp,
          ),
          // WAButton(
          //   buttonColor: Colors.white,
          //   leadingIcon: Icons.file_copy_outlined,
          //   onPressed: () {},
          //   height: 30.h,
          //   buttonText: "Filter",
          //   fontSize: 10.h,
          //   iconSize: 10.sp,
          //   padding: 10,
          // )
        ],
      ),
    );
  }
}

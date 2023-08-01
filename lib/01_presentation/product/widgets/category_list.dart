import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/wa_text.dart';
import '../../../05_core/utils/constant.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
    required this.categoryImageList,
  });

  final List categoryImageList;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      width: 70.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10.r)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.3),
              offset: const Offset(2, 1),
              blurRadius: 2.0,
              spreadRadius: 2.0,
            ),
            BoxShadow(
              color: Colors.grey.withOpacity(.3),
              offset: const Offset(0, -3),
              blurRadius: 3.0,
              spreadRadius: 3.0,
            ),
          ]),
      child: ListView.builder(
        itemCount: categoryImageList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              sized0hx10,
              Container(
                padding: EdgeInsets.all(10.h),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10.r)),
                child: Image.network(
                  categoryImageList[index],
                  fit: BoxFit.cover,
                  height: 40.h,
                  width: 40.w,
                ),
              ),
              sized0hx10,
              WAText(
                text: "Chocolate",
                fontSize: 10.sp,
              )
            ],
          );
        },
      ),
    );
  }
}

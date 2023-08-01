import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/wa_text.dart';
import '../../../05_core/utils/themes.dart';
import '../../../05_core/utils/constant.dart';

class SubCategoryList extends StatelessWidget {
  const SubCategoryList({
    super.key,
    required this.categoryImageList,
  });

  final List categoryImageList;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeInOutCubic,
      duration: const Duration(milliseconds: 500),
      height: 80.h,
      margin: EdgeInsets.only(left: 4.h),
      padding: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r),
            topRight: Radius.circular(10.r),
            // bottomRight: Radius.circular(10.r),
            bottomLeft: Radius.circular(10.r)),
        color: cWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.3),
            offset: const Offset(0, 5),
            blurRadius: 2.0,
            spreadRadius: 2.0,
          ),
          // BoxShadow(
          //   color: Colors.grey.withOpacity(.3),
          //   // offset: const Offset(0, -3),
          //   blurRadius: 3.0,
          //   spreadRadius: 3.0,
          // ),
        ],
      ),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categoryImageList.length,
        separatorBuilder: (context, index) {
          return sized0wx10;
        },
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundColor: Theme.of(context).colorScheme.secondary,
                child: Image.network(
                  categoryImageList[index],
                  height: 20.h,
                ),
              ),
              sized0hx05,
              WAText(
                text: "hot choclate",
                fontSize: 10.sp,
              )
            ],
          );
        },
      ),
    );
  }
}

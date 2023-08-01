import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShimmerTextWidget extends StatelessWidget {
  final double? width;
  const ShimmerTextWidget({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 70.w,
      height: 10.h,
      color: Colors.grey,
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/wa_carousel.dart';

class ProductListCarousel extends StatelessWidget {
  const ProductListCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      padding: const EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 4.h, left: 4.h, right: 6.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            // BoxShadow(
            //   color: Colors.grey.withOpacity(.3),
            //   offset: const Offset(0, 0),
            //   blurRadius: 2.0,
            //   spreadRadius: 2.0,
            // ),
            BoxShadow(
              color: Colors.grey.withOpacity(.3),
              offset: const Offset(0, -3),
              blurRadius: 3.0,
              spreadRadius: 3.0,
            ),
          ]),
      child: WACarousel(
        height: 150.h,
        imageList: const [
          'assets/lotties/shopping1.json',
          'assets/lotties/shopping2.json'
        ],
      ),
    );
  }
}

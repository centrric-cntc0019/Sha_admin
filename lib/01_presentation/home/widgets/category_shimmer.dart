import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../05_core/utils/constant.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .3,
      child: GridView.builder(
        itemCount: kIsWeb ? 10 : 6,
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          // crossAxisCount: 3,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              height: 60.h,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(.1),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: const BorderRadiusDirectional.vertical(
                          top: Radius.circular(100.0),
                          bottom: Radius.circular(30.0),
                        ),
                      ),
                      clipBehavior: Clip.hardEdge,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Container(
                    height: 10.h,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    color: Colors.grey[100],
                  ),
                  sized0hx05
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

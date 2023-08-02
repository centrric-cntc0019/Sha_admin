import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/wa_text.dart';
import '../../../05_core/utils/constant.dart';

class CategoryGridItem extends StatelessWidget {
  final String image;
  final VoidCallback onTap;
  final String categoryName;
  final String offer;
  const CategoryGridItem(
      {super.key,
      required this.image,
      required this.onTap,
      required this.categoryName,
      required this.offer});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
      highlightColor: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
      onTap: onTap,
      child: Container(
        height: 60.h,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.withOpacity(.1))),
        child: Column(
          children: [
            Expanded(
              child: Container(
                  margin: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: const BorderRadiusDirectional.vertical(
                      top: Radius.circular(100.0),
                      bottom: Radius.circular(30.0),
                    ),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: CachedNetworkImage(
                    imageUrl: image,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(height: 1.h),
            WAText(
              fontSize: 11.sp,
              text: categoryName,
              fontWeight: FontWeight.w500,
            ),
            sized0hx05
          ],
        ),
      ),
    );
  }
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class PickImageWidget extends StatelessWidget {
  final String? productImage, netWorkImage;
  const PickImageWidget({
    super.key,
    this.productImage,
    this.netWorkImage,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 80.w,
          height: 70.h,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: productImage != null
              ? (kIsWeb)
                  ? Image.network(
                      productImage!,
                      fit: BoxFit.cover,
                    )
                  : Image.file(
                      File(productImage!),
                      fit: BoxFit.cover,
                    )
              : netWorkImage != null
                  ? Image.network(
                      netWorkImage!,
                      fit: BoxFit.cover,
                    )
                  : const Icon(
                      Icons.image_outlined,
                      size: 30.0,
                    ),
        ),
        Positioned(
          bottom: -10,
          right: -10,
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.secondary,
            child: const Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}

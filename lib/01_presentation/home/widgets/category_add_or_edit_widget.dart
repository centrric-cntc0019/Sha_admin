import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/wa_text.dart';
import '../../widgets/wa_button.dart';
import '../../widgets/wa_text_field.dart';
import '../../../05_core/utils/constant.dart';

class CategoryAddOrEditWidget extends StatelessWidget {
  final String title;
  final bool addCategory;
  final TextEditingController ctr;
  const CategoryAddOrEditWidget({
    super.key,
    required this.ctr,
    required this.title,
    this.addCategory = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 15.0,
          left: 15.0,
          right: 15.0,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WAText(
            text: title,
            fontSize: 19.sp,
            fontWeight: FontWeight.w500,
          ),
          sized0hx20,
          if (addCategory) ...[
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 80.w,
                height: 70.h,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Icon(
                  Icons.add,
                  size: 30.0,
                ),
              ),
            )
          ],
          sized0hx30,
          WaTextField(
            ctr: ctr,
            horizontalContentPadding: 20.0,
            borderColor: Colors.black,
            hintText: "Enter category name",
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return "Please enter category name";
              }
              return null;
            },
          ),
          sized0hx40,
          WAButton(
            onPressed: () {},
            buttonText: "Add",
          ),
          sized0hx20,
        ],
      ),
    );
  }
}

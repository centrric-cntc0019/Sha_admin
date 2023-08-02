import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha_admin/01_presentation/widgets/wa_text.dart';
import 'package:sha_admin/01_presentation/widgets/wa_button.dart';

import '../../05_core/utils/constant.dart';
import '../../05_core/failure/main_failure.dart';

class CustomErrorWidget extends StatelessWidget {
  final Function()? onTap;
  final MainFailure? mainFailure;
  const CustomErrorWidget({super.key, this.mainFailure, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          sized0hx05,
          if (mainFailure == const MainFailure.clientFailure()) ...{
            const ErrorText(error: "Something went wrong")
          } else if (mainFailure == const MainFailure.networkFailure()) ...{
            const ErrorText(error: "please check internet connection")
          } else if (mainFailure == const MainFailure.serverFailure()) ...{
            const ErrorText(error: "server failure")
          } else ...{
            const ErrorText(error: "Something went wrong"),
          },
          sized0hx10,
          WAButton(
            width: 200.w,
            buttonText: "Retry",
            onPressed: onTap ?? () {},
          ),
          sized0hx40,
        ],
      ),
    );
  }
}

class ErrorText extends StatelessWidget {
  final String error;
  const ErrorText({Key? key, required this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WAText(
      text: error,
      fontSize: 20.sp,
      fontColor: Colors.red,
      fontWeight: FontWeight.w500,
    );
  }
}

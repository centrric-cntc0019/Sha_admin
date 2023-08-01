import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../05_core/utils/themes.dart';

void scoutySuccessToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.green.withOpacity(.7),
      textColor: Colors.black,
      fontSize: 16.0);
}

void scoutyFailureToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppTheme.themeData.primaryColor.withOpacity(.5),
      textColor: Colors.white,
      fontSize: 16.0);
}

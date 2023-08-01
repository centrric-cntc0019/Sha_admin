import 'package:flutter/material.dart';

const cPrimaryColor = Color(0xFF172d54);
const cSecondaryColor = Color(0xFFffb81a);
const cBackgroundColor = Colors.white;
const cButtonColor = Color(0xFFffb81a);
//  Color(0xFFEA5F6E);
const cWhite = Colors.white;
const cBlack = Colors.black;

abstract class AppTheme {
  static final ThemeData themeData = ThemeData(
    primaryColor: cPrimaryColor,
    textSelectionTheme: TextSelectionThemeData(
        selectionColor: Colors.grey.withOpacity(.5),
        selectionHandleColor: Colors.grey.withOpacity(.5)),
    appBarTheme: const AppBarTheme(color: cPrimaryColor),
    colorScheme: const ColorScheme.light(
      secondary: cSecondaryColor,
      background: cBackgroundColor,
    ),
  );
}

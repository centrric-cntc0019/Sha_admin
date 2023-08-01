import 'package:flutter/material.dart';

class WAText extends StatelessWidget {
  final String text;
  final int? maxLine;
  final double? fontSize;
  final Color? fontColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final TextOverflow? textOverflow;
  const WAText({
    super.key,
    this.maxLine,
    this.fontSize,
    this.fontColor,
    this.textAlign,
    this.fontWeight,
    required this.text,
    this.textDecoration,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      textAlign: textAlign ?? TextAlign.left,
      overflow: textOverflow,
      style: TextStyle(
        color: fontColor,
        fontSize: fontSize,
        decoration: textDecoration,
        fontWeight: fontWeight,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}

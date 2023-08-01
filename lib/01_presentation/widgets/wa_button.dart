import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sha_admin/01_presentation/widgets/wa_text.dart';

import '../../05_core/utils/themes.dart';
import '../../05_core/utils/constant.dart';

class WAButton extends StatefulWidget {
  final double? height;
  final double? width;
  final String? buttonText;
  final Color buttonColor;
  final Color? textColor;
  final Color? borderColor;
  final FontWeight? fontWeight;
  final VoidCallback? onTap;
  final double? fontSize;
  final IconData? leadingIcon;
  final double? padding;
  final VoidCallback onPressed;
  final double? iconSize;
  final bool ignore;
  final bool? loading;

  const WAButton({
    super.key,
    this.height,
    this.width,
    this.buttonText,
    this.buttonColor = cSecondaryColor,
    this.borderColor,
    this.fontWeight,
    this.onTap,
    this.textColor,
    this.fontSize,
    this.leadingIcon,
    this.padding,
    this.iconSize,
    this.loading,
    this.ignore = false,
    required this.onPressed,
  });

  @override
  State<WAButton> createState() => _WAButtonState();
}

class _WAButtonState extends State<WAButton> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.ignore ? 0.3 : 1,
      child: InkWell(
        onTap: widget.ignore
            ? () {}
            : () => {
                  widget.onPressed(),
                },
        onTapDown: (_) {
          setState(() {
            _pressed = true;
          });
        },
        onTapCancel: () {
          setState(() {
            _pressed = false;
          });
        },
        onTapUp: (_) {
          setState(() {
            _pressed = false;
          });
        },
        child: AnimatedContainer(
          alignment: Alignment.center,
          duration: const Duration(milliseconds: 150),
          height: widget.height,
          curve: Curves.easeInOut,
          padding: EdgeInsets.symmetric(
              horizontal: widget.padding ?? 10.h,
              vertical: widget.padding ?? 10.w),
          width: widget.width,
          decoration: BoxDecoration(
            color: _pressed
                ? widget.buttonColor.withOpacity(.5)
                : widget.buttonColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, 2),
                blurRadius: 4,
              ),
            ],
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: widget.borderColor ?? widget.buttonColor),
          ),
          child: (widget.loading ?? false)
              ? SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor),
                )
              : widget.leadingIcon != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          widget.leadingIcon,
                          size: widget.iconSize ?? 16.sp,
                        ),
                        sized0wx05,
                        WAText(
                          text: widget.buttonText ?? "",
                          fontColor: widget.textColor,
                          fontWeight: widget.fontWeight,
                          fontSize: widget.fontSize,
                        )
                      ],
                    )
                  : Center(
                      child: WAText(
                        text: widget.buttonText ?? "",
                        fontColor: widget.textColor,
                        fontWeight: widget.fontWeight,
                        fontSize: widget.fontSize,
                      ),
                    ),
        ),
      ),
    );
  }
}

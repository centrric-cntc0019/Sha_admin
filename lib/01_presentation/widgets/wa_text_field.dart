import 'package:flutter/material.dart';
import 'package:sha_admin/01_presentation/widgets/wa_text.dart';

class WaTextField extends StatelessWidget {
  final String? label;
  final int? maxLength;
  final TextEditingController ctr;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool? filled;
  final String? hintText;
  final Function()? onTap;
  final Color? borderColor;
  final Color? filledColor;
  final IconData? leadingIcon;
  final bool? isDense, readOnly;
  final Color? leadingIconColor;
  final bool? autoFocus;
  final bool? isUnderLineBorder;
  final String? suffixText;
  final double? verticalContentPadding;
  final double? horizontalContentPadding;
  const WaTextField({
    super.key,
    this.validator,
    this.label,
    this.maxLength,
    required this.ctr,
    this.filledColor,
    this.filled,
    this.isDense,
    this.leadingIcon,
    this.borderColor,
    this.keyboardType,
    this.leadingIconColor,
    this.autoFocus,
    this.hintText,
    this.isUnderLineBorder = false,
    this.suffixText,
    this.verticalContentPadding,
    this.horizontalContentPadding,
    this.onTap,
    this.readOnly,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: ctr,
      onTap: onTap,
      validator: validator,
      readOnly: readOnly ?? false,
      keyboardType: keyboardType,
      autofocus: autoFocus ?? false,
      maxLength: maxLength,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        counterText: "",
        contentPadding: EdgeInsets.symmetric(
            vertical: verticalContentPadding ?? 0,
            horizontal: horizontalContentPadding ?? 0),
        prefixIcon: leadingIcon != null ? Icon(leadingIcon) : null,
        prefixIconColor: leadingIconColor,
        fillColor: filledColor,
        filled: filled,
        suffixIcon: suffixText != null
            ? MaterialButton(
                onPressed: () {},
                child: WAText(text: suffixText ?? ""),
              )
            : null,
        labelText: label,
        isDense: isDense,
        hintText: hintText,
        // contentPadding: const EdgeInsets.only(top: 0.0, bottom: 0.0),
        enabledBorder: isUnderLineBorder == true
            ? const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black12))
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  width: 1,
                  color: borderColor ?? Colors.greenAccent,
                ),
              ),
        focusedBorder: isUnderLineBorder == true
            ? const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black12))
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                    width: 1, color: borderColor ?? Colors.greenAccent),
              ),
        errorBorder: isUnderLineBorder == true
            ? const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red))
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide:
                    BorderSide(width: 1, color: borderColor ?? Colors.red),
              ),
        focusedErrorBorder: isUnderLineBorder == true
            ? const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.red))
            : OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(width: 1, color: Colors.red),
              ),
      ),
    );
  }
}

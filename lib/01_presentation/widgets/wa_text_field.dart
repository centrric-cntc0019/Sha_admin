import 'package:flutter/material.dart';
import 'package:sha_admin/01_presentation/widgets/wa_text.dart';

class WaTextField extends StatelessWidget {
  final String? label;
  final TextEditingController ctr;
  final String? Function(String?)? validator;
  final String? hintText;
  final Color? borderColor;
  final bool? filled;
  final Color? filledColor;
  final bool? isDense;
  final IconData? leadingIcon;
  final Color? leadingIconColor;
  final bool? autoFocus;
  final bool? isUnderLineBorder;
  final String? suffixText;
  final double? verticalContentPadding;
  final double? horizontalContentPadding;
  const WaTextField(
      {super.key,
      this.validator,
      this.label,
      required this.ctr,
      this.filledColor,
      this.filled,
      this.isDense,
      this.leadingIcon,
      this.borderColor,
      this.leadingIconColor,
      this.autoFocus,
      this.hintText,
      this.isUnderLineBorder = false,
      this.suffixText,
      this.verticalContentPadding,
      this.horizontalContentPadding});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: ctr,
      validator: validator,
      autofocus: autoFocus ?? false,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
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
                borderSide: BorderSide(
                    width: 1, color: borderColor ?? Colors.greenAccent),
              ),
        focusedBorder: isUnderLineBorder == true
            ? const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black12))
            : OutlineInputBorder(
                borderSide: BorderSide(
                    width: 1, color: borderColor ?? Colors.greenAccent),
              ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SearchBarField extends StatelessWidget {
  final String? hint;
  final Function clearField;
  final TextEditingController ctr;
  final Function(String) onChanged;
  final FocusNode? focusNode;
  const SearchBarField({
    super.key,
    this.hint,
    required this.ctr,
    required this.onChanged,
    required this.clearField,
    this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: ctr,
        onChanged: onChanged,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.text,
        focusNode: focusNode,
        decoration: InputDecoration(
            hintText: hint ?? 'Enter a product name',
            hintStyle: const TextStyle(fontSize: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                width: 2,
                color: Theme.of(context).primaryColor.withOpacity(0.4),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                width: 2,
                color: Theme.of(context).primaryColor.withOpacity(0.4),
              ),
            ),
            filled: true,
            contentPadding: const EdgeInsets.all(16),
            fillColor: Colors.grey.shade300,
            suffixIcon: IconButton(
              onPressed: () {
                clearField();
                ctr.clear();
              },
              icon: const Icon(Icons.close),
            )),
      ),
    );
  }
}

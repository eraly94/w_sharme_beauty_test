import 'package:w_sharme_beauty_test/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  final String? hintText;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  const FormFieldWidget({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10.0),
          constraints: const BoxConstraints(
            maxHeight: 46,
          ),
          filled: true,
          fillColor: AppColors.lightGrey,
          hintText: hintText,
          hintStyle: const TextStyle(
              color: AppColors.darkGrey,
              fontSize: 16,
              fontWeight: FontWeight.w500),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide.none)),
    );
  }
}

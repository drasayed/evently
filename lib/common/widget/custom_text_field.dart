import 'package:evently/common/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.validator
  });
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Theme.of(context).hintColor,
          fontWeight: FontWeight.w400,
        ),
        labelStyle: TextStyle(color: Theme.of(context).hintColor,
          fontWeight: FontWeight.w500,),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16.0),
          child: prefixIcon,
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(16.0),
          child: suffixIcon,
        ),
        iconColor: Theme.of(context).hintColor,
        prefixIconColor: Theme.of(context).hintColor,
        suffixIconColor: Theme.of(context).hintColor,
        contentPadding: EdgeInsets.all(16),
        errorBorder: _getBorder(AppColors.errorColor),
        focusedBorder: _getBorder(Theme.of(context).splashColor),
        enabledBorder: _getBorder(Theme.of(context).splashColor),
      ),
    );
  }

  OutlineInputBorder _getBorder(borderColor) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: borderColor),
    );
  }
}

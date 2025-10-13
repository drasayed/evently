import 'package:evently/common/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,this.hintText,this.prefixIcon, this.suffixIcon});
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;


  @override
  Widget build(BuildContext context) {
    return TextField(decoration:InputDecoration(
      hintText:hintText,
      hintStyle: TextStyle(color:Theme.of(context).hintColor),
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      iconColor: Theme.of(context).hintColor,
      prefixIconColor: Theme.of(context).hintColor,
      suffixIconColor: Theme.of(context).hintColor,
      contentPadding:EdgeInsets.all(16)
      
      
    
    
    
    
    ));
  }
}
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const CustomButton({super.key, this.onPressed, required this.title});

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: onPressed, 
    style: FilledButton.styleFrom(backgroundColor: AppColors.mainColor,shape:),
    child: Text(title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),)
    );
    
    
  }
}
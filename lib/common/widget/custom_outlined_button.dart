import '../theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget? child;

  const CustomOutlinedButton({super.key, this.onPressed,this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 56,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side:BorderSide(color: AppColors.mainColor),shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(16))
        ),
        child: child,
      ),
    );
  }
}

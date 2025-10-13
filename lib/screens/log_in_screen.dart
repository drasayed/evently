import 'package:evently/common/theme/app_colors.dart';
import 'package:evently/common/widget/custom_text_field.dart';
import 'package:evently/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  static const String routeName = "/logInScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Assets.images.appIcon.image(height: 140),
            Text(
              'Evently',
              style: TextStyle(
                color: AppColors.mainColor,
                fontSize: 36,
                fontFamily: "Jockey One",
              ),
            ),
            CustomTextField(hintText: 'Email',prefixIcon:Assets.icons.email.svg())//TODO Local
          ],
        ),
      ),
    );
  }
}

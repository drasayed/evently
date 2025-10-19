import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/theme/app_colors.dart';
import '../../common/widget/custom_main_button.dart';
import '../../common/widget/custom_text_form_field.dart';
import '../../gen/assets.gen.dart';

class SignUpScreen extends StatelessWidget {
  static const routeName = "/SignUpScreen";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: AppColors.mainColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Assets.images.appIcon.image(height: 130.h),
                Text(
                  'Evently',
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontSize: 36.sp,
                    fontFamily: "Jockey One",
                  ),
                ),
                SizedBox(height: 24.h),
                CustomTextFormField(
                  hintText: 'Name',
                  prefixIcon: Assets.icons.nameIcon.svg(),
                ), //TODO Local
                SizedBox(height: 16.h),
          
                CustomTextFormField(
                  hintText: 'Email',
                  prefixIcon: Assets.icons.email.svg(),
                ), //TODO Local
                SizedBox(height: 16.h),
                CustomTextFormField(
                  hintText: 'Password',
                  prefixIcon: Assets.icons.lock.svg(),
                  suffixIcon: Assets.icons.eye.svg(),
                ), //TODO Local
                SizedBox(height: 16.h),
          
                CustomTextFormField(
                  hintText: 'Re Password',
                  prefixIcon: Assets.icons.lock.svg(),
                  suffixIcon: Assets.icons.eye.svg(),
                ), //TODO Local
          
                SizedBox(height: 8.h),
                SizedBox(height: 16.h),
                CustomButton(
                  title: 'Create Account',
                  onPressed: () {},
                ),
                SizedBox(height: 24.h),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already Have Account ? ',
                        style: Theme.of(context).textTheme.titleMedium,
                      ), //TODO Local
                      TextSpan(
                        text: ' Login',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).pop();
                          },
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                          fontStyle: FontStyle.italic,
                          color: AppColors.mainColor,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
          
                SizedBox(height: 24.h),
          
                Transform.scale(
                  scale: 1.2,
                  child: Switch(
                    value: true,
                    onChanged: (value) {},
                    activeThumbImage: Assets.icons.enIcon.provider(),
                    inactiveThumbImage: Assets.icons.arIcon.provider(),
                    activeTrackColor: AppColors.lightBGColor,
                    inactiveTrackColor: AppColors.lightBGColor,
                    trackOutlineColor: WidgetStateProperty.all(
                      AppColors.mainColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

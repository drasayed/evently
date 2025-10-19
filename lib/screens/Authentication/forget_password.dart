import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/theme/app_colors.dart';
import '../../common/widget/custom_main_button.dart';
import '../../common/widget/custom_text_form_field.dart';
import '../../gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});
  static const routeName = '/ForgetPassword';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
        centerTitle: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        foregroundColor: AppColors.mainColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            spacing: 24.h,
            children: [
              Assets.images.forgetPassword.image(),
              SizedBox(height: 24.h),
              CustomTextFormField(
                hintText: 'Email',
                prefixIcon: Assets.icons.email.svg(),
              ),
            CustomButton(title: 'Reset Password',onPressed: () {
              
            },),
              
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:evently/common/widget/custom_botton.dart';

import '../common/theme/app_colors.dart';
import '../common/widget/custom_text_form_field.dart';
import '../gen/assets.gen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  static const String routeName = "/logInScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
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
                SizedBox(height: 24),
                CustomTextFormField(
                  hintText: 'Email',
                  prefixIcon: Assets.icons.email.svg(),
                ), //TODO Local
                SizedBox(height: 16),
                CustomTextFormField(
                  hintText: 'Password',
                  prefixIcon: Assets.icons.lock.svg(),
                  suffixIcon: Assets.icons.eye.svg(),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Forget Password?",style: TextStyle(
                        color: AppColors.mainColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.mainColor
                      ),)//TODO Local,
                    ),
                  ],
                ),
                SizedBox(height:16 ) ,
                Row(
                  children: [
                    Expanded(child: SizedBox(height: 56,child: CustomButton(title:'Login',onPressed: (){},))),
                  ],
                ),
                SizedBox(height: 24),
                Text.rich(TextSpan()),
                SizedBox(height: 16),
                Row(spacing: 9,
                  children: [
                  
                  Expanded(child: Divider(color: AppColors.mainColor,indent: 42,)),
                  Text('Or',style: TextStyle(color: AppColors.mainColor,fontWeight: FontWeight.w400,fontSize: 16),),
                  Expanded(child: Divider(color: AppColors.mainColor,endIndent: 42,))
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

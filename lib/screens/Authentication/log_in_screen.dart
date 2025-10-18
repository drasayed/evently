import 'forget_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../common/theme/app_colors.dart';
import '../../common/widget/custom_main_button.dart';
import '../../common/widget/custom_outlined_button.dart';
import '../../common/widget/custom_text_form_field.dart';
import '../../gen/assets.gen.dart';
import 'sign_up_screen.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  static const routeName = "/LogInScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Transform.scale(
            scaleY: 0.9,
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
                  ),//TODO Local
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(ForgetPassword.routeName);
                        },
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(
                            color: AppColors.mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.mainColor,
                          ),
                        ), //TODO Local,
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  CustomButton(title: 'Login', onPressed: () {}),
                  SizedBox(height: 24),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Don’t Have Account ? ',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),//TODO Local
                        TextSpan(
                          text: 'Create Account',
                          recognizer:TapGestureRecognizer()..onTap=(){
                            Navigator.of(context).pushNamed(SignUpScreen.routeName);
                          },
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: AppColors.mainColor,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.mainColor,
                          ),//TODO Local
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    spacing: 9,
                    children: [
                      Expanded(
                        child: Divider(color: AppColors.mainColor, indent: 18),
                      ),
                      Text(
                        'Or',
                        style: TextStyle(
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: AppColors.mainColor,
                          endIndent: 18,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  CustomOutlinedButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 10,
                      children: [
                        Assets.icons.googleIcon.image(height: 25),
                        Text(
                          'Login With Google',
                          style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 20,
                          ),//TODO Local
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),

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
      ),
    );
  }
}

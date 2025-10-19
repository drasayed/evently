import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
          child: Transform.scale(
            scaleY: 0.9,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Assets.images.appIcon.image(height: 130),
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
                    hintText: 'Name',
                    prefixIcon: Assets.icons.nameIcon.svg(),
                  ), //TODO Local
                  SizedBox(height: 16),

                  CustomTextFormField(
                    hintText: 'Email',
                    prefixIcon: Assets.icons.email.svg(),
                  ), //TODO Local
                  SizedBox(height: 16),
                  CustomTextFormField(
                    hintText: 'Password',
                    prefixIcon: Assets.icons.lock.svg(),
                    suffixIcon: Assets.icons.eye.svg(),
                  ), //TODO Local
                  SizedBox(height: 16),

                  CustomTextFormField(
                    hintText: 'Re Password',
                    prefixIcon: Assets.icons.lock.svg(),
                    suffixIcon: Assets.icons.eye.svg(),
                  ), //TODO Local

                  SizedBox(height: 8),
                  SizedBox(height: 16),
                  CustomButton(
                    title: 'Create Account',
                    onPressed: () {},
                  ),
                  SizedBox(height: 24),
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
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                            color: AppColors.mainColor,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.mainColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),

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

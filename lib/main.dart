import 'package:evently/screens/home/home_tab/home_tab.dart';
import 'package:flutter/material.dart';

import 'common/theme/app_theme.dart';
import 'screens/Authentication/forget_password.dart';
import 'screens/Authentication/log_in_screen.dart';
import 'screens/Authentication/sign_up_screen.dart';
import 'screens/home/main_layer_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        LogInScreen.routeName: (_) => LogInScreen(),
        SignUpScreen.routeName: (_) => SignUpScreen(),
        ForgetPassword.routeName: (_) => ForgetPassword(),
        MainLayerScreen.routeName: (_) => MainLayerScreen(),
      },
      title: 'evently',
      theme: AppTheme.lightTheme,
      home: MainLayerScreen(),
    );
  }
}

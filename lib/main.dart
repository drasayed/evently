import 'common/theme/app_theme.dart';
import 'screens/log_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

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
      },
      title: 'evently',
      theme: AppTheme.lightTheme,
      home: LogInScreen(),
    );
  }
}

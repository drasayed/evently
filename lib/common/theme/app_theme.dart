import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.lightBGColor,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
    textTheme: _getTextTheme(AppColors.lightTextColor),
    hintColor: AppColors.grey,
    splashColor: AppColors.grey,
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.darkBGColor,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
    textTheme: _getTextTheme(AppColors.darkTextColor),
    hintColor: AppColors.darkTextColor,
    splashColor: AppColors.mainColor,
  );

  static _getTextTheme(Color textColor) {
    return TextTheme(
      labelSmall: TextStyle(
        color: textColor,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: TextStyle(
        color: textColor,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        color: textColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(
        color: textColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

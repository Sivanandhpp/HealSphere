import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primary,
      elevation: 0,
    ),
  );
}


class AppColors {
  static const Color primary = Color(0xFF157FA6);
  static const Color secondary = Color(0xFF00B8D9);
  static const Color textPrimary = Colors.black;
  static const Color textSecondary = Colors.grey;
  static const Color background = Color(0xFFF4F5F7);
  static const Color white = Color(0xFFFFFFFF);

}
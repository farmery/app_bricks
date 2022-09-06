import 'package:flutter/material.dart';

class AppColors {
  bool isDarkMode = false;
  static final AppColors _instance = AppColors._internal();
  AppColors._internal();
  factory AppColors(BuildContext context) {
    switch (MediaQuery.of(context).platformBrightness) {
      case Brightness.dark:
        _instance.isDarkMode = true;
        break;
      case Brightness.light:
        _instance.isDarkMode = false;
        break;
      default:
    }
    return _instance;
  }

  Color get primary => isDarkMode ? Colors.black : Color(0xffFFFFFF);
  Color get reversePrimary => isDarkMode ? Colors.white : Colors.black;
  final Color offWhite = Color(0xFFDCDCDC);
  final Color cardColor = Colors.transparent;
  Color get lineColor => isDarkMode
      ? Colors.white.withOpacity(0.4)
      : Colors.black.withOpacity(0.4);
  final Color white = Colors.white;
  final Color black = Colors.black;
}

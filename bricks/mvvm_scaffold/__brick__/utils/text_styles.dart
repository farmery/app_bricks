import 'package:flutter/material.dart';

class TextStyles {
  bool isDarkMode = false;
  static final TextStyles _instance = TextStyles._internal();

  factory TextStyles(BuildContext context) {
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
  TextStyles._internal();

  TextStyle get actionText => TextStyle(fontSize: 17, color: Color(0xffC70C4A));

  TextStyle get body => TextStyle(
      fontSize: 16,
      color: isDarkMode
          ? Colors.white.withOpacity(0.9)
          : Colors.black.withOpacity(0.9));
  TextStyle get bodyBold => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: isDarkMode
          ? Colors.white.withOpacity(0.9)
          : Colors.black.withOpacity(0.9));

  TextStyle get categoryText => TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: isDarkMode ? Colors.white : Colors.black);

  TextStyle get subtitle1 => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.25,
      color: isDarkMode
          ? Colors.white.withOpacity(0.5)
          : Colors.black.withOpacity(0.65));
  TextStyle get subtitle1Light => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.25,
      color: Colors.white.withOpacity(0.65));

  TextStyle get bodyLight => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.white.withOpacity(0.9));
  TextStyle get subtitle2Light => TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.white.withOpacity(0.5));
  TextStyle get subtitle2 => TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: isDarkMode
          ? Colors.white.withOpacity(0.65)
          : Colors.black.withOpacity(0.65));
  TextStyle get tileSubtitle => TextStyle(
      fontSize: 14,
      color: isDarkMode
          ? Colors.white.withOpacity(0.9)
          : Colors.black.withOpacity(0.9));
  TextStyle get title => TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: isDarkMode ? Colors.white : Color(0xff464040));
  TextStyle get titleLight => TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
  TextStyle get largeText => TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: isDarkMode ? Colors.white.withOpacity(0.85) : Color(0xff464040));
  TextStyle get headerText => TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: isDarkMode ? Colors.white.withOpacity(0.85) : Color(0xff464040));
  TextStyle get tileTitle => TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: isDarkMode ? Colors.white : Colors.black);
  TextStyle get unSelectedTabText => TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: isDarkMode
          ? Colors.white.withOpacity(0.5)
          : Colors.black.withOpacity(0.65));
  TextStyle get selectedTabText => TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xffC70C4A));
  TextStyle get unSelectedNavText => TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: isDarkMode
          ? Colors.white.withOpacity(0.75)
          : Colors.black.withOpacity(0.75));
  TextStyle get selectedNavText => TextStyle(
      fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xffC70C4A));

  TextStyle get smallBody => TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: isDarkMode ? Colors.white : Colors.black);
}

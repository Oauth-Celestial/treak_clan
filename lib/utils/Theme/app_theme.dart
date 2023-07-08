import 'package:flutter/material.dart';

enum AppThemeType { Light, Dark }

class AppTheme {
  static ThemeData appLightTheme = ThemeData(brightness: Brightness.light);

  static ThemeData appDarkTheme = ThemeData(brightness: Brightness.dark);
}

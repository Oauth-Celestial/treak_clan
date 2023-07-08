import 'package:flutter/material.dart';
import 'package:treak_clan/utils/Theme/app_theme.dart';

class ThemeManager with ChangeNotifier {
  final AppThemeType _currentAppTheme = AppThemeType.Light;

  AppThemeType get currentAppTheme => _currentAppTheme;

  ThemeMode appTheme = ThemeMode.light;

  void setAppTheme(AppThemeType type) {
    appTheme = type == AppThemeType.Dark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

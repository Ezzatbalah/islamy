import 'package:flutter/material.dart';

class SettingProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = 'en';
  bool get isDark => themeMode == ThemeMode.dark;
  String get backgroundImageName =>
      isDark ? 'assets/images/bg.png' : 'assets/images/bg3-1.png';
  String get textTheme => isDark ? 'Dark Mode' : 'Light Mode';
  void changeMode(ThemeMode selectedTheme) {
    themeMode = selectedTheme;
    notifyListeners();
  }

  void changeLanguage(String selectedLanguage) {
    if (selectedLanguage == languageCode) return;
    languageCode = selectedLanguage;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingProvider with ChangeNotifier {
  int counter = 0;
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = 'en';
  bool get isDark => themeMode == ThemeMode.dark;
  String get backgroundImageName =>
      isDark ? 'assets/images/bg.png' : 'assets/images/bg3-1.png';
  String get textTheme => isDark ? 'Dark Mode' : 'Light Mode';
  Future<void> loadPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String savedTheme = prefs.getString('themeMode') ?? 'light';
    themeMode = savedTheme == 'dark' ? ThemeMode.dark : ThemeMode.light;

    languageCode = prefs.getString('languageCode') ?? 'en';

    notifyListeners();
  }

  Future<void> saveThemeMode(ThemeMode selectedTheme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    themeMode = selectedTheme;

    await prefs.setString(
        'themeMode', selectedTheme == ThemeMode.dark ? 'dark' : 'light');
    notifyListeners();
  }

  Future<void> saveLanguage(String selectedLanguage) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    languageCode = selectedLanguage;

    await prefs.setString('languageCode', selectedLanguage);
    notifyListeners();
  }

  void changeMode(ThemeMode selectedTheme) {
    saveThemeMode(selectedTheme);
    notifyListeners();
  }

  void changeLanguage(String selectedLanguage) {
    if (selectedLanguage == languageCode) return;
    saveLanguage(selectedLanguage);
    notifyListeners();
  }

  void changeCounter() {
    counter++;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  String selectedLocale = 'en';
  ThemeMode selectedTheme = ThemeMode.light;

  SettingsProvider() {
    getLanguageSharedPreferences();
    getThemeSharedPreferences();
  }

  void changeLanguage(String newLocale) {
    selectedLocale = newLocale;
    notifyListeners();
    saveLanguageSharedPreferences('lang', selectedLocale);
  }

  void changeTheme(ThemeMode themeType) {
    selectedTheme = themeType;
    saveThemeSharedPreferences('theme', themeType.index);
    notifyListeners();
  }

  String getSelectedLocal() {
    return selectedLocale == 'ar' ? 'العربية' : 'English';
  }

  saveLanguageSharedPreferences(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  getLanguageSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    selectedLocale = prefs.getString('lang') ?? "en";
    notifyListeners();
  }

  saveThemeSharedPreferences(String key, int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(key, value);
    print(value);
  }

  getThemeSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.getInt('theme');
    if (prefs.getInt('theme') == 1) {
      selectedTheme = ThemeMode.light;
    } else {
      selectedTheme = ThemeMode.dark;
    }
    notifyListeners();
  }

  String getBackgroundImage() {
    return selectedTheme == ThemeMode.dark
        ? 'assets/images/main_background_dark.jpg'
        : 'assets/images/main_bg.png';
  }

  String getSplashImage() {
    return selectedTheme == ThemeMode.dark
        ? 'assets/images/splash_dark.jpg'
        : 'assets/images/splash.png';
  }
}

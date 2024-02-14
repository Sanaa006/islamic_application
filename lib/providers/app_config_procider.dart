import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  //data
  String appLanguage = "ar";
  ThemeMode appTheme = ThemeMode.dark;

  changeLanguge(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }

  changeTheme(ThemeMode newTheme) {
    if (newTheme == appTheme) {
      return;
    }
    appTheme = newTheme;
    notifyListeners();
  }

  bool isThemeDarkMode() {
    return appTheme == ThemeMode.dark;
  }
}

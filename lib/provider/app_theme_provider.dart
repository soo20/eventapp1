import 'package:flutter/material.dart';

class AppThemeProvider extends ChangeNotifier {
  ThemeMode appThem = ThemeMode.light;

  void changeTheme(ThemeMode newTheme) {
    if (appThem == newTheme) {
      return;
    }
    appThem = newTheme;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppThemeProvider extends ChangeNotifier {
  ThemeMode _appTheme = ThemeMode.light;

  ThemeMode get appTheme => _appTheme;

  AppThemeProvider() {
    _loadThemeFromPreferences();
  }

  void changeTheme(ThemeMode newTheme) async {
    if (_appTheme == newTheme) return;

    _appTheme = newTheme;
    notifyListeners();
    print("Theme changed to: $newTheme");
    await _saveThemeToPreferences(newTheme);
  }

  Future<void> _saveThemeToPreferences(ThemeMode theme) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('theme_mode', theme.toString());
  }

  Future<void> _loadThemeFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final themeString =
        prefs.getString('theme_mode') ?? ThemeMode.light.toString();

    switch (themeString) {
      case 'ThemeMode.dark':
        _appTheme = ThemeMode.dark;
        break;
      case 'ThemeMode.light':
        _appTheme = ThemeMode.light;
        break;
      default:
        _appTheme = ThemeMode.system;
        break;
    }

    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppLangProvider extends ChangeNotifier {
  //the data when change,it will effect of many widgets
  // the function will change the data
  String _appLanguage = "en";
  String get appLanguage => _appLanguage;

  AppLangProvider() {
    _loadLanguageFromPreferences();
  }

  Future<void> changeLanguage(String newLanguage) async {
    if (appLanguage == newLanguage) {
      return;
    }
    _appLanguage = newLanguage;
    // this methode equal setstate that notify change
    notifyListeners();
    await _saveLanguageToPreferences(newLanguage);
  }

  Future<void> _saveLanguageToPreferences(String language) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('app_language', language);
  }

  Future<void> _loadLanguageFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    _appLanguage = prefs.getString('app_language') ?? 'en';
    notifyListeners();
  }
}

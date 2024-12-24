import 'package:flutter/material.dart';

class AppLangProvider extends ChangeNotifier {
  //the data when change,it will effect of many widgets
  // the function will change the data
  String appLanguage = "en";

  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    // this methode equal setstate that notify change
    notifyListeners();
  }
}

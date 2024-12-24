import 'package:eventapp1/colorrtheme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colorrtheme.primaryLight,
    //  appBarTheme: AppBarTheme(backgroundColor: Colorrtheme.primaryLight),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.transparent,
      showUnselectedLabels: true,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: Colorrtheme.primaryLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(color: Colorrtheme.whiteColor, width: 4),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: Colorrtheme.prinaryDark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.transparent,
      showUnselectedLabels: true,
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      elevation: 0,
      backgroundColor: Colorrtheme.prinaryDark,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(color: Colorrtheme.whiteColor, width: 4),
      ),
    ),
    // appBarTheme: AppBarTheme(backgroundColor: Colorrtheme.prinaryDark),
  );
}

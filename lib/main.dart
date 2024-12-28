import 'package:eventapp1/utilized/app_theme.dart';
import 'package:eventapp1/profile/home_screen.dart';
import 'package:eventapp1/home_screen2.dart';
import 'package:eventapp1/provider/app_lang_provider.dart';
import 'package:eventapp1/provider/app_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      // it create provider that i will use
      providers: [
        ChangeNotifierProvider(create: (context) => AppLangProvider()),
        ChangeNotifierProvider(create: (context) => AppThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // this create only one provider for whole app
    var langProvider = Provider.of<AppLangProvider>(context);
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(langProvider.appLanguage),
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen2.route,
      routes: {
        HomeScreen2.route: (context) => HomeScreen2(),
        ProfilePage.route: (context) => ProfilePage(),
      },

      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.appThem,
    );
  }
}

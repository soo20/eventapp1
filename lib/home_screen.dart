import 'package:eventapp1/colorrtheme.dart';
import 'package:eventapp1/lang_buttom_sheet.dart';
import 'package:eventapp1/provider/app_lang_provider.dart';
import 'package:eventapp1/provider/app_theme_provider.dart';
import 'package:eventapp1/theme_buttom_shet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String route = "home screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var langProvider = Provider.of<AppLangProvider>(context);
    var themeProvider = Provider.of<AppThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Colorrtheme.primaryLight,
        title: Text(AppLocalizations.of(context)!.language),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.language,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colorrtheme.blackColor,
              ),
            ),
            InkWell(
              onTap: () {
                showLangButtomSheet();
              },
              child: Container(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 15,
                ),
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colorrtheme.primaryLight,
                    width: 1.0,
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      langProvider.appLanguage == "en"
                          ? AppLocalizations.of(context)!.english
                          : AppLocalizations.of(context)!.arabic,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colorrtheme.primaryLight,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colorrtheme.primaryLight,
                    ),
                  ],
                ),
              ),
            ),
            Text(
              AppLocalizations.of(context)!.theme,
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colorrtheme.blackColor,
              ),
            ),
            InkWell(
              onTap: () {
                showTemeButtomSheet();
              },
              child: Container(
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 10,
                  bottom: 15,
                ),
                margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colorrtheme.primaryLight,
                    width: 1.0,
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      themeProvider.appThem == ThemeMode.dark
                          ? AppLocalizations.of(context)!.dark
                          : AppLocalizations.of(context)!.light,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colorrtheme.primaryLight,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colorrtheme.primaryLight,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showLangButtomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LangButtomSheet(),
    );
  }

  void showTemeButtomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ThemeButtomSheet(),
    );
  }
}

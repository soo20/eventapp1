import 'package:eventapp1/colorrtheme.dart';
import 'package:eventapp1/provider/app_lang_provider.dart';
import 'package:eventapp1/provider/app_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ThemeButtomSheet extends StatelessWidget {
  const ThemeButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<AppThemeProvider>(context);
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.dark);
            },
            //
            child:
                themeProvider.appThem == ThemeMode.dark
                    ? getSelected(context, AppLocalizations.of(context)!.dark)
                    : unSelected(context, AppLocalizations.of(context)!.dark),
          ),
          SizedBox(height: height * 0.04),
          InkWell(
            onTap: () {
              themeProvider.changeTheme(ThemeMode.light);
            },
            child:
                themeProvider.appThem == ThemeMode.light
                    ? getSelected(context, AppLocalizations.of(context)!.light)
                    : unSelected(context, AppLocalizations.of(context)!.light),
          ),
        ],
      ),
    );
  }

  Widget getSelected(BuildContext context, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colorrtheme.primaryLight,
          ),
        ),

        Icon(Icons.check, color: Colorrtheme.primaryLight),
      ],
    );
  }

  Widget unSelected(BuildContext context, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colorrtheme.prinaryDark,
          ),
        ),

        // Icon(Icons.check, color: Colorrtheme.primaryLight),
      ],
    );
  }
}

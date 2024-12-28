import 'package:eventapp1/utilized/colorrtheme.dart';
import 'package:eventapp1/provider/app_lang_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class LangButtomSheet extends StatelessWidget {
  const LangButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var langProvider = Provider.of<AppLangProvider>(context);
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () async {
              langProvider.changeLanguage("en");
            },
            //
            child:
                langProvider.appLanguage == "en"
                    ? getSelected(
                      context,
                      AppLocalizations.of(context)!.english,
                    )
                    : unSelected(
                      context,
                      AppLocalizations.of(context)!.english,
                    ),
          ),
          SizedBox(height: height * 0.04),
          InkWell(
            onTap: () async {
              langProvider.changeLanguage("ar");
            },
            child:
                langProvider.appLanguage == "ar"
                    ? getSelected(context, AppLocalizations.of(context)!.arabic)
                    : unSelected(context, AppLocalizations.of(context)!.arabic),
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

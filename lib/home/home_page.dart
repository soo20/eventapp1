import 'package:eventapp1/utilized/colorrtheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 130,
        backgroundColor: Theme.of(context).primaryColor,
        toolbarHeight: height * 0.15,
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 1,
              children: [
                SizedBox(height: height * 0.016),
                Text(
                  AppLocalizations.of(context)!.welcom,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colorrtheme.whiteColor,
                  ),
                ),
                Text(
                  AppLocalizations.of(context)!.soha,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colorrtheme.whiteColor,
                  ),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 20,
                      color: Colorrtheme.whiteColor,
                    ),
                    Text(
                      AppLocalizations.of(context)!.city,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        color: Colorrtheme.whiteColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        actions: [
          Icon(
            Icons.wb_sunny_outlined,
            color: Colorrtheme.whiteColor,
            size: 27,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            padding: EdgeInsets.symmetric(horizontal: 05, vertical: 4),

            decoration: BoxDecoration(
              color: Colorrtheme.whiteColor,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              AppLocalizations.of(context)!.en,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],

        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          /*   child: Column(
            children: [
              Text(
                AppLocalizations.of(context)!.language,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colorrtheme.blackColor,
                ),
              ),
            ],
          ),*/
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: height * 0.13,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

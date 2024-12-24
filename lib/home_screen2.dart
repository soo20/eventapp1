import 'package:eventapp1/colorrtheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen2 extends StatefulWidget {
  HomeScreen2({super.key});
  static const String route = "home screen2";

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: BottomAppBar(
          padding: EdgeInsets.zero,
          color: Colorrtheme.primaryLight,
          notchMargin: 3,
          shape: CircularNotchedRectangle(),
          child: BottomNavigationBar(
            currentIndex: selectIndex,
            onTap:
                (value) => setState(() {
                  selectIndex = value;
                }),
            items: [
              bottombBar(
                index: 0,
                iconNameSelected: "assets/image/HomeIcon.png",
                iconName: "assets/image/HomeIcon.png",
                label: AppLocalizations.of(context)!.home,
              ),
              bottombBar(
                index: 1,
                iconName: "assets/image/Map_Pin.png",
                iconNameSelected: "assets/image/Map_Pin.png",
                label: AppLocalizations.of(context)!.map,
              ),
              bottombBar(
                index: 2,
                iconNameSelected: "assets/image/LoveIcon.png",
                iconName: "assets/image/LoveIcon.png",
                label: AppLocalizations.of(context)!.love,
              ),
              bottombBar(
                index: 3,
                iconNameSelected: "assets/image/UserIcon.png",
                iconName: "assets/image/UserIcon.png",
                label: AppLocalizations.of(context)!.profile,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add, color: Colorrtheme.whiteColor, size: 35),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  BottomNavigationBarItem bottombBar({
    required String iconNameSelected,
    required String iconName,
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage(selectIndex == index ? iconNameSelected : iconName),
      ),
      label: label,
    );
  }
}

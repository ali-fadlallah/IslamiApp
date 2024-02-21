import 'package:flutter/material.dart';
import 'package:islami/tabs/settings_tab/Theme/MyTheme.dart';

import '../tabs/hadeh_tab/HadehTab.dart';
import '../tabs/quran_tab/QuranTab.dart';
import '../tabs/radio_tab/RadioTab.dart';
import '../tabs/sebha_tab/SebhaTab.dart';
import '../tabs/settings_tab/SettingsTab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  static const List<Widget> bottomBarTabs = <Widget>[];

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabIndex = 0;

  List<Widget> myWidget = [
    QuranTab(),
    HadehTab(),
    SebhaTab(),
    RadioTab(),
    SettingsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyThemeData.getBackgroundImage()),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Islami',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          currentIndex: tabIndex,
          onTap: (value) {
            tabIndex = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_quran.png')),
                label: 'Quran'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_hadeh.png')),
                label: 'Hadeh'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_sebha.png')),
                label: 'Sebha'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/ic_radio.png')),
                label: 'Radio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
          ],
        ),
        body: myWidget[tabIndex],
      ),
    );
  }
}

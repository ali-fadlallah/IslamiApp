import 'package:flutter/material.dart';
import 'package:islami/home_screen/HomeScreen.dart';
import 'package:islami/splash_screen/SplashScreen.dart';
import 'package:islami/tabs/hadeh_tab/hadeh_details.dart';
import 'package:islami/tabs/quran_tab/sura_details.dart';
import 'package:islami/tabs/settings_tab/Theme/MyTheme.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadehDetails.routeName: (context) => HadehDetails(),
      },
    );
  }
}

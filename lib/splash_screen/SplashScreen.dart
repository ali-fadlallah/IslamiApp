import 'package:flutter/material.dart';
import 'package:islami/home_screen/HomeScreen.dart';
import 'package:islami/tabs/settings_tab/Theme/MyTheme.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        MyThemeData.getSplashImage(),
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}

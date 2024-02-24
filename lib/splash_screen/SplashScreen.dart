import 'package:flutter/material.dart';
import 'package:islami/home_screen/HomeScreen.dart';
import 'package:islami/provider/SettingsProvider.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    var settingProvidor = Provider.of<SettingsProvider>(context);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        settingProvidor.getSplashImage(),
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami/home_screen/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        'assets/images/splash.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}

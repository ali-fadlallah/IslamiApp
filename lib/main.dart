import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/home_screen/HomeScreen.dart';
import 'package:islami/splash_screen/SplashScreen.dart';
import 'package:islami/tabs/hadeh_tab/hadeh_details.dart';
import 'package:islami/tabs/quran_tab/sura_details.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  const MyApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFB7935F),
          primary: Color(0xFFB7935F),
          secondary: Color(0xFF242424),
        ),
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showUnselectedLabels: false,
          backgroundColor: Color(0xFFB7935F),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: GoogleFonts.elMessiri().fontFamily,
            color: Color(0xFF242424),
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        cardTheme: CardTheme(
            color: Color(0xFFF8F8F8), surfaceTintColor: Colors.transparent),
      ),
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static const Color primaryLight = Color(0xFFB7935F);

  static const Color primaryDark = Color(0xFF141A2E);

  static const Color secondaryLight = Color(0xFF242424);

  static const Color secondaryDark = Color(0xFFFACC1D);

  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: primaryLight,
        primary: primaryLight,
        secondary: primaryLight),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: false,
      backgroundColor: primaryLight,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          fontFamily: GoogleFonts.elMessiri().fontFamily,
          color: Color(0xFF242424),
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
      cardTheme:
          CardTheme(color: Colors.white, surfaceTintColor: Colors.transparent),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontFamily: GoogleFonts.elMessiri().fontFamily),
        titleMedium: TextStyle(
            fontSize: 25,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontFamily: GoogleFonts.inter().fontFamily),
      titleSmall: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontFamily: GoogleFonts.inter().fontFamily),
        bodyMedium: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontFamily: GoogleFonts.inter().fontFamily),
      ),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: primaryLight));

  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: primaryDark, primary: primaryDark, secondary: secondaryDark),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showUnselectedLabels: false,
      backgroundColor: primaryDark,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: secondaryDark,
      unselectedItemColor: Colors.white,
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          fontFamily: GoogleFonts.elMessiri().fontFamily,
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.w700,
        ),
      ),
      cardTheme:
          CardTheme(color: primaryDark, surfaceTintColor: Colors.transparent),
      textTheme: TextTheme(
        titleLarge: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontFamily: GoogleFonts.elMessiri().fontFamily),
        titleMedium: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontFamily: GoogleFonts.inter().fontFamily),
      titleSmall: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          fontFamily: GoogleFonts.inter().fontFamily),
      bodyMedium: TextStyle(
          fontSize: 20,
          color: secondaryDark,
          fontWeight: FontWeight.w400,
          fontFamily: GoogleFonts.inter().fontFamily),
    ),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: primaryDark));

}

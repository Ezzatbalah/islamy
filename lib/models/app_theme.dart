import 'package:flutter/material.dart';

class Apptheme {
  static const primaryColor = Color(0xffB7935F);
  static const Color accent = Color(0xff242424);
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color transparent = Colors.transparent;

//dark moode colors
  static const Color darkPrimary = Color(0xff141A2E);
  static const Color darkAccent = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: transparent,
    primaryColor: primaryColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primaryColor,
      selectedItemColor: black,
      unselectedItemColor: white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: black,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
    ),
    dividerTheme: const DividerThemeData(
      thickness: 3,
      color: primaryColor,
    ),
  );
  static ThemeData dahTheme = ThemeData(
    scaffoldBackgroundColor: transparent,
    primaryColor: darkPrimary,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: darkPrimary,
      selectedItemColor: black,
      unselectedItemColor: white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: black,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
    ),
    dividerTheme: const DividerThemeData(
      thickness: 3,
      color: darkPrimary,
    ),
  );
}
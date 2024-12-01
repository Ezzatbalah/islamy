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
      foregroundColor: black,
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
    textTheme: const TextTheme(
        headlineMedium:
            TextStyle(fontSize: 25, color: white, fontWeight: FontWeight.w400),
        headlineSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: black,
        ),
        titleLarge:
            TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: black)),
    dividerColor: primaryColor,
    progressIndicatorTheme:
        const ProgressIndicatorThemeData(color: primaryColor),
    iconTheme: const IconThemeData(
      color: primaryColor,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: transparent,
    primaryColor: darkPrimary,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: darkPrimary,
      selectedItemColor: darkAccent,
      unselectedItemColor: white,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: transparent,
      foregroundColor: white,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: white,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
    ),
    dividerTheme: const DividerThemeData(
      thickness: 3,
      color: darkAccent,
    ),
    textTheme: const TextTheme(
        headlineMedium:
            TextStyle(fontSize: 25, color: black, fontWeight: FontWeight.w400),
        headlineSmall: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: white,
        ),
        titleLarge: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w400, color: darkAccent)),
    dividerColor: darkAccent,
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: darkAccent),
    iconTheme: const IconThemeData(
      color: darkPrimary,
    ),
  );
}

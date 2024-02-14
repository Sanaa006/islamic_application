import 'package:flutter/material.dart';

class MyTheme {
  /// colors, Theme Light Mode ,
  static Color blackColor = Color(0xff242424);
  static Color primaryLight = Color(0xffB7935F);
  static Color whiteColor = Color(0xffffffff);

  ///colors, Theme Dark Mode
  static Color primarydark = Color(0xff141A2E);
  static Color yellowColor = Color(0xffFACC1D);

  static ThemeData lightMode = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
    ),
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
            color: blackColor
        )
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        titleMedium: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        titleSmall: TextStyle(fontSize: 25, fontWeight: FontWeight.w400)),
  );
  static ThemeData darkMode = ThemeData(
    primaryColor: primarydark,
    primaryColorDark: yellowColor,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor,
    ),
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: whiteColor)),
    textTheme: TextTheme(
        titleLarge: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 30, color: whiteColor),
        titleMedium: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w500, color: whiteColor),
        titleSmall: TextStyle(
            fontSize: 25, fontWeight: FontWeight.w400, color: yellowColor)),
  );
}

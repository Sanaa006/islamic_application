import 'package:flutter/material.dart';

class MyTheme {
  /// colors, Theme Light Mode , theme Dark Mode
  static Color blackColor = Color(0xff242424);
  static Color primaryLight = Color(0xffB7935F);
  static Color whiteColor = Color(0xffffffff);
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
        titleMedium: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500
        ),
        titleSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400
        )
    ),
  );
}

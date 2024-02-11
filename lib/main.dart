import 'package:flutter/material.dart';
import 'package:islami_application/home/hadeth/hadeth_details_screen.dart';
import 'package:islami_application/home/home_screen.dart';
import 'package:islami_application/home/quran/sura_details_screen.dart';
import 'package:islami_application/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetails.routeName: (context) => SuraDetails(),
        HadethDetails.routeName: (context) => HadethDetails(),
      },
      theme: MyTheme.lightMode,
    );
  }
}

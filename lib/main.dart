import 'package:flutter/material.dart';
import 'package:islami/Screens/splash.dart';

import 'Screens/home.dart';
import 'models/app_theme.dart';

void main() {
  runApp(const Islami());
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash.routeName,
      theme: Apptheme.lightTheme,
      routes: {
        Splash.routeName: (_) => const Splash(),
        HomeScreen.routeName: (_) => const HomeScreen(),
      },
    );
  }
}

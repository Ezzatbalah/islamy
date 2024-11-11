import 'package:flutter/material.dart';
import 'package:islami/Screens/splash.dart';
import 'package:islami/tabs/quran/sura_contant.dart';
import 'package:islami/tabs/settings/setting_provider.dart';
import 'package:provider/provider.dart';

import 'Screens/home.dart';
import 'models/app_theme.dart';
import 'tabs/Hadeth/Hadeth_data.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => SettingProvider(),
      child: const Islami(),
    ),
  );
}

class Islami extends StatelessWidget {
  const Islami({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Splash.routeName,
      theme: Apptheme.lightTheme,
      darkTheme: Apptheme.darkTheme,
      themeMode: settingProvider.themeMode,
      routes: {
        Splash.routeName: (_) => const Splash(),
        HomeScreen.routeName: (_) => const HomeScreen(),
        SuraContant.routeName: (_) => SuraContant(),
        HadethData.routeName: (_) => HadethData(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami/Screens/splash.dart';
import 'package:islami/tabs/quran/sura_contant.dart';
import 'package:islami/tabs/settings/setting_provider.dart';
import 'package:provider/provider.dart';
import 'Screens/home.dart';
import 'models/app_theme.dart';
import 'tabs/Hadeth/Hadeth_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => SettingProvider()..loadPreferences(),
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
      routes: {
        Splash.routeName: (_) => const Splash(),
        HomeScreen.routeName: (_) => const HomeScreen(),
        SuraContant.routeName: (_) => SuraContant(),
        HadethData.routeName: (_) => HadethData(),
      },
      initialRoute: Splash.routeName,
      theme: Apptheme.lightTheme,
      darkTheme: Apptheme.darkTheme,
      themeMode: settingProvider.themeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(settingProvider.languageCode),
      builder: (context, child) {
        return Directionality(
          textDirection: settingProvider.languageCode == 'ar'
              ? TextDirection.rtl
              : TextDirection.ltr,
          child: child!,
        );
      },
    );
  }
}

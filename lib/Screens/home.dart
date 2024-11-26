import 'package:flutter/material.dart';
import 'package:islami/tabs/Hadeth/Hadeth.dart';
import 'package:islami/tabs/quran/quran.dart';
import 'package:islami/tabs/radio/radio.dart';
import 'package:islami/tabs/settings/settigns_tabs.dart';
import 'package:islami/tabs/settings/setting_provider.dart';
import 'package:provider/provider.dart';
import '../tabs/sebha/sebha.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "/home ";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selectedTap = 0;
List<Widget> tabs = [
  QuranTab(),
  HadethTab(),
  const SebhaTab(),
  const RadioTab(),
  SettingTab(),
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(settingProvider.backgroundImageName),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(bottom: 36, right: 18),
            child: Text(
              AppLocalizations.of(context)!.islami,
            ),
          ),
        ),
        body: tabs[selectedTap],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTap,
          onTap: (index) {
            selectedTap = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/3x/quran@3x.png"),
              ),
              label: AppLocalizations.of(context)!.quran,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/3x/quran-quran-svgrepo-com@3x.png"),
              ),
              label: AppLocalizations.of(context)!.hadeth,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/3x/sebha@3x.png"),
              ),
              label: AppLocalizations.of(context)!.sebha,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/3x/radio@3x.png"),
              ),
              label: AppLocalizations.of(context)!.radio,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined),
                label: AppLocalizations.of(context)!.settings),
          ],
        ),
      ),
    );
  }
}

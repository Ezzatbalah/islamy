import 'package:flutter/material.dart';
import 'package:islami/tabs/Hadeth/Hadeth.dart';
import 'package:islami/tabs/quran/quran.dart';
import 'package:islami/tabs/radio/radio.dart';
import 'package:islami/tabs/settings/settigns_tabs.dart';
import 'package:islami/tabs/settings/setting_provider.dart';
import 'package:provider/provider.dart';
import '../tabs/sebha/sebha.dart';

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
  SebhaTab(),
  RadioTab(),
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
          title: const Padding(
            padding: EdgeInsets.only(bottom: 36, right: 18),
            child: Text(
              'إسلامي',
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
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/3x/quran@3x.png"),
              ),
              label: "quran",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/3x/quran-quran-svgrepo-com@3x.png"),
              ),
              label: "Hadeth",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/3x/sebha@3x.png"),
              ),
              label: "sebha",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/3x/radio@3x.png"),
              ),
              label: "radio",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings_outlined), label: 'settings')
          ],
        ),
      ),
    );
  }
}

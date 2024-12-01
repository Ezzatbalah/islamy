import 'package:flutter/material.dart';
import 'package:islami/models/app_theme.dart';
import 'package:islami/tabs/settings/setting_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class SebhaTab extends StatelessWidget {
  List sebhaText = ['سبحان الله', 'الحمد الله', 'الله اكبر', 'استغفر الله'];
  int currentIndex = 0;

  SebhaTab({super.key});
  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    String currentText = sebhaText[currentIndex];
    return Padding(
      padding: const EdgeInsets.only(
        left: 60,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                right: 0,
                left: 0,
                bottom: 60,
                child: Image.asset(
                  "assets/images/3x/head of seb7a@3x.png",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  "assets/images/body of seb7a-1.png",
                  height: 250,
                  width: 250,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          Text(
            AppLocalizations.of(context)!.number_of_praises,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: settingProvider.isDark
                  ? Apptheme.darkPrimary
                  : Apptheme.primaryColor.withOpacity(0.25),
            ),
            width: 70,
            height: 80,
            child: Center(
              child: Text(
                '${settingProvider.counter}',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              settingProvider.changeCounter();
              if (settingProvider.counter % 33 == 0) {
                currentIndex = (currentIndex + 1) % sebhaText.length;
              }
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: settingProvider.isDark
                    ? Apptheme.darkAccent
                    : Apptheme.primaryColor,
              ),
              width: 150,
              height: 50,
              child: Center(
                child: Text(
                  currentText,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: file_names
import 'package:flutter/material.dart';

import 'package:islami/models/app_theme.dart';
import 'package:provider/provider.dart';

import '../settings/setting_provider.dart';
import 'Hadeth_con.dart';

// ignore: must_be_immutable
class HadethData extends StatelessWidget {
  static String routeName = '/hadeth-contant';

  const HadethData({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                settingProvider.backgroundImageName,
              ),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(hadeth.titel),
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(top: 9, left: 29, right: 29, bottom: 45),
            child: Container(
              width: 354,
              height: 652,
              decoration: BoxDecoration(
                  color: settingProvider.isDark
                      ? Apptheme.darkPrimary
                      : Apptheme.white.withOpacity(0.40),
                  borderRadius: BorderRadiusDirectional.circular(20)),
              child: Column(
                children: [
                  const Icon(Icons.play_circle_rounded),
                  const Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 1,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: hadeth.contant.length,
                      itemBuilder: (_, index) => Text(
                        hadeth.contant[index],
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

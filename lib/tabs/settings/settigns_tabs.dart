import 'package:flutter/material.dart';
import 'package:islami/models/app_theme.dart';
import 'package:islami/tabs/settings/language.dart';
import 'package:provider/provider.dart';

import 'setting_provider.dart';

class SettingTab extends StatefulWidget {
  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  List<Language> language = [
    Language(name: "English", code: 'en'),
    Language(name: "العربية", code: "ar")
  ];

  @override
  Widget build(BuildContext context) {
    SettingProvider settingProvider = Provider.of<SettingProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                settingProvider.textTheme,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              Switch(
                value: settingProvider.isDark,
                onChanged: (isDark) => settingProvider
                    .changeMode(isDark ? ThemeMode.dark : ThemeMode.light),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Language",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton<Language>(
                  value: language.first,
                  items: language
                      .map(
                        (language) => DropdownMenuItem(
                          value: language,
                          child: Text(
                            language.name,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (selectedLanguage) {
                    if (selectedLanguage != null) {
                      print(selectedLanguage.code);
                    }
                  },
                  borderRadius: BorderRadius.circular(20),
                  dropdownColor: settingProvider.isDark
                      ? Apptheme.darkPrimary
                      : Apptheme.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
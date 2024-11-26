// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/widgets/loading_indicator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'Hadeth_con.dart';
import 'Hadeth_data.dart';

class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> HadethNumber = [];

  @override
  Widget build(BuildContext context) {
    if (HadethNumber.isEmpty) {
      loadHadeth();
    }
    return Column(
      children: [
        Image.asset(
          "assets/images/hadith_header-1.png",
          height: MediaQuery.sizeOf(context).height * 0.25,
        ),
        const Divider(),
        Text(
          AppLocalizations.of(context)!.hadeth,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const Divider(),
        Expanded(
          child: HadethNumber.isEmpty
              ? LoadingIndicator()
              : ListView.separated(
                  itemBuilder: (_, index) => GestureDetector(
                    onTap: () => Navigator.of(context).pushNamed(
                        HadethData.routeName,
                        arguments: HadethNumber[index]),
                    child: Text(
                      HadethNumber[index].titel,
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  itemCount: HadethNumber.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 4),
                ),
        )
      ],
    );
  }

  Future<void> loadHadeth() async {
    String hadethContant =
        await rootBundle.loadString('assets/text/ahadeth.txt');
    List<String> ahatethString = hadethContant.split("#");
    HadethNumber = ahatethString.map((hadethString) {
      List<String> hadethLines = hadethString.trim().split('\n');
      String titel = hadethLines.first;
      hadethLines.removeAt(0);
      List<String> contant = hadethLines;
      return Hadeth(titel, contant);
    }).toList();
    setState(() {});
  }
}

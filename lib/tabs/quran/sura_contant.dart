import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/models/app_theme.dart';
import 'package:islami/tabs/quran/Sura_contan_Arg.dart';
import 'package:islami/widgets/loading_indicator.dart';

// ignore: must_be_immutable
class SuraContant extends StatefulWidget {
  static String routeName = '/sura-contant';

  @override
  State<SuraContant> createState() => _SuraContantState();
}

class _SuraContantState extends State<SuraContant> {
  List<String> ayat = [];

  late SuraContantArgs args;
  @override
  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as SuraContantArgs;
    if (ayat.isEmpty) {
      loadSuraFile();
    }
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                "assets/images/3x/bg3.png",
              ),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.surName),
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(top: 9, left: 29, right: 29, bottom: 45),
            child: Container(
              width: 354,
              height: 652,
              decoration: BoxDecoration(
                  color: Apptheme.white.withOpacity(0.40),
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
                    child: ayat.isEmpty
                        ? LoadingIndicator()
                        : ListView.builder(
                            itemCount: ayat.length,
                            itemBuilder: (_, index) => Text(
                              ayat[index],
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

  Future<void> loadSuraFile() async {
    String contant =
        await rootBundle.loadString('assets/text/${args.index + 1}.txt');
    ayat = contant.split('\r\n');
    setState(() {});
  }
}

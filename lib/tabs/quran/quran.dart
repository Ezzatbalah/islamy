import 'package:flutter/material.dart';
import 'package:islami/tabs/quran/Sura_contan_Arg.dart';
import 'package:islami/tabs/quran/sura_contant.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class QuranTab extends StatelessWidget {
  QuranTab({super.key});
  List<String> suraName = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  List<String> suraNumber = [
    '7',
    '286',
    '200',
    '176',
    '120',
    '165',
    '206',
    '75',
    '129',
    '109',
    '123',
    '111',
    '43',
    '52',
    '99',
    '128',
    '111',
    '110',
    '98',
    '135',
    '112',
    '78',
    '118',
    '64',
    '77',
    '227',
    '93',
    '88',
    '69',
    '60',
    '34',
    '30',
    '73',
    '54',
    '45',
    '83',
    '182',
    '88',
    '75',
    '85',
    '54',
    '53',
    '89',
    '59',
    '37',
    '35',
    '38',
    '29',
    '18',
    '45',
    '60',
    '49',
    '62',
    '55',
    '78',
    '96',
    '29',
    '22',
    '24',
    '13',
    '14',
    '11',
    '11',
    '18',
    '12',
    '12',
    '30',
    '52',
    '52',
    '44',
    '28',
    '28',
    '20',
    '56',
    '40',
    '31',
    '50',
    '40',
    '46',
    '42',
    '29',
    '19',
    '36',
    '25',
    '22',
    '17',
    '19',
    '26',
    '30',
    '20',
    '15',
    '21',
    '11',
    '8',
    '8',
    '19',
    '5',
    '8',
    '8',
    '11',
    '11',
    '8',
    '3',
    '9',
    '5',
    '4',
    '7',
    '3',
    '6',
    '3',
    '5',
    '4',
    '5',
    '6'
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      const Center(
        child: VerticalDivider(
          thickness: 3,
          indent: 168,
        ),
      ),
      Column(
        children: [
          Image.asset(
            "assets/images/quran_header_icn.png",
            height: MediaQuery.sizeOf(context).height * 0.25,
          ),
          const Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  AppLocalizations.of(context)!.number,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  AppLocalizations.of(context)!.name,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ],
          ),
          const Divider(),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.only(left: 60),
                    itemCount: suraNumber.length,
                    itemBuilder: (_, index) => Text(
                      suraNumber[index],
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    separatorBuilder: (_, __) => const SizedBox(height: 4),
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.only(left: 60),
                    itemCount: suraName.length,
                    itemBuilder: (_, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          SuraContant.routeName,
                          arguments: SuraContantArgs(
                              surName: suraName[index], index: index),
                        );
                      },
                      child: Text(
                        suraName[index],
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                    separatorBuilder: (_, __) => const SizedBox(height: 4),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ]);
  }
}

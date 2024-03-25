import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Prayer/prayer_in_hadith.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Prayer/prayer_in_quran.dart';

class PrayersInTheLightOfHadithWidgetDesign extends StatelessWidget {
  const PrayersInTheLightOfHadithWidgetDesign(
      {super.key, required this.prayerInHadithData});
  final PrayerInHadithModel prayerInHadithData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("~ ${prayerInHadithData.id} ~",
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                fontFamily: "Archivo", color: Colors.red, fontSize: 24)),
        const SizedBox(
          height: 10,
        ),
        Text(prayerInHadithData.quranicVerseArabicText,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                height: 1.25,
                wordSpacing: 2.5,
                fontFamily: "Saleem",
                color: Colors.white,
                fontSize: 40)),
        const SizedBox(
          height: 10,
        ),
        Text(prayerInHadithData.quranicVerseUrduText,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                fontFamily: "Amiri", color: Colors.green, fontSize: 24)),
        const SizedBox(
          height: 10,
        ),
        Text(prayerInHadithData.quranicVerseEnglishText,
            style: const TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        Text("[ ${prayerInHadithData.quranicVerseReference} ]",
            style: const TextStyle(
                fontFamily: "Archivo", color: Colors.amber, fontSize: 16)),
      ],
    );
  }
}

class PrayerInTheLightOfHadithWidgetsList extends StatelessWidget {
  const PrayerInTheLightOfHadithWidgetsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrayersInTheLightOfHadithWidgetDesign(
            prayerInHadithData: prayerInTheLightOfHadithDataList[0]),
        PrayersInTheLightOfHadithWidgetDesign(
            prayerInHadithData: prayerInTheLightOfHadithDataList[1]),
        PrayersInTheLightOfHadithWidgetDesign(
            prayerInHadithData: prayerInTheLightOfHadithDataList[2]),
        PrayersInTheLightOfHadithWidgetDesign(
            prayerInHadithData: prayerInTheLightOfHadithDataList[3]),
        PrayersInTheLightOfHadithWidgetDesign(
            prayerInHadithData: prayerInTheLightOfHadithDataList[4]),
        PrayersInTheLightOfHadithWidgetDesign(
            prayerInHadithData: prayerInTheLightOfHadithDataList[5]),
        PrayersInTheLightOfHadithWidgetDesign(
            prayerInHadithData: prayerInTheLightOfHadithDataList[6]),
        PrayersInTheLightOfHadithWidgetDesign(
            prayerInHadithData: prayerInTheLightOfHadithDataList[7]),
        PrayersInTheLightOfHadithWidgetDesign(
            prayerInHadithData: prayerInTheLightOfHadithDataList[8]),
        PrayersInTheLightOfHadithWidgetDesign(
            prayerInHadithData: prayerInTheLightOfHadithDataList[9]),
      ],
    );
  }
}

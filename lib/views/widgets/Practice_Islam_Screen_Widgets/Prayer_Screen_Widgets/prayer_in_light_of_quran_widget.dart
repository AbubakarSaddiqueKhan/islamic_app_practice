import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Prayer/prayer_in_quran.dart';

class PrayersInTheLightOfQuranWidgetDesign extends StatelessWidget {
  const PrayersInTheLightOfQuranWidgetDesign(
      {super.key, required this.prayerInQuranData});
  final PrayerInQuranModel prayerInQuranData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("~ ${prayerInQuranData.id} ~",
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                fontFamily: "Archivo", color: Colors.red, fontSize: 24)),
        const SizedBox(
          height: 10,
        ),
        Text(prayerInQuranData.quranicVerseArabicText,
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
        Text(prayerInQuranData.quranicVerseUrduText,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                fontFamily: "Amiri", color: Colors.green, fontSize: 24)),
        const SizedBox(
          height: 10,
        ),
        Text(prayerInQuranData.quranicVerseEnglishText,
            style: const TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        Text("[ ${prayerInQuranData.quranicVerseReference} ]",
            style: const TextStyle(
                fontFamily: "Archivo", color: Colors.amber, fontSize: 16)),
      ],
    );
  }
}

class PrayerInTheLightOfQuranWidgetsList extends StatelessWidget {
  const PrayerInTheLightOfQuranWidgetsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PrayersInTheLightOfQuranWidgetDesign(
            prayerInQuranData: prayerInTheLightOfTheQuranDataList[0]),
        PrayersInTheLightOfQuranWidgetDesign(
            prayerInQuranData: prayerInTheLightOfTheQuranDataList[1]),
        PrayersInTheLightOfQuranWidgetDesign(
            prayerInQuranData: prayerInTheLightOfTheQuranDataList[2]),
        PrayersInTheLightOfQuranWidgetDesign(
            prayerInQuranData: prayerInTheLightOfTheQuranDataList[3]),
        PrayersInTheLightOfQuranWidgetDesign(
            prayerInQuranData: prayerInTheLightOfTheQuranDataList[4]),
        PrayersInTheLightOfQuranWidgetDesign(
            prayerInQuranData: prayerInTheLightOfTheQuranDataList[5]),
        PrayersInTheLightOfQuranWidgetDesign(
            prayerInQuranData: prayerInTheLightOfTheQuranDataList[6]),
        PrayersInTheLightOfQuranWidgetDesign(
            prayerInQuranData: prayerInTheLightOfTheQuranDataList[7]),
        PrayersInTheLightOfQuranWidgetDesign(
            prayerInQuranData: prayerInTheLightOfTheQuranDataList[8]),
        PrayersInTheLightOfQuranWidgetDesign(
            prayerInQuranData: prayerInTheLightOfTheQuranDataList[9]),
      ],
    );
  }
}

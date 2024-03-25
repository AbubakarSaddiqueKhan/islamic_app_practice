import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Prayer/prophetic_way_of_prayer.dart';

class PropheticWayOfPrayerInTheLightOfHadithWidget extends StatelessWidget {
  const PropheticWayOfPrayerInTheLightOfHadithWidget(
      {super.key, required this.propheticWayOfPrayerData});
  final PropheticWayOfPrayerModel propheticWayOfPrayerData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          "~ ${propheticWayOfPrayerData.id.toString()} ~",
          textDirection: TextDirection.ltr,
          style: const TextStyle(
              fontFamily: "Archivo", color: Colors.amber, fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        // Surah Nisa 4 - 103
        Text(
          propheticWayOfPrayerData.arabicText,
          textDirection: TextDirection.rtl,
          style: const TextStyle(
              height: 1.25,
              wordSpacing: 4,
              fontFamily: "Saleem",
              color: Colors.white,
              fontSize: 36),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          propheticWayOfPrayerData.urduText,
          textDirection: TextDirection.rtl,
          style: const TextStyle(
              height: 1.25,
              wordSpacing: 4,
              fontFamily: "Saleem",
              color: Colors.green,
              fontSize: 36),
        ),
        const SizedBox(
          height: 10,
        ),

        Text(
          propheticWayOfPrayerData.englishText,
          textDirection: TextDirection.ltr,
          style: const TextStyle(
              fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),

        Text(
          "[ ${propheticWayOfPrayerData.reference} ]",
          textDirection: TextDirection.ltr,
          style: const TextStyle(
              fontFamily: "Archivo", color: Colors.deepOrange, fontSize: 18),
        ),
      ],
    );
  }
}

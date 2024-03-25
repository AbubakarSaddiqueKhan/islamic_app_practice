import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Prayer/prophetic_way_of_prayer.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/surah_fatiha_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Prayer_Screen_Widgets/prophetic_way_of_prayer_in_the_light_of_hadith_widget.dart';

class ObligationsOfSurahFatihaaInPrayerWidgetsList extends StatelessWidget {
  const ObligationsOfSurahFatihaaInPrayerWidgetsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("~ نماز میں سوره فاتحہ ~",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                height: 1.25,
                wordSpacing: 4,
                fontFamily: "Saleem",
                color: Colors.purpleAccent,
                fontSize: 36)),
        const Text(" ~ Surah Fatiha in prayer ~",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.brown, fontSize: 18)),
        const SizedBox(
          height: 10,
        ),
        const AllVersesOfSurahFatihaDetailsWidgetsList(),
        const SizedBox(
          height: 10,
        ),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[24]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[25]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[26]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[27]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[28]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[29]),
      ],
    );
  }
}

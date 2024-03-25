import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Prayer/prophetic_way_of_prayer.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Prayer_Screen_Widgets/prophetic_way_of_prayer_in_the_light_of_hadith_widget.dart';

class PropheticWayOfPrayerIntroductionWidget extends StatelessWidget {
  const PropheticWayOfPrayerIntroductionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "نماز کا نبوی طریقہ",
          textDirection: TextDirection.rtl,
          style:
              TextStyle(fontFamily: "Amiri", color: Colors.white, fontSize: 30),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Prophetic method of prayer",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Archivo", color: Colors.lime, fontSize: 16)),
        ),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[0]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[1]),
      ],
    );
  }
}

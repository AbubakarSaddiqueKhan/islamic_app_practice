import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Prayer/prophetic_way_of_prayer.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Prayer_Screen_Widgets/prophetic_way_of_prayer_in_the_light_of_hadith_widget.dart';

class ALlHadithOnClaspingHandInPrayerWidgetsList extends StatelessWidget {
  const ALlHadithOnClaspingHandInPrayerWidgetsList({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Column(
      children: [
        const Text("~ نماز میں ہاتھ باندھنا ~",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                height: 1.25,
                wordSpacing: 4,
                fontFamily: "Saleem",
                color: Colors.purpleAccent,
                fontSize: 36)),
        const Text(" ~ Clasping hands in prayer ~",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.brown, fontSize: 18)),
        const SizedBox(
          height: 10,
        ),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[19]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[20]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[21]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[22]),
        SizedBox(
          height: height * 0.3,
          child: Image.asset(
            "assets/images/standing.png",
            fit: BoxFit.contain,
          ),
        ),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[23]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[24]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[25]),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Prayer/prophetic_way_of_prayer.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Prayer_Screen_Widgets/prophetic_way_of_prayer_in_the_light_of_hadith_widget.dart';

class ImamAbuHanifaPointOfViewOnRecitingLoud extends StatelessWidget {
  const ImamAbuHanifaPointOfViewOnRecitingLoud({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("امام ابو حنیفہ کا نقطہ نظر",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.white,
                fontSize: 26)),
        const Text("Point of view of Imam Abu Hanifa",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.lime, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        const Text(
            "نماز باجماعت میں امام کے پیچھے سورہ فاتحہ نہیں پڑھنی چاہیے۔ یہاں تک کہ جب امام خاموشی سے تلاوت کرے۔",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.green,
                fontSize: 26)),
        const Text(
            " We should not recite surah Al-Fatiha behind the Imam in congregational prayers. Even when the Imam recites silently ",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        const Text("خود نماز پڑھنے والے پر سورہ فاتحہ کی تلاوت واجب ہے۔",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.green,
                fontSize: 26)),
        const Text(
            "Recitation of ‘Surah Al-Fatiha’ is compulsory for the one who prays by himself.",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 10,
        ),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[32]),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

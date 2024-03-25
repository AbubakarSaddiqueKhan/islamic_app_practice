import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Prayer/prophetic_way_of_prayer.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Prayer_Screen_Widgets/prophetic_way_of_prayer_in_the_light_of_hadith_widget.dart';

class AllHadithOnTakbeerTahreemaWidgetsList extends StatelessWidget {
  const AllHadithOnTakbeerTahreemaWidgetsList({super.key});

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Column(
      children: [
        const Text(" ~ Takbeer Tahreema ~",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.brown, fontSize: 18)),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: takbirETahreemaHadithList[0]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: takbirETahreemaHadithList[1]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: takbirETahreemaHadithList[2]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: takbirETahreemaHadithList[3]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: takbirETahreemaHadithList[4]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: takbirETahreemaHadithList[5]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: takbirETahreemaHadithList[6]),
        SizedBox(
          height: height * 0.3,
          child: Image.asset(
            "assets/images/tahreema.png",
            fit: BoxFit.contain,
          ),
        ),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: takbirETahreemaHadithList[7]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: takbirETahreemaHadithList[8]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: takbirETahreemaHadithList[9]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: takbirETahreemaHadithList[10]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: takbirETahreemaHadithList[11]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: takbirETahreemaHadithList[12]),
      ],
    );
  }
}

class TakbeerTehreemaWidget extends StatelessWidget {
  const TakbeerTehreemaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(" ~ تکبیر تحریمہ ~",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                height: 1.25,
                wordSpacing: 4,
                fontFamily: "Saleem",
                color: Colors.purpleAccent,
                fontSize: 36)),
        SizedBox(
          height: 10,
        ),
        AllHadithOnTakbeerTahreemaWidgetsList(),
      ],
    );
  }
}

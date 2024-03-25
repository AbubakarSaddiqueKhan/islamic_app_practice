import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Prayer/prayer_in_quran.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Prayer_Screen_Widgets/prayer_brief_introduction_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Prayer_Screen_Widgets/prayer_in_light_of_quran_widget.dart';

class PrayerInTheLightOfQuran extends StatefulWidget {
  const PrayerInTheLightOfQuran({super.key});

  @override
  State<PrayerInTheLightOfQuran> createState() =>
      _PrayerInTheLightOfQuranState();
}

class _PrayerInTheLightOfQuranState extends State<PrayerInTheLightOfQuran> {
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/dark.jpg",
                ),
                fit: BoxFit.cover)),
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                PrayerBriefIntroductionInTheLightOfQuranWidget(),
                SizedBox(
                  height: 10,
                ),
                PrayerInTheLightOfQuranWidgetsList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/all_hadith_list_widgets_on_clasping_hand_in_prayer.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/all_hadith_widgets_list_on_takbir_e_tehreema.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/all_imam_s_pov_on_reciting_loud_widget.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/obligation_of_surah_fatiha_in_prayer_widgets_list.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/opening_supplications_of_prayer_widgets_list.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Prayer_Screen_Widgets/prophetic_way_of_prayer_introduction_widget.dart';

class PropheticWayOfPrayer extends StatefulWidget {
  const PropheticWayOfPrayer({super.key});

  @override
  State<PropheticWayOfPrayer> createState() => _PropheticWayOfPrayerState();
}

class _PropheticWayOfPrayerState extends State<PropheticWayOfPrayer> {
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
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                PropheticWayOfPrayerIntroductionWidget(),
                SizedBox(
                  height: 10,
                ),
                TakbeerTehreemaWidget(),
                SizedBox(
                  height: 15,
                ),
                // ALlHadithOnClaspingHandInPrayerWidgetsList(),
                // SizedBox(
                //   height: 15,
                // ),
                // OpeningSupplicationsOfPrayerWidgetsList(),
                // SizedBox(
                //   height: 15,
                // ),
                // ObligationsOfSurahFatihaaInPrayerWidgetsList(),
                // SizedBox(
                //   height: 15,
                // ),
                // AllImamPointOfViewOnRecitingLoudWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

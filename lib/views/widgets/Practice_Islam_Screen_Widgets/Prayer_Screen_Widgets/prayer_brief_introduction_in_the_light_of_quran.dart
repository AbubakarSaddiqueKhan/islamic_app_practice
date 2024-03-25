import 'package:flutter/material.dart';

class PrayerBriefIntroductionInTheLightOfHadithWidget extends StatelessWidget {
  const PrayerBriefIntroductionInTheLightOfHadithWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "نماز حدیث کی روشنی میں",
          textDirection: TextDirection.rtl,
          style:
              TextStyle(fontFamily: "Amiri", color: Colors.white, fontSize: 30),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "احادیث کی مختلف کتابوں میں نماز کے موضوع پر سیکڑوں احادیث موجود ہیں، بعض مصنفین کے پاس احادیث کی روشنی میں نماز کی اہمیت کے اوپر ابواب ہیں۔۔",
          textDirection: TextDirection.rtl,
          style: TextStyle(
              height: 1.25,
              wordSpacing: 4,
              fontFamily: "Saleem",
              color: Colors.green,
              fontSize: 36),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "There are hundreds of hadith on the topic of namaz in the different books of hadith, Some authors have chapters on the top of importance of namaz in the light of the hadith ",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
        ),
      ],
    );
  }
}

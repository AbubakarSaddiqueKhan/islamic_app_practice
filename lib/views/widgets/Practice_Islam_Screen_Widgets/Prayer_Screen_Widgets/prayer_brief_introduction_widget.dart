import 'package:flutter/material.dart';

class PrayerBriefIntroductionInTheLightOfQuranWidget extends StatelessWidget {
  const PrayerBriefIntroductionInTheLightOfQuranWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "نماز قرآن کی روشنی میں",
          textDirection: TextDirection.rtl,
          style:
              TextStyle(fontFamily: "Amiri", color: Colors.white, fontSize: 30),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "نماز پڑھنے کے احکام قرآن مجید میں 700 مرتبہ مذکور ہیں۔ قرآن میں صلاۃ کا لفظ 67 مرتبہ آیا ہے۔ قرآن مجید میں 32 مرتبہ نماز اور زکوٰۃ جمع ہیں۔",
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
          "The commands to offer Salah are 700 times mentioned in the Quran. The word Salah appears 67 times in the Quran. The Salah and Zakat 32 times come together in the Quran.",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
        ),
      ],
    );
  }
}

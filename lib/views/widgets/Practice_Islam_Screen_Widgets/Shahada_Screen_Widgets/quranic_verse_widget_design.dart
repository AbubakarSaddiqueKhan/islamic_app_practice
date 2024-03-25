import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Shahda/oneness_of_god_in_quran_model.dart';

class QuranicVerseWidgetDesign extends StatelessWidget {
  const QuranicVerseWidgetDesign(
      {super.key, required this.onenessOfGodInQuranData});
  final OnenessOfGodInQuranModel onenessOfGodInQuranData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("~ ${onenessOfGodInQuranData.id.toString()} ~",
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                fontFamily: "Archivo", color: Colors.red, fontSize: 24)),
        const SizedBox(
          height: 15,
        ),
        // مَا ٱتَّخَذَ ٱللَّهُ مِن وَلَدٍ وَمَا كَانَ مَعَهُۥ مِنْ إِلَٰهٍ إِذًا لَّذَهَبَ كُلُّ إِلَٰهٍۭبِمَا خَلَقَ وَلَعَلَا بَعْضُهُمْ عَلَىٰ بَعْضٍ سُبْحَٰنَ ٱللَّهِ عَمَّا يَصِفُونَ
        // قُلۡ اِنَّ صَلَاتِىۡ وَنُسُكِىۡ وَ مَحۡيَاىَ وَمَمَاتِىۡ لِلّٰهِ رَبِّ الۡعٰلَمِيۡنَۙ‏ ﻿﻿ ﴿6:162﴾‏
        Text(
            "${onenessOfGodInQuranData.quranicVerseArabicText} ‏ ﻿﻿ ﴿ ${onenessOfGodInQuranData.quranicVerseReference} ﴾‏",
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                height: 1.25,
                wordSpacing: 2.5,
                fontFamily: "Saleem",
                color: Colors.white,
                fontSize: 40)),
        const SizedBox(
          height: 10,
        ),
        Text(onenessOfGodInQuranData.quranicVerseUrduText,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                fontFamily: "Amiri", color: Colors.green, fontSize: 24)),
        const SizedBox(
          height: 10,
        ),
        Text(onenessOfGodInQuranData.quranicVerseEnglishText,
            style: const TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
      ],
    );
  }
}

class QuranicVersesWidgets extends StatelessWidget {
  const QuranicVersesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white,
            width: 1,
          )),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              const Text("قرآن میں شہادت کا بیان",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: "Amiri", color: Colors.amber, fontSize: 24)),
              const SizedBox(
                height: 15,
              ),
              QuranicVerseWidgetDesign(
                  onenessOfGodInQuranData: onenessOfGodInQuranDataList[0]),
              QuranicVerseWidgetDesign(
                  onenessOfGodInQuranData: onenessOfGodInQuranDataList[1]),
              QuranicVerseWidgetDesign(
                  onenessOfGodInQuranData: onenessOfGodInQuranDataList[2]),
              QuranicVerseWidgetDesign(
                  onenessOfGodInQuranData: onenessOfGodInQuranDataList[3]),
              QuranicVerseWidgetDesign(
                  onenessOfGodInQuranData: onenessOfGodInQuranDataList[4]),
              QuranicVerseWidgetDesign(
                  onenessOfGodInQuranData: onenessOfGodInQuranDataList[5]),
              QuranicVerseWidgetDesign(
                  onenessOfGodInQuranData: onenessOfGodInQuranDataList[6]),
              QuranicVerseWidgetDesign(
                  onenessOfGodInQuranData: onenessOfGodInQuranDataList[7]),
              QuranicVerseWidgetDesign(
                  onenessOfGodInQuranData: onenessOfGodInQuranDataList[8]),
              QuranicVerseWidgetDesign(
                  onenessOfGodInQuranData: onenessOfGodInQuranDataList[9]),
            ],
          ),
        ),
      ),
    );
  }
}

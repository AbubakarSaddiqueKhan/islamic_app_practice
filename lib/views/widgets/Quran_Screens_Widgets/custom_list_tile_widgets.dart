import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Quran/audio_arabic_quran_model.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_api_model.dart';
import 'package:flutter_quran_api_practice/model/Quran/urdu_Audio_quran_model.dart';
import 'package:flutter_quran_api_practice/model/Quran/urdu_translated_quran_api_model.dart';
import 'package:flutter_quran_api_practice/views/screens/surah_detailed_page.dart';

class SurahBriefDetailWidget extends StatelessWidget {
  const SurahBriefDetailWidget(
      {super.key,
      required this.surahs,
      required this.index,
      required this.englishTranslatedSurahs,
      required this.urduTranslatedSurahs,
      required this.audioArabicQuranAllSurahs,
      required this.urduTranslatedAllSurahs});
  final List<Surahs> surahs;
  final List<Surahs> englishTranslatedSurahs;
  final List<Surahs> urduTranslatedSurahs;
  final List<AudioArabicQuranModel> audioArabicQuranAllSurahs;
  final List<UrduTranslatedSurahs> urduTranslatedAllSurahs;
  final int index;

  @override
  Widget build(BuildContext context) {
    void navigateToSurahDetailPage({required Surahs surah}) {
      print("clicked on  : ${surahs[index].name}");
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return SurahDetailedPage(
            surah: surahs[index],
            englishTranslatedSurah: englishTranslatedSurahs[index],
            urduTranslatedSurah: urduTranslatedSurahs[index],
            audioArabicQuranSurah: audioArabicQuranAllSurahs[index],
            urduAudioQuranSurah: urduTranslatedAllSurahs[index],
          );
        },
      ));
    }

    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(top: 3, left: 10, right: 10, bottom: 2),
      child: InkWell(
        onTap: () => navigateToSurahDetailPage(surah: surahs[index]),
        child: Container(
          width: width,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
                width: 1,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${surahs[index].number.toString()}. ",
                              style: const TextStyle(
                                  fontFamily: "Archivo",
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            Text(
                              surahs[index].englishName,
                              style: const TextStyle(
                                  fontFamily: "Merienda",
                                  color: Colors.white,
                                  fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              surahs[index].revelationType,
                              style: const TextStyle(
                                  fontFamily: "Khand",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Verses : ${surahs[index].ayahs.length.toString()}",
                              style: const TextStyle(
                                  fontFamily: "Archivo",
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Expanded(
                flex: 40,
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      surahs[index].name,
                      textDirection: TextDirection.rtl,
                      // style: GoogleFonts.amiri(color: Colors.white, fontSize: 24),
                      style: const TextStyle(
                          fontFamily: "Amiri",
                          color: Colors.white,
                          fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// Old design code .

/**
 * 
 * 
 * 
        ....
        child: Container(
          width: width,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue.shade300),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 60,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${surahs[index].number.toString()}. ",
                              style: const TextStyle(
                                  fontFamily: "Archivo",
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                            Text(
                              surahs[index].englishName,
                              style: const TextStyle(
                                  fontFamily: "Merienda",
                                  color: Colors.white,
                                  fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              surahs[index].revelationType,
                              style: const TextStyle(
                                  fontFamily: "Khand",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Verses : ${surahs[index].ayahs.length.toString()}",
                              style: const TextStyle(
                                  fontFamily: "Archivo",
                                  color: Colors.white,
                                  fontSize: 18),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              Expanded(
                flex: 40,
                child: Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Text(
                      surahs[index].name,
                      // style: GoogleFonts.amiri(color: Colors.white, fontSize: 24),
                      style: const TextStyle(
                          fontFamily: "Amiri",
                          color: Colors.white,
                          fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),




 */
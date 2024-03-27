import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran_Updated/surah.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlock/Simple_Arabic_Quran_Surah_Wise/simple_arabic_quran_surah_wise_bloc.dart';
import 'dart:developer' as developer;

class QuranMainPageSurahWidget extends StatelessWidget {
  const QuranMainPageSurahWidget({super.key, required this.surah});
  final Surah surah;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 2, left: 10, right: 10),
      child: InkWell(
        onTap: () {
          // developer.log("clicked on ${surah.surahNumber}");
          context
              .read<SimpleArabicQuranSurahWiseBloc>()
              .add(FetchSimpleArabicQuranEvent(surahNumber: surah.surahNumber));
        },
        child: Container(
          width: width,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.white,
                width: 1,
              )),
          // alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Surah No : ${surah.surahNumber.toString()}",
                      style: const TextStyle(
                          fontFamily: "Archivo",
                          color: Colors.amber,
                          fontSize: 16),
                    ),
                    Text(
                      "Verses : ${surah.totalNumberOfVersesInSurah}",
                      style: const TextStyle(
                          fontFamily: "Archivo",
                          color: Colors.teal,
                          fontSize: 16),
                    ),
                    Text(
                      "Ruku : ${surah.totalNumberOfRukuInSurah}",
                      style: const TextStyle(
                          fontFamily: "Archivo",
                          color: Colors.lime,
                          fontSize: 16),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        surah.arabicSurahName,
                        textDirection: TextDirection.rtl,
                        style: const TextStyle(
                            fontFamily: "Amiri",
                            color: Colors.white,
                            fontSize: 28),
                      ),
                      Text(
                        surah.romanEnglishSurahName,
                        style: const TextStyle(
                            fontFamily: "Archivo",
                            color: Colors.cyan,
                            fontSize: 19),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

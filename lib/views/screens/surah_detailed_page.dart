import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/audio_arabic_quran_model.dart';
import 'package:flutter_quran_api_practice/model/quran_api_model.dart';
import 'package:flutter_quran_api_practice/model/urdu_Audio_quran_model.dart';
import 'package:flutter_quran_api_practice/model/urdu_translated_quran_api_model.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Screens_Widgets/display_quranic_verses_list_widget.dart';

class SurahDetailedPage extends StatelessWidget {
  const SurahDetailedPage(
      {super.key,
      required this.surah,
      required this.englishTranslatedSurah,
      required this.urduTranslatedSurah,
      required this.audioArabicQuranSurah,
      required this.urduAudioQuranSurah});
  final Surahs surah;
  final Surahs englishTranslatedSurah;
  final Surahs urduTranslatedSurah;
  final AudioArabicQuranModel audioArabicQuranSurah;
  final UrduTranslatedSurahs urduAudioQuranSurah;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
        body: Center(
            child: QuranicVersesListViewWidget(
      surah: surah,
      englishTranslatedSurah: englishTranslatedSurah,
      urduTranslatedSurah: urduTranslatedSurah,
      audioArabicQuranSurah: audioArabicQuranSurah,
      urduAudioQuranSurah: urduAudioQuranSurah,
    )));
  }
}

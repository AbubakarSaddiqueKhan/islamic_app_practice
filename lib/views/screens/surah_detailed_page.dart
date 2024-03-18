import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/audio_arabic_quran_model.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_api_model.dart';
import 'package:flutter_quran_api_practice/model/Quran/urdu_Audio_quran_model.dart';
import 'package:flutter_quran_api_practice/model/Quran/urdu_translated_quran_api_model.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/TafsirEQuran/tafsir_e_quran_bloc.dart';
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
        body: Center(child: BlocBuilder<TafsirEQuranBloc, TafsirEQuranState>(
      builder: (context, state) {
        if (state is TafsirEQuranInitialState) {
        } else {}
        return QuranicVersesListViewWidget(
          surah: surah,
          englishTranslatedSurah: englishTranslatedSurah,
          urduTranslatedSurah: urduTranslatedSurah,
          audioArabicQuranSurah: audioArabicQuranSurah,
          urduAudioQuranSurah: urduAudioQuranSurah,
        );
      },
    )));
  }
}

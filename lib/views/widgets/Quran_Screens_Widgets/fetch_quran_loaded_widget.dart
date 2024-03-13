import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/audio_arabic_quran_model.dart';
import 'package:flutter_quran_api_practice/model/quran_api_model.dart';
import 'package:flutter_quran_api_practice/model/urdu_Audio_quran_model.dart';
import 'package:flutter_quran_api_practice/model/urdu_translated_quran_api_model.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Screens_Widgets/custom_list_tile_widgets.dart';

class FetchQuranDataLoadedWidget extends StatelessWidget {
  const FetchQuranDataLoadedWidget(
      {super.key,
      required this.surahs,
      required this.englishTranslatedSurahs,
      required this.urduTranslatedSurahs,
      required this.audioArabicQuranAllSurahs,
      required this.urduAudioQuranModel});
  final List<Surahs> surahs;
  final List<Surahs> englishTranslatedSurahs;
  final List<Surahs> urduTranslatedSurahs;
  final List<AudioArabicQuranModel> audioArabicQuranAllSurahs;
  final UrduAudioQuranModel urduAudioQuranModel;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Center(
      child: ListView.builder(
        itemCount: surahs.length,
        itemBuilder: (context, index) {
          return SurahBriefDetailWidget(
            surahs: surahs,
            index: index,
            englishTranslatedSurahs: englishTranslatedSurahs,
            urduTranslatedSurahs: urduTranslatedSurahs,
            audioArabicQuranAllSurahs: audioArabicQuranAllSurahs,
            urduTranslatedAllSurahs: urduAudioQuranModel.data.surahs,
          );
        },
      ),
    );
  }
}

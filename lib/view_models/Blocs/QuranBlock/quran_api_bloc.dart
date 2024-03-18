import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran/audio_arabic_quran_model.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_api_model.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_api_model.dart';
import 'package:flutter_quran_api_practice/model/Quran/urdu_Audio_quran_model.dart';
import 'package:flutter_quran_api_practice/model/Quran/urdu_translated_quran_api_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/quran_apis/arabic_audio_quran_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/quran_apis/arabic_quran_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/quran_apis/english_translated_quran_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/quran_apis/molana_modudi_urdu_translated_quran_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/quran_apis/urdu_audio_quran_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/quran_apis/urdu_translated_quran_api_service.dart';
import 'package:meta/meta.dart';
import 'dart:developer' as developer;

part 'quran_api_event.dart';
part 'quran_api_state.dart';

class QuranApiBloc extends Bloc<QuranApiEvent, QuranApiState> {
  ArabicQuranApiService arabicQuranApiService = ArabicQuranApiService();
  EnglishTranslatedQuranApiService englishTranslatedQuranApiService =
      EnglishTranslatedQuranApiService();
  MolanaMaududiUrduTranslatedQuranApiService
      molanaMaududiUrduTranslatedQuranApiService =
      MolanaMaududiUrduTranslatedQuranApiService();

  AudioArabicQuranApiService audioArabicQuranApiService =
      AudioArabicQuranApiService();

  UrduAudioQuranApiService urduAudioQuranApiService =
      UrduAudioQuranApiService();
  // UrduTranslatedQuranApiService urduTranslatedQuranApiService =
  //     UrduTranslatedQuranApiService();

  QuranApiBloc() : super(QuranApiInitialState()) {
    on<FetchQuranApiEvent>(_mapQuranEventsToStates);
    on<FetchAllSurahOfQuranApiEvent>(_mapQuranSurahListEventsToStates);
    // on<FetchAllSurahOfUrduTranslatedQuranApiEvent>(
    //     _mapUrduTranslatedQuranEventsToState);
  }

  FutureOr<void> _mapQuranEventsToStates(
      FetchQuranApiEvent event, Emitter<QuranApiState> emit) async {
    try {
      emit(QuranApiLoadingState());
      QuranApiModel quranApiModel =
          await arabicQuranApiService.fetchArabicQuran();
      emit(ArabicQuranApiLoadedState(quranApiModel: quranApiModel));
    } catch (e) {
      emit(QuranApiErrorState(errorMessage: e.toString()));
    }
  }

  FutureOr<void> _mapQuranSurahListEventsToStates(
      FetchAllSurahOfQuranApiEvent event, Emitter<QuranApiState> emit) async {
    try {
      emit(QuranApiLoadingState());
      List<Surahs> surahs =
          await arabicQuranApiService.fetchArabicQuranAllSurah();

      List<Surahs> englishTranslatedSurahs =
          await englishTranslatedQuranApiService.fetchEnglishQuranAllSurah();

      List<Surahs> urduTranslatedSurahs =
          await molanaMaududiUrduTranslatedQuranApiService
              .fetchUrduTranslatedQuranAllSurah();

      // List<UrduTranslatedQuranApiModel> urduTranslatedQuranAllSurahs = [];
      emit(QuranApiLoadingState());
      // for (var surahNo = 1; surahNo <= 114; surahNo++) {
      //   UrduTranslatedQuranApiModel urduTranslatedQuranApiModel =
      //       await urduTranslatedQuranApiService.fetchUrduTranslatedQuran(
      //           endPoints: surahNo.toString());
      //   developer.log("Data is loading of surah no : $surahNo");
      //   urduTranslatedQuranAllSurahs.add(urduTranslatedQuranApiModel);
      // }

      List<AudioArabicQuranModel> arabicQuranAllAudios = [];

      for (var surahNumber = 1; surahNumber <= 114; surahNumber++) {
        // 1/ar.abdurrahmaansudais
        String currentEndPoint = "$surahNumber/ar.abdurrahmaansudais";
        AudioArabicQuranModel arabicQuranModel =
            await audioArabicQuranApiService.fetchArabicQuranAudio(
                endPoint: currentEndPoint);
        arabicQuranAllAudios.add(arabicQuranModel);
        developer.log(
            "Alhamdulillah data of audio quran of surah : $surahNumber  is fetched successfully");
      }
      developer.log("Insha Allah All audio quran will be fetched successfully");

      print(arabicQuranAllAudios);
      developer.log("Alhamdulillah All audio quran is fetched successfully");

      developer.log(
          "Insha Allah All Urdu translated audio quran will be fetched successfully");

      UrduAudioQuranModel urduAudioQuranModel =
          await urduAudioQuranApiService.fetchUrduAudioQuran();
      developer
          .log("Alhamdulillah All Urdu audio quran is fetched successfully");

      emit(ListOfSurahArabicQuranApiLoadedState(
          surahs: surahs,
          englishTranslatedSurahs: englishTranslatedSurahs,
          molanaMaududiUrduTranslatedSurahs: urduTranslatedSurahs,
          audioArabicQuranAllSurahs: arabicQuranAllAudios,
          urduAudioQuranAllSurahs: urduAudioQuranModel));
    } catch (e) {
      emit(QuranApiErrorState(errorMessage: e.toString()));
    }
  }

  // FutureOr<void> _mapEnglishTranslatedQuranSurahListEventsToStates(
  //     FetchAllSurahOfEnglishTranslatedQuranApiEvent event,
  //     Emitter<QuranApiState> emit) async {
  //   try {
  //     emit(QuranApiLoadingState());
  //     List<Surahs> englishTranslatedSurahs =
  //         await englishTranslatedQuranApiService.fetchEnglishQuranAllSurah();
  //     emit(ListOfSurahArabicQuranApiLoadedState(
  //         surahs: englishTranslatedSurahs));
  //   } catch (e) {
  //     emit(QuranApiErrorState(errorMessage: e.toString()));
  //   }
  // }

  // FutureOr<void> _mapUrduTranslatedQuranEventsToState(
  //     FetchAllSurahOfUrduTranslatedQuranApiEvent event,
  //     Emitter<QuranApiState> emit) async {
  //   try {
  //     List<UrduTranslatedQuranApiModel> urduTranslatedQuranAllSurahs = [];
  //     emit(QuranApiLoadingState());
  //     for (var surahNo = 1; surahNo <= 114; surahNo++) {
  //       UrduTranslatedQuranApiModel urduTranslatedQuranApiModel =
  //           await urduTranslatedQuranApiService.fetchUrduTranslatedQuran(
  //               endPoints: surahNo.toString());
  //       developer.log("Data is loading of surah no : $surahNo");
  //       urduTranslatedQuranAllSurahs.add(urduTranslatedQuranApiModel);
  //     }

  //     emit(ListOfSurahUrduTranslatedQuranApiLoadedState(
  //         urduTranslatedSurahs: urduTranslatedQuranAllSurahs));
  //   } catch (e) {
  //     emit(QuranApiErrorState(errorMessage: e.toString()));
  //   }
  // }
}

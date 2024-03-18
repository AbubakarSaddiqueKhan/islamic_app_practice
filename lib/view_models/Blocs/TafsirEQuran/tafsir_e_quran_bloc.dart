import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/translated_tafsir_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/Tafsir_E_Quran_Api_Service/tafsir_e_quran_api_service.dart';
import 'package:meta/meta.dart';
import 'dart:developer' as developer;

part 'tafsir_e_quran_event.dart';
part 'tafsir_e_quran_state.dart';

class TafsirEQuranBloc extends Bloc<TafsirEQuranEvent, TafsirEQuranState> {
  TafsirEQuranApiService tafsirEQuranApiService = TafsirEQuranApiService();
  TafsirEQuranBloc() : super(TafsirEQuranInitialState()) {
    on<FetchUrduTranslatedTafsirEQuran>(
        _mapUrduTranslatedTafsirEQuranEventToStates);

    on<FetchEnglishTranslatedTafsirEQuran>(
        _mapEnglishTranslatedTafsirEQuranEventToState);
  }

  FutureOr<void> _mapUrduTranslatedTafsirEQuranEventToStates(
      FetchUrduTranslatedTafsirEQuran event,
      Emitter<TafsirEQuranState> emit) async {
    List<TafsirEQuranModel> allSurahTafsir = <TafsirEQuranModel>[];
    try {
      emit(TafsirEQuranInitialState());
      developer.log("Urdu Tafsir data is fetching");
      for (var surahNumber = 1; surahNumber <= 114; surahNumber++) {
        var endPoint = ("ur-tafsir-bayan-ul-quran", surahNumber.toString());
        TafsirEQuranModel tafsirEQuranModel =
            await tafsirEQuranApiService.fetchQuranTafsirEQuran(endPoint);

        developer
            .log("Alhamdulillah Urdu Fetched data of Surah No : $surahNumber");

        allSurahTafsir.add(tafsirEQuranModel);
      }
      developer.log("Alhamdulillah Urdu ..... ");

      emit(UrduTafsirEQuranLoadedState(tafsirEQuran: allSurahTafsir));
    } catch (e) {
      emit(TafsirEQuranErrorState());
    }
  }

  FutureOr<void> _mapEnglishTranslatedTafsirEQuranEventToState(
      FetchEnglishTranslatedTafsirEQuran event,
      Emitter<TafsirEQuranState> emit) async {
    List<TafsirEQuranModel> allSurahTafsir = <TafsirEQuranModel>[];

    try {
      emit(TafsirEQuranInitialState());
      developer.log("English Tafsir data is fetching");
      for (var surahNumber = 1; surahNumber <= 114; surahNumber++) {
        var endPoint = ("en-tafisr-ibn-kathir", surahNumber.toString());
        TafsirEQuranModel tafsirEQuranModel =
            await tafsirEQuranApiService.fetchQuranTafsirEQuran(endPoint);

        developer
            .log("Alhamdulillah  Eng Fetched data of Surah No : $surahNumber");
        allSurahTafsir.add(tafsirEQuranModel);
      }
      developer.log("Alhamdulillah English ..... ");

      emit(EnglishTafsirEQuranLoadedState(tafsirEQuran: allSurahTafsir));
    } catch (e) {
      emit(TafsirEQuranErrorState());
    }
  }
}

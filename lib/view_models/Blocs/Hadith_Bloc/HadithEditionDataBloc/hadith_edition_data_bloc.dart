import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_edition_data_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/hadith_edition_api_service.dart';
import 'package:meta/meta.dart';
import 'dart:developer' as developer;

part 'hadith_edition_data_event.dart';
part 'hadith_edition_data_state.dart';

class HadithEditionDataBloc
    extends Bloc<HadithEditionDataEvent, HadithEditionDataState> {
  HadithEditionApiService hadithEditionApiService = HadithEditionApiService();

  HadithEditionDataBloc() : super(HadithEditionDataInitialState()) {
    on<FetchSunanAlTirmidhiHadithDataEvent>(_mapSunanAlTirmidhiEventToStates);
    on<FetchHadithQudsiDataEvent>(_mapHadithQudsiEventToStates);
    on<FetchNawaiHadithDataEvent>(_mapNawaiHadithEventToStates);
    on<FetchHadithNisaiDataEvent>(_mapHadithNisaiEventToStates);
    on<FetchSahihMuslimHadithDataEvent>(_mapSahihMuslimEventToStates);
    on<FetchMutaImamMalikHadithDataEvent>(_mapMutaImamMalikHadithEventToStates);
    on<FetchIbnMajahHadithDataEvent>(_mapIbnMajahEventToStates);
    on<FetchShahWaliullahDehlawiHadithDataEvent>(
        _mapShahWaliUllahDehalwiEventToStates);
    on<FetchSahihBukhariHadithDataEvent>(_mapSahihBukhariEventToStates);
    on<FetchImamAbuHanifaHadithDataEvent>(_mapImamAbuHanifaEventToStates);
    on<FetchAbuDawudHadithDataEvent>(_mapAbuDawudHadithEventToStates);
  }

  FutureOr<void> _mapSunanAlTirmidhiEventToStates(
      FetchSunanAlTirmidhiHadithDataEvent event,
      Emitter<HadithEditionDataState> emit) async {
    try {
      emit(HadithEditionDataLoadingState());

      HadithEditionDataModel arabicLanguageSunanAlTirimhgiData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "ara-tirmidhi.json");

      HadithEditionDataModel englishLanguageSunanAlTirimdgiData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "eng-tirmidhi.json");

      HadithEditionDataModel urduLanguageSunanAlTirimdgiData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "urd-tirmidhi.json");

      emit(SunanAlTirmidhiHadithDataLoadedState(
          arabicLanguageSunanAlTirimdhiData: arabicLanguageSunanAlTirimhgiData,
          urduLanguageSunanAlTirimdhiData: urduLanguageSunanAlTirimdgiData,
          englishLanguageSunanAlTirimdhiData:
              englishLanguageSunanAlTirimdgiData));
    } catch (e) {
      developer.log("Error is : ${e.toString()}");
      emit(HadithEditionDataErrorState());
    }
  }

  FutureOr<void> _mapHadithQudsiEventToStates(FetchHadithQudsiDataEvent event,
      Emitter<HadithEditionDataState> emit) async {
    try {
      emit(HadithEditionDataLoadingState());

      HadithEditionDataModel arabicLanguagehadithQudsiData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "ara-qudsi.json");

      HadithEditionDataModel englishLanguageHadithQudsiData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "eng-qudsi.json");

      emit(HadithQudsiDataLoadedState(
          arabicLanguagehadithQudsiData: arabicLanguagehadithQudsiData,
          englishLanguageHadithQudsiData: englishLanguageHadithQudsiData));
    } catch (e) {
      emit(HadithEditionDataErrorState());
    }
  }

  FutureOr<void> _mapNawaiHadithEventToStates(FetchNawaiHadithDataEvent event,
      Emitter<HadithEditionDataState> emit) async {
    try {
      emit(HadithEditionDataLoadingState());

      HadithEditionDataModel arabicLanguageNawaiHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "ara-nawawi.json");

      HadithEditionDataModel englishLanguageNawaiHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "eng-nawawi.json");

      emit(NawaiHadithDataLoadedState(
          arabicLanguageNawaiHadithData: arabicLanguageNawaiHadithData,
          englishLanguageNawaiHadithData: englishLanguageNawaiHadithData));
    } catch (e) {
      emit(HadithEditionDataErrorState());
    }
  }

  FutureOr<void> _mapHadithNisaiEventToStates(FetchHadithNisaiDataEvent event,
      Emitter<HadithEditionDataState> emit) async {
    try {
      emit(HadithEditionDataLoadingState());

      HadithEditionDataModel arabicLanguageHadithNisaiData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "ara-nasai.json");

      HadithEditionDataModel englishLanguageHadithNisaiData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "eng-nasai.json");

      HadithEditionDataModel urduLanguageHadithNisaiData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "urd-nasai.json");

      emit(HadithNisaiDataLoadedState(
          arabicLanguageHadithNisaiData: arabicLanguageHadithNisaiData,
          urduLanguageHadithNisaiData: urduLanguageHadithNisaiData,
          englishLanguageHadithNisaiData: englishLanguageHadithNisaiData));
    } catch (e) {
      emit(HadithEditionDataErrorState());
    }
  }

  FutureOr<void> _mapSahihMuslimEventToStates(
      FetchSahihMuslimHadithDataEvent event,
      Emitter<HadithEditionDataState> emit) async {
    try {
      emit(HadithEditionDataLoadingState());

      HadithEditionDataModel arabicLanguageSahihMuslimHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "ara-muslim.json");

      HadithEditionDataModel englishLanguageSahihMuslimHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "eng-muslim.json");

      HadithEditionDataModel urduLanguageSahihMuslimHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "urd-muslim.json");

      emit(SahihMuslimHadithDataLoadedState(
          arabicLanguageSahihMuslimHadithData:
              arabicLanguageSahihMuslimHadithData,
          englishLanguageSahihMuslimHadithData:
              englishLanguageSahihMuslimHadithData,
          urduLanguageSahihMuslimHadithData:
              urduLanguageSahihMuslimHadithData));
    } catch (e) {
      developer.log("Muslim error is : ${e.toString()}");
      emit(HadithEditionDataErrorState());
    }
  }

  FutureOr<void> _mapMutaImamMalikHadithEventToStates(
      FetchMutaImamMalikHadithDataEvent event,
      Emitter<HadithEditionDataState> emit) async {
    try {
      emit(HadithEditionDataLoadingState());

      HadithEditionDataModel arabicLanguageMutaImamMalikHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "ara-malik.json");

      HadithEditionDataModel englishLanguageMutaImamMalikHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "eng-malik.json");

      HadithEditionDataModel urduLanguageMutaImamMalikHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "urd-malik.json");

      emit(MutaImamMalikHadithDataLoadedState(
          englishLanguageMutaImamMalikHadithData:
              englishLanguageMutaImamMalikHadithData,
          urduLanguageMutaImamMalikHadithData:
              urduLanguageMutaImamMalikHadithData,
          arabicLanguageMutaImamMalikHadithData:
              arabicLanguageMutaImamMalikHadithData));
    } catch (e) {
      emit(HadithEditionDataErrorState());
    }
  }

  FutureOr<void> _mapIbnMajahEventToStates(FetchIbnMajahHadithDataEvent event,
      Emitter<HadithEditionDataState> emit) async {
    try {
      emit(HadithEditionDataLoadingState());

      HadithEditionDataModel arabicLanguageIbnMajahHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "ara-ibnmajah.json");

      HadithEditionDataModel englishLanguageIbnMajahHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "eng-ibnmajah.json");

      HadithEditionDataModel urduLanguageIbnMajahHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "urd-ibnmajah.json");

      emit(IbnMajahHadithDataLoadedState(
          englishLanguageIbnMajahHadithData: englishLanguageIbnMajahHadithData,
          urduLanguageIbnMajahHadithData: urduLanguageIbnMajahHadithData,
          arabicLanguageIbnMajahHadithData: arabicLanguageIbnMajahHadithData));
    } catch (e) {
      emit(HadithEditionDataErrorState());
    }
  }

  FutureOr<void> _mapShahWaliUllahDehalwiEventToStates(
      FetchShahWaliullahDehlawiHadithDataEvent event,
      Emitter<HadithEditionDataState> emit) async {
    try {
      emit(HadithEditionDataLoadingState());

      HadithEditionDataModel arabicLanguageShahWaliullahDehlawiHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "ara-dehlawi.json");

      HadithEditionDataModel englishLanguageShahWaliullahDehlawiHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "eng-dehlawi.json");

      emit(ShahWaliullahDehlawiHadithDataLoadedState(
          arabicLanguageShahWaliullahDehlawiHadithData:
              arabicLanguageShahWaliullahDehlawiHadithData,
          englishLanguageShahWaliullahDehlawiHadithData:
              englishLanguageShahWaliullahDehlawiHadithData));
    } catch (e) {
      emit(HadithEditionDataErrorState());
    }
  }

  FutureOr<void> _mapSahihBukhariEventToStates(
      FetchSahihBukhariHadithDataEvent event,
      Emitter<HadithEditionDataState> emit) async {
    try {
      emit(HadithEditionDataLoadingState());

      HadithEditionDataModel arabicLanguageSahihBukhariHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "ara-bukhari.json");

      HadithEditionDataModel englishLanguageSahihBukhariHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "eng-bukhari.json");

      HadithEditionDataModel urduLanguageSahihBukhariHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "urd-bukhari.json");

      emit(SahihBukhariHadithDataLoadedState(
          arabicLanguageSahihBukhariHadithData:
              arabicLanguageSahihBukhariHadithData,
          urduLanguageSahihBukhariHadithData:
              urduLanguageSahihBukhariHadithData,
          englishLanguageSahihBukhariHadithData:
              englishLanguageSahihBukhariHadithData));
    } catch (e) {
      emit(HadithEditionDataErrorState());
    }
  }

  FutureOr<void> _mapImamAbuHanifaEventToStates(
      FetchImamAbuHanifaHadithDataEvent event,
      Emitter<HadithEditionDataState> emit) async {
    try {
      emit(HadithEditionDataLoadingState());

      HadithEditionDataModel arabicLanguageImamAbuHanifaHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "ara-abuhanifa.json");

      emit(ImamAbuHanifaHadithDataLoadedState(
          arabicLanguageImamAbuHanifaHadithData:
              arabicLanguageImamAbuHanifaHadithData));
    } catch (e) {
      emit(HadithEditionDataErrorState());
    }
  }

  FutureOr<void> _mapAbuDawudHadithEventToStates(
      FetchAbuDawudHadithDataEvent event,
      Emitter<HadithEditionDataState> emit) async {
    try {
      emit(HadithEditionDataLoadingState());

      HadithEditionDataModel arabicLanguageAbuDawudHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "ara-abudawud.json");

      HadithEditionDataModel englishLanguageAbuDawudHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "eng-abudawud.json");

      HadithEditionDataModel urduLanguageAbuDawudHadithData =
          await hadithEditionApiService.fetchHadithDataOfGivenHadithEdition(
              hadithEditionName: "urd-abudawud.json");

      emit(AbuDawudHadithDataLoadedState(
          urduLanguageAbuDawudHadithData: urduLanguageAbuDawudHadithData,
          englishLanguageAbuDawudHadithData: englishLanguageAbuDawudHadithData,
          arabicLanguageAbuDawudHadithData: arabicLanguageAbuDawudHadithData));
    } catch (e) {
      emit(HadithEditionDataErrorState());
    }
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/arabic_lanuage_hadith_detailed_model.dart';
import 'package:flutter_quran_api_practice/model/translated_language_hadith_detailed_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/hadith_details_api_service.dart';
import 'package:meta/meta.dart';
import 'dart:developer' as developer;

part 'hadith_details_event.dart';
part 'hadith_details_state.dart';

class HadithDetailsBloc extends Bloc<HadithDetailsEvent, HadithDetailsState> {
  // HadithDetailApiService hadithDetailApiService = HadithDetailApiService();

  HadithDetailsBloc() : super(HadithDetailsInitialState()) {
    // print("initial entered........................");
    on<FetchHadithDetailsEvent>(_mapDetailedHadithEventsToStates);
  }

  FutureOr<void> _mapDetailedHadithEventsToStates(
      FetchHadithDetailsEvent event, Emitter<HadithDetailsState> emit) async {
    // print("entereddddddddddddd.................");

    try {
      emit(HadithDetailsLoadingState());

      // print("tryingggggggggggggggggggggg....................");

      HadithDetailApiService hadithDetailApiService = HadithDetailApiService();

      // developer.log("Data is fetched");
      // print("Data is fetched");
      // developer.log("English Data");

      TranslatedLanguageHadithDetailedModel englishLanguagHadithDetails =
          await hadithDetailApiService.fetchEnglishLanuageHadithDetails(
              hadithId: event.hadithId);

      // print(englishLanguagHadithDetails);
      // developer.log("Arabic Data");

      ArabicLanguageHadithDetailModel arabicLanguageHadithDetails =
          await hadithDetailApiService.fetchArabicLanguageHadithDetails(
              hadithId: event.hadithId);
      // print(arabicLanguageHadithDetails);

      // developer.log("Urdu Data");

      TranslatedLanguageHadithDetailedModel urduLaguageHadithDetails =
          await hadithDetailApiService.fetchUrduLanuageHadithDetails(
              hadithId: event.hadithId);

      // developer.log("$urduLaguageHadithDetails");

      // print(urduLaguageHadithDetails);

      // print("Loading entered.....................");

      emit(HadithDetailsLoadedState(
          englishLanguageHadithDetailedModel: englishLanguagHadithDetails,
          urduLanguageHadithDetailedModel: urduLaguageHadithDetails,
          arabicLanguageHadithDetailModel: arabicLanguageHadithDetails));

      developer.log("loaded state emutted");

      print("loaded entered .......................");
    } catch (e) {
      emit(HadithDetailsErrorState());
    }
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_all_categories_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/hadith_all_categories_api_service.dart';
import 'package:meta/meta.dart';

part 'all_hadith_categories_event.dart';
part 'all_hadith_categories_state.dart';

class AllHadithCategoriesBloc
    extends Bloc<AllHadithCategoriesEvent, AllHadithCategoriesState> {
  HadithAllCategoriesApiService hadithAllCategoriesApiService =
      HadithAllCategoriesApiService();
  AllHadithCategoriesBloc() : super(AllHadithCategoriesInitialState()) {
    on<FetchAllHadithCategoriesEvent>(_mapAllHadithCategoriesEventsWithStates);
  }

  FutureOr<void> _mapAllHadithCategoriesEventsWithStates(
      AllHadithCategoriesEvent event,
      Emitter<AllHadithCategoriesState> emit) async {
    try {
      emit(AllHadithCategoriesLoadingState());
      List<HadithAllCategoriesModel> hadithAllCategories =
          await hadithAllCategoriesApiService.fetchAllHadithCategories();
      emit(AllHadithCategoriesLoadedState(
          hadithAllCategories: hadithAllCategories));
    } catch (e) {
      emit(AllHadithCategoriesErrorState());
    }
  }
}

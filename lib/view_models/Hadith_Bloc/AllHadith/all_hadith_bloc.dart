import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/all_hadith_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/all_hadith_api_service.dart';
import 'package:meta/meta.dart';

part 'all_hadith_event.dart';
part 'all_hadith_state.dart';

class AllHadithBloc extends Bloc<AllHadithEvent, AllHadithState> {
  AllHadithApiService allHadithApiService = AllHadithApiService();
  AllHadithBloc() : super(AllHadithInitialState()) {
    print("State before fetched is $state");
    on<FetchAllHadithOfGivenCategoryEvent>(_mapAllHadithEventsToStates);
  }

  FutureOr<void> _mapAllHadithEventsToStates(
      FetchAllHadithOfGivenCategoryEvent event,
      Emitter<AllHadithState> emit) async {
    try {
      emit(AllHadithLoadingState());
      print("State while fetched is $state");

      AllHadithModel allHadith = await allHadithApiService
          .fetchAllHadithOfGivenCategory(categoryId: event.categoryId);

      print("fetched data through block is : ${allHadith.data}");
      print("fetched data length through block is : ${allHadith.data.length}");

      emit(AllHadithLoadedState(allUrduTranslatedHadith: allHadith));
      print("State after fetched is $state");
    } catch (e) {
      emit(AllHadithErrorState());
    }
  }
}

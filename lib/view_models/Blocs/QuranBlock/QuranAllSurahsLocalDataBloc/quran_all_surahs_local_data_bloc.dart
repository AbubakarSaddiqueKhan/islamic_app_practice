import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Quran_Updated/surah.dart';
import 'package:meta/meta.dart';

part 'quran_all_surahs_local_data_event.dart';
part 'quran_all_surahs_local_data_state.dart';

class QuranAllSurahsLocalDataBloc
    extends Bloc<QuranAllSurahsLocalDataEvent, QuranAllSurahsLocalDataState> {
  QuranAllSurahsLocalDataBloc() : super(QuranAllSurahsLocalDataInitialState()) {
    on<fetchAllSurahsOfQuranDataEvent>(
        _mapFetchAllSurahsOfQuranFromLocalDataBaseEventToState);
  }

  FutureOr<void> _mapFetchAllSurahsOfQuranFromLocalDataBaseEventToState(
      fetchAllSurahsOfQuranDataEvent event,
      Emitter<QuranAllSurahsLocalDataState> emit) {
    try {
      emit(QuranAllSurahsLocalDataInitialState());

      emit(QuranAllSurahsLocalDataLoadedState(
          allSurahsDataList: allSurahsDataList));
    } catch (e) {
      emit(QuranAllSurahsLocalDataErrorState());
    }
  }
}

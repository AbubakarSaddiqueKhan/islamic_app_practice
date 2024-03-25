import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/Asma_Ul_Husna_Model/importance_of_asma_ul_husna_model.dart';
import 'package:flutter_quran_api_practice/model/Asma_Ul_Husna_Model/local_asma_ul_husna.dart';
import 'package:meta/meta.dart';

part 'asma_ul_husnaa_event.dart';
part 'asma_ul_husnaa_state.dart';

class AsmaUlHusnaaBloc extends Bloc<AsmaUlHusnaaEvent, AsmaUlHusnaaState> {
  AsmaUlHusnaaBloc() : super(AsmaUlHusnaaInitialState()) {
    on<FetchAsmaUlHusnaa>(_mapAsmaUlHusnaaEventToStates);
  }

  FutureOr<void> _mapAsmaUlHusnaaEventToStates(
      FetchAsmaUlHusnaa event, Emitter<AsmaUlHusnaaState> emit) {
    try {
      emit(AsmaUlHusnaaLoadingState());

      emit(AsmaUlHusnaaLoadedState(
          asmaUlHusnaImportanceInLightOfQuranAndHadithDataList:
              quranicVersesAndHadithListOnAllahNames,
          allAsmaUlHusnaasDataList: allAsmaUlHusnaasDataList));
    } catch (e) {
      emit(AsmaUlHusnaaErrorState());
    }
  }
}

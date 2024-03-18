import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/asma_al_husna_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/islamic_names_api_service.dart/asma_al_husna_api_service.dart';
import 'package:meta/meta.dart';

part 'asma_al_husna_event.dart';
part 'asma_al_husna_state.dart';

class AsmaAlHusnaBloc extends Bloc<AsmaAlHusnaEvent, AsmaAlHusnaState> {
  AsmaAlHusnaBloc() : super(AsmaAlHusnaInitialState()) {
    on<FetchAllAsmaAlHusnasEvent>(_mapAsmaAlHusnasEventsToStates);
  }

  FutureOr<void> _mapAsmaAlHusnasEventsToStates(
      FetchAllAsmaAlHusnasEvent event, Emitter<AsmaAlHusnaState> emit) async {
    AsmaAlHusnaApiService _asmaAlHusnaApiService = AsmaAlHusnaApiService();

    try {
      emit(AsmaAlHusnaLoadingState());
      List<int> indexesList = [];
      for (var currentAsmaAlHusnaNumber = 1;
          currentAsmaAlHusnaNumber <= 99;
          currentAsmaAlHusnaNumber++) {
        indexesList.add(currentAsmaAlHusnaNumber);
      }

      String dataAsString = indexesList.join(',');

      AsmaAlHusnaModel asmaAlHusnaModel =
          await _asmaAlHusnaApiService.asmaAlHusnas(endPoint: dataAsString);

      emit(AsmaAlHusnaLoadedState(asmaAlHusnas: asmaAlHusnaModel));
    } catch (e) {
      emit(AsmaAlHusnaErrorState());
    }
  }
}

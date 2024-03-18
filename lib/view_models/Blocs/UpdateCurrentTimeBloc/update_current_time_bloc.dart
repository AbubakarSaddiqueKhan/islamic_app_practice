import 'dart:async';

import 'dart:developer' as developer;
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'update_current_time_event.dart';
part 'update_current_time_state.dart';

class UpdateCurrentTimeBloc
    extends Bloc<UpdateCurrentTimeEvent, UpdateCurrentTimeState> {
  static int currentHour = 0;
  static int currentMinute = 0;
  static int currentSecond = 0;

  // DateTime currentUpdatedDateTime = DateTime.now();
  UpdateCurrentTimeBloc()
      : super(UpdateCurrentTimeInitialState(dateTime: DateTime.now())) {
    currentUpdatedTime().listen(
      (event) {
        currentHour = event.hour;
        currentMinute = event.minute;
        currentSecond = event.second;

        // developer.log(
        //     "Current time in block is  : $currentHour : $currentMinute : $currentSecond");

        if (currentHour > 12) {
          currentHour = 12 - currentHour;
          if (currentHour < 0) {
            currentHour = currentHour * (-1);
          }
        }

        add(FetchCurrentUpdatedTime());
      },
    );

    on<FetchCurrentUpdatedTime>((event, emit) {
      // developer.log("Fetch event called ............");
      emit(UpdateCurrentTimeLoadedState(
          currentHour: currentHour,
          currentMinute: currentMinute,
          currentSecond: currentSecond));
    });
  }
}

// Stream<DateTime> updateTime() async {
//   while(true){

//   }
// }

// Stream<DateTime> currentDateTime = currentUpdatedTime();

@override
Stream<DateTime> currentUpdatedTime() async* {
  while (true) {
    await Future.delayed(const Duration(seconds: 1));
    yield DateTime.now();
  }
}




      
      // _clockSubscription = Stream<DateTime>.periodic(
      //     Duration(seconds: 1), (tick) => DateTime.now()).listen((time) {
      //   emit(UpdateCurrentTimeLoadedState(dateTime: time));
      // });
      // emit(UpdateCurrentTimeLoadedState(dateTime: currentDateTime));



  // @override
  // Stream<DateTime> mapEventToState(UpdateCurrentTimeState state) async* {
  //   if (state is UpdateCurrentTimeLoadedState) {
  //     yield state.dateTime;
  //   }
  // }

  // @override
  // Future<void> close() {
  //   _clockSubscription.cancel();
  //   return super.close();
  // }

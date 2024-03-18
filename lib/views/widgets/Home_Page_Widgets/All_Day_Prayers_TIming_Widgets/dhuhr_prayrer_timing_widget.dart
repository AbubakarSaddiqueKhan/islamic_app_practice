import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/AllPrayersTimingsOfSingleDay/all_prayers_timings_of_single_day_bloc.dart';

class DhuhrPrayerTimingWidget extends StatelessWidget {
  const DhuhrPrayerTimingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Dhuhr",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: Image.asset(
            "assets/icons/dhuhr.png",
            fit: BoxFit.contain,
          ),
        ),
        // Icon(
        //   Icons.sunny,
        //   color: Colors.white,
        // ),
        BlocBuilder<AllPrayersTImingsOfSingleDayBloc,
            AllPrayersTimingsOfSingleDayState>(
          builder: (context, state) {
            if (state is AllPrayersTimingsOfSingleDayInitialState) {
              print("Initial ..... State");
              return const Text(
                "Waiting ...",
                style: const TextStyle(fontSize: 8, color: Colors.amber),
              );
            } else if (state is AllPrayersTimingsOfSingleDayLoadingState) {
              print("Loading ..... State");
              return const Text(
                "Fetching ...",
                style: const TextStyle(fontSize: 8, color: Colors.green),
              );
            } else if (state is AllPrayersTimingsOfSingleDayErrorState) {
              print("Error ..... State");
              return const Text(
                "Error ...",
                style: const TextStyle(color: Colors.red),
              );
            } else {
              (state as AllPrayersTimingsOfSingleDayLoadedState);
              print("Loaded ..... State ");
              return Text(
                state.allPrayersTimingOfDay.data.timings.Dhuhr,
                style: const TextStyle(color: Colors.white),
              );
            }
          },
        )
        // Text(
        //   "01:45",
        //   style:
        //       TextStyle(color: Colors.white),
        // )
      ],
    );
  }
}

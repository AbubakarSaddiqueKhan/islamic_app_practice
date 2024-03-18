import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/AllPrayersTimingsOfSingleDay/all_prayers_timings_of_single_day_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QiblaDirectionBloc/qibla_direction_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/prayer_timing_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/screens/qibla_direction_main_page_widget.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:developer' as developer;

class FetchUserCurrentLocationLoadedWidget extends StatelessWidget {
  const FetchUserCurrentLocationLoadedWidget(
      {super.key, required this.currentUserPosition});
  final Position currentUserPosition;

  @override
  Widget build(BuildContext context) {
    void navigateToPrayerTimingsPage() {
      context.read<AllPrayersTImingsOfSingleDayBloc>().add(
          FetchAllPrayerTimingOfSingleDayEvent(
              currentUserPosition: currentUserPosition));
    }

    void navigateToQiblaDirectionPage() {
      context.read<QiblaDirectionBloc>().add(
          FetchQiblaDirectionFromCurrentUserLocationEvent(
              userCurrentPosition: currentUserPosition));
    }

    return BlocListener<AllPrayersTImingsOfSingleDayBloc,
        AllPrayersTimingsOfSingleDayState>(
      listener: (context, state) {
        if (state is AllPrayersTimingsOfSingleDayInitialState) {
          developer.log("Initial ...");
        } else if (state is AllPrayersTimingsOfSingleDayLoadingState) {
          developer.log("Loading ...");
        } else if (state is AllPrayersTimingsOfSingleDayErrorState) {
          developer.log("Error  ....");
        } else if (state is AllPrayersTimingsOfSingleDayLoadedState) {
          developer.log("Alhamdulillah ... Navigation Success");
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PrayerTimingMainPageDesign(
                allPrayerTimingsData: state.allPrayersTimingOfDay),
          ));
        }
      },
      child: Center(
          child: BlocListener<QiblaDirectionBloc, QiblaDirectionState>(
        listener: (context, state) {
          if (state is QiblaDirectionInitialState) {
            developer.log("Qibla Initial State");
          } else if (state is QiblaDirectionLoadingState) {
            developer.log("Qibla Loading State");
          } else if (state is QiblaDirectionErrorState) {
            developer.log("Qibla Error State");
          } else if (state is QiblaDirectionLoadedState) {
            developer.log("Alhamdulillah Qibla Direction : ");
            developer.log(state.qiblaDirectionData.data!.direction.toString());
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                    "Qibla Direction is : ${state.qiblaDirectionData.data.direction}")));

            // 29.3967213/71.7478375

            const double kaabaLatitudeValue = 21.4224779;
            const double kaabaLongitudeValue = 39.8251832;

            final double distanceBetweenUserCurrentLocationAndKaaba =
                Geolocator.distanceBetween(
                        currentUserPosition.latitude,
                        currentUserPosition.longitude,
                        kaabaLatitudeValue,
                        kaabaLongitudeValue) *
                    0.001;

            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => QiblaDirectionMainPageDesign(
                distanceBetweenUserCurrentLocationAndKaaba:
                    distanceBetweenUserCurrentLocationAndKaaba,
                qiblaDirectionData: state.qiblaDirectionData,
              ),
            ));
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: navigateToPrayerTimingsPage,
              child: Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    )),
                alignment: Alignment.center,
                child: const Text(
                  "Fetch Prayer Timmings ...",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            InkWell(
              onTap: navigateToQiblaDirectionPage,
              child: Container(
                width: 250,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    )),
                alignment: Alignment.center,
                child: const Text(
                  "Fetch Qiba Direction ...",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

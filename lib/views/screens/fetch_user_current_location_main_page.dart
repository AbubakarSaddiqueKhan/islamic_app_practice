import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/AllPrayersTimingsOfSingleDay/all_prayers_timings_of_single_day_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QiblaDirectionBloc/qibla_direction_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/UserCurrentLocationBloc/user_current_location_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Locations_Based_Screens_Widgets/fetch_user_current_loaction_loading_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Locations_Based_Screens_Widgets/fetch_user_current_location_error_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Locations_Based_Screens_Widgets/fetch_user_current_location_initial_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Locations_Based_Screens_Widgets/fetch_user_cuurent_location_loaded_widget.dart';

class FetchUserCurrentLocationPage extends StatefulWidget {
  const FetchUserCurrentLocationPage({super.key});

  @override
  State<FetchUserCurrentLocationPage> createState() =>
      _FetchUserCurrentLocationPageState();
}

// My qibla direction is : 261.94856858859305
//  261.94856858859305

class _FetchUserCurrentLocationPageState
    extends State<FetchUserCurrentLocationPage> {
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/dark.jpg"),
                fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: BlocBuilder<UserCurrentLocationBloc, UserCurrentLocationState>(
          builder: (context, state) {
            if (state is UserCurrentLocationInitialState) {
              return const FetchUserCurrentLocationInitialWidget();
            } else if (state is UserCurrentLocationLoadingState) {
              return const FetchUserCurrentLocationLoadingWidget();
            } else if (state is UserCurrentLocationLoadedState) {
              return MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => AllPrayersTImingsOfSingleDayBloc(),
                  ),
                  BlocProvider(
                    create: (context) => QiblaDirectionBloc(),
                  ),
                ],
                child: FetchUserCurrentLocationLoadedWidget(
                    currentUserPosition: state.currentPosition),
              );
            } else {
              print("Show snackbar to remove eroor");
              return const FetchUserCurrentLocationErrorWidget();
            }
          },
        ),
      ),
    );
  }
}

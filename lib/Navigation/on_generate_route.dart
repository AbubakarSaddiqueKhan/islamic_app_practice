import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/AddressConversionBloc/address_conversion_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/AllPrayersTimingsOfSingleDay/all_prayers_timings_of_single_day_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Asma_Ul_Husnaa_Bloc/asma_ul_husnaa_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/IslamicDateConversionBloc/date_conversion_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/UpdateCurrentTimeBloc/update_current_time_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/UserCurrentLocationBloc/user_current_location_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/Asma_Al_Husna_Main_Page/asma_al_husnaa_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/screens/Home_Page_Screens/home_page_deisgn.dart';

// Route<dynamic> onGenerateRoute(RouteSettings settings) {
//   switch (settings.name) {
//     case HomePageDesign.pageName:
//       return SlideTransitionPageRoute(
//           page: const HomePageDesign(), settings: settings);

//     default:
//       return SlideTransitionPageRoute(
//           page: const Center(
//         child: Text('404! PAGE NOT FOUND'),
//       ));
//   }
// }

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomePageDesign.pageName:
      return SlideFromCenterLeftTransitionPageRoute(
          page: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => AddressConversionBloc(),
                child: Container(),
              ),
              BlocProvider(
                create: (context) => UserCurrentLocationBloc(),
              ),
              BlocProvider(
                create: (context) => UpdateCurrentTimeBloc(),
              ),
              BlocProvider(
                create: (context) => AllPrayersTImingsOfSingleDayBloc(),
              ),
              BlocProvider(
                create: (context) => DateConversionBloc(),
              ),
            ],
            child: const HomePageDesign(),
          ),
          settings: settings);

    case AsmaUlHusnaMainPageDesign.pageName:
      return SlideFromBottomCenterTransitionPageRoute(
          page: BlocProvider(
            create: (context) => AsmaUlHusnaaBloc(),
            child: const AsmaUlHusnaMainPageDesign(),
          ),
          settings: settings);

    default:
      return MaterialPageRoute(
        builder: (context) {
          return const Center(
            child: Text("Some Thing Went Wrong"),
          );
        },
      );
  }
}

class SlideFromCenterLeftTransitionPageRoute extends PageRouteBuilder {
  SlideFromCenterLeftTransitionPageRoute(
      {required this.page, RouteSettings? settings})
      : super(
          transitionDuration: const Duration(milliseconds: 400),
          reverseTransitionDuration: const Duration(milliseconds: 400),
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: Tween<Offset>(
                    begin: const Offset(1, 0), end: const Offset(0, 0))
                .animate(animation),
            child: page,
          ),
        );
  final Widget page;
}

class SlideFromCenterRightTransitionPageRoute extends PageRouteBuilder {
  SlideFromCenterRightTransitionPageRoute(
      {required this.page, RouteSettings? settings})
      : super(
          transitionDuration: const Duration(milliseconds: 400),
          reverseTransitionDuration: const Duration(milliseconds: 400),
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: Tween<Offset>(
                    begin: const Offset(-1, 0), end: const Offset(0, 0))
                .animate(animation),
            child: page,
          ),
        );
  final Widget page;
}

class SlideFromTopCenterTransitionPageRoute extends PageRouteBuilder {
  SlideFromTopCenterTransitionPageRoute(
      {required this.page, RouteSettings? settings})
      : super(
          transitionDuration: const Duration(milliseconds: 400),
          reverseTransitionDuration: const Duration(milliseconds: 400),
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: Tween<Offset>(
                    begin: const Offset(0, 1), end: const Offset(0, 0))
                .animate(animation),
            child: page,
          ),
        );
  final Widget page;
}

class SlideFromBottomCenterTransitionPageRoute extends PageRouteBuilder {
  SlideFromBottomCenterTransitionPageRoute(
      {required this.page, RouteSettings? settings})
      : super(
          transitionDuration: const Duration(milliseconds: 400),
          reverseTransitionDuration: const Duration(milliseconds: 400),
          settings: settings,
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              SlideTransition(
            position: Tween<Offset>(
                    begin: const Offset(0, 1), end: const Offset(0, 0))
                .animate(animation),
            child: page,
          ),
        );
  final Widget page;
}





// All Provider
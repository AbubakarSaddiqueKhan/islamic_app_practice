import 'package:flutter_quran_api_practice/model/prayers_timings_of_single_day.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';
import 'dart:developer' as developer;

// https://api.aladhan.com/v1/timings/14-03-2024?latitude=29.396801888952872&longitude=-71.74756627745832

class AllPrayersTimingOfDayApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "timings/";

  // https://api.aladhan.com/v1/timings/17-07-2007?latitude=29.396831680889882&longitude=-71.74747169005924

  Future<AllPrayersTimingOfDayModel> fetchAllPrayersTimingOfGivenDay(
      (
        FormattedDate todayFormattedDate,
        double latitudeValueOfUserCurrentLocation,
        double longitudeValueOfUserCurrentLocation
      ) todayDateAndLocation) async {
    FormattedDate formattedDate = todayDateAndLocation.$1;
    String formatCurrentDate =
        "${formattedDate.day}-${formattedDate.month}-${formattedDate.year}";

    String endPoint =
        "$formatCurrentDate?latitude=${todayDateAndLocation.$2}&longitude=${todayDateAndLocation.$3}";

    var map = await fetch(endPoints: endPoint);

    return AllPrayersTimingOfDayModel.fromMap(map);
  }

  // latitude: 24.8614622, longitude: 67.0099388

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://api.aladhan.com/";
}

class FormattedDate {
  final int day;
  final int month;
  final int year;

  const FormattedDate(
      {required this.day, required this.month, required this.year});
}

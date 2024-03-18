import 'package:flutter_quran_api_practice/model/date_conversion_api_model.dart';
import 'package:flutter_quran_api_practice/model/month_conversion_api_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

class MonthConversionApiService extends ApiService {
  // To fetch the converted data of the complete month .
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "v1/gToHCalendar/";

  Future<MonthConversionModel> fetchConvertedDate(
      {required String endPoint}) async {
    var map = await fetch(endPoints: endPoint);
    return MonthConversionModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "http://api.aladhan.com/";
}

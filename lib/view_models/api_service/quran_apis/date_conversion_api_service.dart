import 'package:flutter_quran_api_practice/model/date_conversion_api_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

class DateConversionApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "v1/gToH/";

  Future<DateConversionModel> fetchConvertedDate(
      {required String endPoint}) async {
    var map = await fetch(endPoints: endPoint);
    return DateConversionModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "http://api.aladhan.com/";
}

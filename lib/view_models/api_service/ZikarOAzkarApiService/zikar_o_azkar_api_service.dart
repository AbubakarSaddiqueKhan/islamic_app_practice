import 'package:flutter_quran_api_practice/model/zikar_o_azkar_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

// https://raw.githubusercontent.com/nawafalqari/azkar-api/56df51279ab6eb86dc2f6202c7de26c8948331c1/azkar.json

class ZikarOAzkarApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl =>
      "nawafalqari/azkar-api/56df51279ab6eb86dc2f6202c7de26c8948331c1/azkar.json";

  Future<ZikarOAzkarModel> fetchZikarOAzkarData() async {
    var map = await fetch();
    return ZikarOAzkarModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://raw.githubusercontent.com/";
}

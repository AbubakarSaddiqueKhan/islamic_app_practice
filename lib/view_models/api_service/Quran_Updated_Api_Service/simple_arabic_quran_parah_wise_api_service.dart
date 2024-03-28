import 'package:flutter_quran_api_practice/model/Quran_Updated/simple_arabic_quran_parah_wise.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

// https://api.alquran.cloud/v1/juz/1/quran-simple

class SimpleArabicQuranParahWiseAPiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "v1/juz/";

  Future<SimpleArabicQuranParahWise> fetchSimpleQuranDataOfGivenParah(
      {required int parahNumber}) async {
    String endPoint = "$parahNumber/quran-simple";
    var map = await fetch(endPoints: endPoint);
    return SimpleArabicQuranParahWise.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://api.alquran.cloud/";
}

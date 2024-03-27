import 'package:flutter_quran_api_practice/model/Quran_Updated/simple_quran.dart';
import 'package:flutter_quran_api_practice/model/Quran_Updated/word_by_word_quran.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';
import 'dart:developer' as developer;

// https://api.alquran.cloud/v1/surah/1/quran-simple

class SimpleArabicQuranApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "v1/surah/";

  Future<SimpleArabicQuranModel> fetchSimpleQuranDataOfGivenSurah(
      {required int surahNumber}) async {
    String endPoint = "$surahNumber/quran-simple";
    developer.log("Fetching.............");
    var map = await fetch(endPoints: endPoint);
    developer.log("done.............");

    return SimpleArabicQuranModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://api.alquran.cloud/";
}

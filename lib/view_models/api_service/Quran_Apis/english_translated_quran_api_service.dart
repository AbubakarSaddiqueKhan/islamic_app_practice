import 'package:flutter_quran_api_practice/model/Quran/quran_api_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

class EnglishTranslatedQuranApiService extends ApiService {
  @override
  String get ApiUrl => "en.asad";

  Future<QuranApiModel> fetchEnglishQuran({String endPoints = ""}) async {
    var map = await fetch(endPoints: endPoints);

    return QuranApiModel.fromMap(map);
  }

  Future<List<Surahs>> fetchEnglishQuranAllSurah(
      {String endPoints = ""}) async {
    var map = await fetch(endPoints: endPoints);
    return QuranApiModel.fromMap(map).data.surahs;
  }

  @override
  String get baseUrl => "http://api.alquran.cloud/v1/quran/";
}

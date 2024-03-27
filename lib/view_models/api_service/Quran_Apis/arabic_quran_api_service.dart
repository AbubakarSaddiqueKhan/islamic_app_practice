import 'package:flutter_quran_api_practice/model/Quran/quran_api_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

class ArabicQuranApiService extends ApiService {
  @override
  String get ApiUrl => "quran-uthmani";

  Future<QuranApiModel> fetchArabicQuran({String endPoints = ""}) async {
    var map = await fetch(endPoints: endPoints);

    return QuranApiModel.fromMap(map);
  }

  Future<List<Surahs>> fetchArabicQuranAllSurah({String endPoints = ""}) async {
    var map = await fetch(endPoints: endPoints);
    return QuranApiModel.fromMap(map).data.surahs;
  }

  @override
  String get baseUrl => "http://api.alquran.cloud/v1/quran/";
}

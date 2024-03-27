import 'package:flutter_quran_api_practice/model/Quran/quran_api_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

class MolanaMaududiUrduTranslatedQuranApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "v1/quran/ur.maududi";

  Future<QuranApiModel> fetchMaulanaMududiUrduTranslatedQuran() async {
    var map = await fetch();
    return QuranApiModel.fromMap(map);
  }

  Future<List<Surahs>> fetchUrduTranslatedQuranAllSurah(
      {String endPoints = ""}) async {
    var map = await fetch(endPoints: endPoints);
    return QuranApiModel.fromMap(map).data.surahs;
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://api.alquran.cloud/";
}

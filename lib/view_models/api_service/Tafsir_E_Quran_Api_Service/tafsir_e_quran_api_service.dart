import 'package:flutter_quran_api_practice/model/translated_tafsir_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

// https://cdn.jsdelivr.net/gh/spa5k/tafsir_api@main/tafsir/ur-tafsir-bayan-ul-quran/112.json
// https://cdn.jsdelivr.net/gh/spa5k/tafsir_api@main/tafsir/en-tafisr-ibn-kathir/112.json

class TafsirEQuranApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "gh/spa5k/tafsir_api@main/tafsir/";

  Future<TafsirEQuranModel> fetchQuranTafsirEQuran(
      (String tafsirName, String surahNumber) tafsirEQuranEndPoint) async {
    // ur-tafsir-bayan-ul-quran/112.json
    // en-tafisr-ibn-kathir/112.json

    final String tafsirEndPoint =
        "${tafsirEQuranEndPoint.$1}/${tafsirEQuranEndPoint.$2}.json";
    var map = await fetch(endPoints: tafsirEndPoint);

    return TafsirEQuranModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://cdn.jsdelivr.net/";
}

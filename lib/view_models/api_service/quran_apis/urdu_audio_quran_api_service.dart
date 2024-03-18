import 'package:flutter_quran_api_practice/model/Quran/urdu_Audio_quran_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

class UrduAudioQuranApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "v1/quran/ur.khan";

  Future<UrduAudioQuranModel> fetchUrduAudioQuran() async {
    var map = await fetch();
    return UrduAudioQuranModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://api.alquran.cloud/";
}

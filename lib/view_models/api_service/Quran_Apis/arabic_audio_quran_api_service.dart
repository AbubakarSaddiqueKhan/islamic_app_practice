import 'package:flutter_quran_api_practice/model/Quran/audio_arabic_quran_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

class AudioArabicQuranApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "v1/surah/";

  // End point must be given .

  // 1/ar.abdurrahmaansudais   ==> surah number /ar.abdurrahmaansudais ;

  Future<AudioArabicQuranModel> fetchArabicQuranAudio(
      {required String endPoint}) async {
    var map = await fetch(endPoints: endPoint);
    return AudioArabicQuranModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://api.alquran.cloud/";
}

// https://api.alquran.cloud/v1/surah/1/ar.abdurrahmaansudais
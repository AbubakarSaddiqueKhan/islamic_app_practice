import 'package:flutter_quran_api_practice/model/first_api_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

class FirstApiService extends ApiService {
  // @override
  // String get ApiUrl => "v1/edition";

  Future<FirstApiModel> fetchApiData() async {
    var map = await fetch();
    return FirstApiModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "http://api.alquran.cloud/";

  // tafseer .
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "v1/edition/type/translation";

// // for arabic audio quran .

//   @override
//   // TODO: implement ApiUrl
//   String get ApiUrl => "v1/edition?format=audio&language=ar&type=versebyverse";

// for udu translation .
  // @override
  // String get ApiUrl => "v1/edition/language/ur";
}

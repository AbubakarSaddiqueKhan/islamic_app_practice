import 'package:flutter_quran_api_practice/model/all_hadith_editions_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

class AllHadithEditionsApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "gh/fawazahmed0/hadith-api@1/editions.json";

  Future<AllHadithEditionsModel> fetchAllHadithEditions() async {
    var map = await fetch();
    return AllHadithEditionsModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://cdn.jsdelivr.net/";
}

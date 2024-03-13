import 'package:flutter_quran_api_practice/model/all_hadith_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

class AllHadithApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "api/v1/hadeeths/list/?language=ur&";

  Future<AllHadithModel> fetchAllHadithOfGivenCategory(
      {required String categoryId}) async {
    String endPoint = "category_id=$categoryId&page=1&per_page=2000";
    var map = await fetch(endPoints: endPoint);
    return AllHadithModel.fromMap(map);
  }

  // Future<AllHadithModel> fetchAllHadithOfGivenCategory() async {
  //   String endPoint = "category_id=1&page=1&per_page=2000";
  //   var map = await fetch(endPoints: endPoint);
  //   return AllHadithModel.fromMap(map);
  // }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://hadeethenc.com/";
}

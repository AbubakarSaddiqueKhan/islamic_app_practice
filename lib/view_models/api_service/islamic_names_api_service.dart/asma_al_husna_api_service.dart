import 'package:flutter_quran_api_practice/model/asma_al_husna_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

class AsmaAlHusnaApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "v1/asmaAlHusna/";

  Future<AsmaAlHusnaModel> asmaAlHusnas({required String endPoint}) async {
    var map = await fetch(endPoints: endPoint);
    return AsmaAlHusnaModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "http://api.aladhan.com/";
}

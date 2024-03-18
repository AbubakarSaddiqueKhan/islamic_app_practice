import 'package:flutter_quran_api_practice/model/Hadith/arabic_lanuage_hadith_detailed_model.dart';
import 'package:flutter_quran_api_practice/model/Hadith/translated_language_hadith_detailed_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

class HadithDetailApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "api/v1/hadeeths/one/?language=";

// https://hadeethenc.com/api/v1/hadeeths/one/?language=en&id=5913 ;
// https://hadeethenc.com/api/v1/hadeeths/one/?language=ur&id=5913
// https://hadeethenc.com/api/v1/hadeeths/one/?language=ar&id=5913

  // Future<dynamic> fetchHadithDetailsOfGivenHadithId(
  //     (String languageCode, String hadithId) hadithDataRecord) async {
  //   String endPoint = "${hadithDataRecord.$1} &id=${hadithDataRecord.$2}";
  //   var map = await fetch(endPoints: endPoint);
  //   return TranslatedLanguageHadithDetailedModel.fromMap(map);
  // }

  Future<ArabicLanguageHadithDetailModel> fetchArabicLanguageHadithDetails(
      {required String hadithId}) async {
    String endPoint = "ar&id=$hadithId";
    var map = await fetch(endPoints: endPoint);
    return ArabicLanguageHadithDetailModel.fromMap(map);
  }

  Future<TranslatedLanguageHadithDetailedModel>
      fetchEnglishLanuageHadithDetails({required String hadithId}) async {
    String endPoint = "en&id=$hadithId";
    var map = await fetch(endPoints: endPoint);
    return TranslatedLanguageHadithDetailedModel.fromMap(map);
  }

  Future<TranslatedLanguageHadithDetailedModel> fetchUrduLanuageHadithDetails(
      {required String hadithId}) async {
    String endPoint = "ur&id=$hadithId";
    var map = await fetch(endPoints: endPoint);
    return TranslatedLanguageHadithDetailedModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://hadeethenc.com/";
}

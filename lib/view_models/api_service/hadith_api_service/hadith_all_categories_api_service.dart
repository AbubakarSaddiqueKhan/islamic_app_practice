import 'package:flutter_quran_api_practice/model/hadith_all_categories_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

class HadithAllCategoriesApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "api/v1/categories/list/?language=ur";

  Future<List<HadithAllCategoriesModel>> fetchAllHadithCategories() async {
    List hadithAllCategoriesList = await fetch();
    return hadithAllCategoriesList
        .map((hadithAllCategory) =>
            HadithAllCategoriesModel.fromMap(hadithAllCategory))
        .toList();
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://hadeethenc.com/";
}

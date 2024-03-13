// All hadith editions .

// Simple or edition 1 both have same data so i am only fetching the data of the first one .

// Abu Dawood .
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-abudawud.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/eng-abudawud.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-abudawud1.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-abudawud.json

// Abu Hanifa .

// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-abuhanifa.json

// Bukhari .

// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-bukhari.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-bukhari1.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/eng-bukhari.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-bukhari.json

// Forty Hadith of Shah Waliullah Dehlawi .

// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-dehlawi.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/eng-dehlawi.json

// ibnmajah .

// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-ibnmajah.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-ibnmajah1.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/eng-ibnmajah.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-ibnmajah.json

// Muwatta Malik .

// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-malik.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-malik1.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/eng-malik.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-malik.json

// Sahih Muslim .

// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-muslim.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-muslim1.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/eng-muslim.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-muslim.json

// Sunan nisai .

// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-nasai.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-nasai1.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/eng-nasai.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-nasai.json

// Forty Hadith of an-Nawawi .

// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-nawawi.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/eng-nawawi.json

// Forty Hadith Qudsi .

// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-qudsi.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/eng-qudsi.json

// Jami At Tirmidhi .

// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-tirmidhi.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/ara-tirmidhi1.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/eng-tirmidhi.json
// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/urd-tirmidhi.json

import 'package:flutter_quran_api_practice/model/hadith_edition_data_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/api_service.dart';

//////////////////////////////////////////////////

// https://cdn.jsdelivr.net/gh/fawazahmed0/hadith-api@1/editions/

class HadithEditionApiService extends ApiService {
  @override
  // TODO: implement ApiUrl
  String get ApiUrl => "gh/fawazahmed0/hadith-api@1/editions/";

  // Fetch editionBy giving Edition name .

  Future<HadithEditionDataModel> fetchHadithDataOfGivenHadithEdition(
      {required String hadithEditionName}) async {
    var map = await fetch(endPoints: hadithEditionName);
    return HadithEditionDataModel.fromMap(map);
  }

  @override
  // TODO: implement baseUrl
  String get baseUrl => "https://cdn.jsdelivr.net/";
}

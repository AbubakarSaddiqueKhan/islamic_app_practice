import 'dart:async';

// import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/all_hadith_editions_model.dart';
import 'package:flutter_quran_api_practice/model/all_hadith_model.dart';
import 'package:flutter_quran_api_practice/model/arabic_lanuage_hadith_detailed_model.dart';
import 'package:flutter_quran_api_practice/model/hadith_edition_data_model.dart';
import 'package:flutter_quran_api_practice/model/quran_api_model.dart';
import 'package:flutter_quran_api_practice/model/hadith_all_categories_model.dart';
import 'package:flutter_quran_api_practice/model/translated_language_hadith_detailed_model.dart';
import 'package:flutter_quran_api_practice/view_models/Hadith_Bloc/AllHadith/all_hadith_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Hadith_Bloc/AllHadithCategoriesBloc/all_hadith_categories_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Hadith_Bloc/HadithDetailsBloc/hadith_details_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Hadith_Bloc/HadithEditionDataBloc/hadith_edition_data_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/QuranBlock/quran_api_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/all_hadith_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/all_hadith_editions_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/hadith_details_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/hadith_all_categories_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/hadith_edition_api_service.dart';
// import 'package:flutter_quran_api_practice/model/asma_al_husna_model.dart';
// import 'package:flutter_quran_api_practice/model/audio_arabic_quran_model.dart';
// import 'package:flutter_quran_api_practice/model/date_conversion_api_model.dart';
// import 'package:flutter_quran_api_practice/model/first_api_model.dart';
// import 'package:flutter_quran_api_practice/model/month_conversion_api_model.dart';
// import 'package:flutter_quran_api_practice/model/urdu_Audio_quran_model.dart';
// import 'package:flutter_quran_api_practice/model/urdu_translated_quran_api_model.dart';
// import 'package:flutter_quran_api_practice/view_models/AsmaALHusnaBloc/asma_al_husna_bloc.dart';
// import 'package:flutter_quran_api_practice/view_models/QuranBlock/quran_api_bloc.dart';
// import 'package:flutter_quran_api_practice/view_models/api_service/islamic_names_api_service.dart/asma_al_husna_api_service.dart';
// import 'package:flutter_quran_api_practice/view_models/api_service/quran_apis/arabic_audio_quran_api_service.dart';
// import 'package:flutter_quran_api_practice/view_models/api_service/quran_apis/date_conversion_api_service.dart';
// import 'package:flutter_quran_api_practice/view_models/api_service/quran_apis/first_api_service.dart';
// import 'package:flutter_quran_api_practice/view_models/api_service/quran_apis/month_converted_api_service.dart';
// import 'package:flutter_quran_api_practice/view_models/api_service/quran_apis/urdu_audio_quran_api_service.dart';
// import 'package:flutter_quran_api_practice/view_models/api_service/quran_apis/urdu_translated_quran_api_service.dart';
// import 'package:flutter_quran_api_practice/views/screens/fetch_asma_al_husna_main_page_design.dart.dart';
import 'package:flutter_quran_api_practice/views/screens/fetch_quran_main_page_design.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/hadith_editions_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/screens/hadith_main_page_design.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:developer' as developer;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // List<Surahs> surahs = [];
    GoogleFonts.config.allowRuntimeFetching = false;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      // testing ...
      // home: MyHomePage(title: "Urdu"),

      home: BlocProvider(
        create: (context) => HadithEditionDataBloc(),
        child: const HadithEditionsMainPageDesign(),
      ),

      // Quran ....
      // home: BlocProvider<QuranApiBloc>(
      //   create: (context) => QuranApiBloc(),
      //   child: const FetchQuranApiMainPageDesign(),
      // ),

      // Asma Al Husnaa ...
      // home: BlocProvider<AsmaAlHusnaBloc>(
      //   create: (context) => AsmaAlHusnaBloc(),
      //   child: FetchAsmaALHusnaApiMainPageDesign(),
      // ),

      // hadith ...
      // home: MultiBlocProvider(
      //   providers: [
      //     BlocProvider(
      //       create: (context) => AllHadithCategoriesBloc(),
      //     ),
      //     BlocProvider(
      //       create: (context) {
      //         print("Creating hadith block");
      //         developer.log("Creating hadith bloc");
      //         return AllHadithBloc();
      //       },
      //     ),
      //     BlocProvider(
      //       create: (context) => HadithDetailsBloc(),
      //       child: Container(),
      //     )
      //   ],
      //   child: const HadithMainPageDesign(),
      // ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final player = AudioPlayer();
  // // final player2 = AudioPlayer();

  // Future<void> playAudioFromUrl({required String url}) async {
  //   await player.play(UrlSource(url));
  // }

  // Future<void> playAudioFromUrlSec({required String url}) async {
  //   await player.play(UrlSource(url));
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   player = AudioPlayer();
  // }

  int _counter = 0;
  // final UrduTranslatedQuranApiService _urduTranslatedQuranApiService =
  //     UrduTranslatedQuranApiService();
  // UrduTranslatedQuranApiModel? _urduTranslatedQuranApiModel;
  // void fetchData() async {
  //   for (var surahNo = 1; surahNo <= 114; surahNo++) {
  //     _urduTranslatedQuranApiModel = await _urduTranslatedQuranApiService
  //         .fetchUrduTranslatedQuran(endPoints: surahNo.toString());
  //     developer.log("Data is loading of surah no : $surahNo");
  //     // print(_urduTranslatedQuranApiModel);
  //     // print(
  //     //     "translation is : ${_urduTranslatedQuranApiModel!.result[0].translation}");
  //     // print(
  //     //     "foot notes is : ${_urduTranslatedQuranApiModel!.result[0].footnotes}");
  //   }
  // }

  // void fetchData({required String date}) async {
  //   // FirstApiService firstApiService = FirstApiService();
  //   // FirstApiModel firstApiModel = await firstApiService.fetchApiData();
  //   // developer.log("Data is loading");
  //   // print(firstApiModel);

  //   // Abul A'ala Maududi urdu translation .
  //   // developer.log("Data of molana modudi shb");
  //   // print(firstApiModel.data[6]);

  //   // data of abdurrahmaan As-Sudais audio .
  //   // developer.log("Data of abdurrahmaan As-Sudais");
  //   // print(firstApiModel.data[1]);

  //   // // Current date and time ..

  //   // DateTime currentDateTime = DateTime.now();
  //   // print("current date time is : $currentDateTime");
  //   // print("current day  is : ${currentDateTime.day}");
  //   // print("current month  is : ${currentDateTime.month}");
  //   // print("current year  is : ${currentDateTime.year}");

  //   /////////////////////////////

  //   // Convert date .

  //   // DateConversionApiService dateConversionApiService =
  //   //     DateConversionApiService();
  //   // DateConversionModel dateConversionModel =
  //   //     await dateConversionApiService.fetchConvertedDate(endPoint: date);
  //   // developer.log("Month is converting ...");
  //   // print(dateConversionModel);

  //   ////////

  //   // Convert date .

  //   MonthConversionApiService monthConversionApiService =
  //       MonthConversionApiService();
  //   MonthConversionModel monthConversionModel =
  //       await monthConversionApiService.fetchConvertedDate(endPoint: date);
  //   developer.log("Month is converting ...");
  //   print(monthConversionModel);
  // }

  // // String convertToFomatedDate(
  // //     {required int day, required int month, required int year}) {
  // //   String convertedDate = "$day-$month-$year";
  // //   return convertedDate;
  // // }

  // String convertToFomatedMonth({required int month, required int year}) {
  //   String convertedDate = "$month/$year";
  //   return convertedDate;
  // }

//   void checkData() async {
//     AsmaAlHusnaApiService asmaAlHusnaApiService = AsmaAlHusnaApiService();

//     // List<int> data = [1, 2, 3, 4, 5];
// // String dataAsString = data.join(',');
// // print(dataAsString); in dart
//     List<int> dataList = [];
//     for (var i = 1; i <= 99; i++) {
//       dataList.add(i);
//     }

//     String dataAsString = dataList.join(',');
//     developer.log("Asma Ul Husna list");
//     AsmaAlHusnaModel asmaAlHusnaModel =
//         await asmaAlHusnaApiService.asmaAlHusnas(endPoint: dataAsString);
//     developer
//         .log("Asma Ul Husna list length : ${asmaAlHusnaModel.data.length}");

//     print(asmaAlHusnaModel);
//   }

//   void fetchArabicQuranAudios() async {
//     List<AudioArabicQuranModel> arabicQuranAllAudios = [];
//     AudioArabicQuranApiService audioArabicQuranApiService =
//         AudioArabicQuranApiService();
//     for (var surahNumber = 1; surahNumber <= 114; surahNumber++) {
//       // 1/ar.abdurrahmaansudais
//       String currentEndPoint = "$surahNumber/ar.abdurrahmaansudais";
//       AudioArabicQuranModel arabicQuranModel = await audioArabicQuranApiService
//           .fetchArabicQuranAudio(endPoint: currentEndPoint);
//       arabicQuranAllAudios.add(arabicQuranModel);
//       developer.log(
//           "Alhamdulillah data of audio quran of surah : $surahNumber  is fetched successfully");
//     }
//     developer.log("Insha Allah All audio quran will be fetched successfully");

//     print(arabicQuranAllAudios);
//     developer.log("Alhamdulillah All audio quran is fetched successfully");
//   }

  // void fetchAllAsmaAlHusnaas() async{

  //   AsmaAlHusnaApiService asmaAlHusnaApiService = AsmaAlHusnaApiService();
  //   List<String> asmaAlHusnasNumbers = [];

  //   for (var asmaAlHusnaNumber = 1;
  //       asmaAlHusnaNumber <= 99;
  //       asmaAlHusnaNumber++) {
  //     asmaAlHusnasNumbers.add(asmaAlHusnaNumber.toString());
  //   }

  //   AsmaAlHusnaModel asmaAlHusnaModel = await asmaAlHusnaApiService.asmaAlHusnas(endPoint: asmaAlHusnasNumbers.toString());

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ElevatedButton(
            //     onPressed: () async {
            //       // AllHadithEditionsApiService allHadithEditionsApiService =
            //       //     AllHadithEditionsApiService();
            //       // AllHadithEditionsModel allHadithEditionsModel =
            //       //     await allHadithEditionsApiService
            //       //         .fetchAllHadithEditions();
            //       // developer.log("All Hadith Editions");
            //       // print(allHadithEditionsModel);
            //       // developer.log("Alhamdulillah ");
            //       // developer.log(
            //       //     "Bukhari data  : ${allHadithEditionsModel.bukhari.collection} ");

            //       //////
            //       // HadithAllCategoriesApiService
            //       //     urduTranslatedHadithAllCategoriesApiService =
            //       //     HadithAllCategoriesApiService();
            //       // List<HadithAllCategoriesModel>
            //       //     urduTranslatedHadithAllCategoriesModels =
            //       //     await urduTranslatedHadithAllCategoriesApiService
            //       //         .fetchAllHadithCategories();
            //       // developer.log("Hadith All categories");
            //       // print(urduTranslatedHadithAllCategoriesModels);
            //       // developer.log("Alhamdulillah ");
            //       // developer.log(
            //       //     "Total length is : ${urduTranslatedHadithAllCategoriesModels.length} ");

            //       AllHadithApiService allHadithApiService =
            //           AllHadithApiService();

            //       AllHadithModel allHadithModel = await allHadithApiService
            //           .fetchAllHadithOfGivenCategory(categoryId: "2");

            //       developer.log("All hadith are :");
            //       print(allHadithModel.data);
            //       developer
            //           .log("total hadith are : ${allHadithModel.data.length}");
            //     },
            //     child: Text("Check All Avaiable Hadith")),

            ElevatedButton(
                onPressed: () async {
                  HadithEditionApiService hadithEditionApiService =
                      HadithEditionApiService();

                  HadithEditionDataModel arabicLanguageSahihMuslimHadithData =
                      await hadithEditionApiService
                          .fetchHadithDataOfGivenHadithEdition(
                              hadithEditionName: "ara-muslim.json");

                  HadithEditionDataModel englishLanguageSahihMuslimHadithData =
                      await hadithEditionApiService
                          .fetchHadithDataOfGivenHadithEdition(
                              hadithEditionName: "eng-muslim.json");

                  HadithEditionDataModel urduLanguageSahihMuslimHadithData =
                      await hadithEditionApiService
                          .fetchHadithDataOfGivenHadithEdition(
                              hadithEditionName: "urd-muslim.json");

                  // HadithEditionDataModel arabicLanguageSunanAlTirimhgiData =
                  //     await hadithEditionApiService
                  //         .fetchHadithDataOfGivenHadithEdition(
                  //             hadithEditionName: "ara-tirmidhi.json");

                  // HadithEditionDataModel englishLanguageSunanAlTirimdgiData =
                  //     await hadithEditionApiService
                  //         .fetchHadithDataOfGivenHadithEdition(
                  //             hadithEditionName: "eng-tirmidhi.json");

                  // HadithEditionDataModel urduLanguageSunanAlTirimdgiData =
                  //     await hadithEditionApiService
                  //         .fetchHadithDataOfGivenHadithEdition(
                  //             hadithEditionName: "urd-tirmidhi.json");

                  developer.log("english tirimdi data :  ");

                  print(englishLanguageSahihMuslimHadithData);

                  developer.log("arabic tirimdi data :  ");

                  print(arabicLanguageSahihMuslimHadithData);

                  developer.log("Urdu tirimdi data :  ");
                  developer.log(urduLanguageSahihMuslimHadithData.hadiths.length
                      .toString());
                  print(urduLanguageSahihMuslimHadithData);

                  // AllHadithEditionsApiService allHadithEditionsApiService =
                  //     AllHadithEditionsApiService();
                  // AllHadithEditionsModel allHadithEditionsModel =
                  //     await allHadithEditionsApiService
                  //         .fetchAllHadithEditions();

                  // // developer.log("All hadith Editions :");
                  // // print(allHadithEditionsModel);

                  // developer.log("Abu dawood collections links :");
                  // print(allHadithEditionsModel.abudawud.collection
                  //     .every((element) {
                  //   print(
                  //       "Name :  ${element.name} and Links : ${element.link}");
                  //   developer.log(
                  //       "Name :  ${element.name} and Links : ${element.link}");
                  //   return true;
                  // }));

                  // // HadithDetailApiService hadithDetailApiService =
                  //     HadithDetailApiService();

                  // developer.log("Data is fetched");
                  // print("Data is fetched");
                  // developer.log("English Data");

                  // TranslatedLanguageHadithDetailedModel
                  //     englishLanguagHadithDetails = await hadithDetailApiService
                  //         .fetchEnglishLanuageHadithDetails(hadithId: "5913");

                  // print(englishLanguagHadithDetails);
                  // developer.log("Arabic Data");

                  // ArabicLanguageHadithDetailModel
                  //     arabicLanguageHadithDetailModel =
                  //     await hadithDetailApiService
                  //         .fetchArabicLanguageHadithDetails(hadithId: "5913");
                  // print(arabicLanguageHadithDetailModel);

                  // developer.log("Urdu Data");

                  // TranslatedLanguageHadithDetailedModel
                  //     urduLaguageHadithDetails = await hadithDetailApiService
                  //         .fetchUrduLanuageHadithDetails(hadithId: "5913");

                  // print(urduLaguageHadithDetails);

                  // print(urduLanguageHadithDetails);

                  // developer.log("English Data");

                  // print(englishLanguagHadithDetails);
                  // ArabicLanguageHadithDetailModel arabicLanguageHadithDetail =
                  //     await hadithDetailApiService
                  //         .fetchHadithDetailsOfGivenHadithId(
                  //             arabicLanguageRecord);

                  // TranslatedLanguageHadithDetailedModel
                  //     urduLanguageHadithDetails = await hadithDetailApiService
                  //         .fetchHadithDetailsOfGivenHadithId(
                  //             urduLanguageRecord);

                  // developer.log("Arabic Data");

                  // print(arabicLanguageHadithDetail);
                },
                child: Text("Fetch Tirimdi hadith Data"))
            // ElevatedButton(
            //     onPressed: () async {
            //   UrduAudioQuranApiService urduAudioQuranApiService =
            //       UrduAudioQuranApiService();
            //   UrduAudioQuranModel urduAudioQuranDataModel =
            //       await urduAudioQuranApiService.fetchUrduAudioQuran();
            //   developer.log("Urdu audio quran data is loading");
            //   print(urduAudioQuranDataModel);
            //   developer.log("Urdu audio quran data is loaded successfully");
            //   print(
            //       "Total number of surahs : ${urduAudioQuranDataModel.data.surahs.length}");
            // },
            // child: Text("Urdu Audio"))
            // ElevatedButton(
            //     onPressed: () async {
            //       playAudioFromUrl(
            //           url:
            //               "https://cdn.islamic.network/quran/audio/64/ar.abdurrahmaansudais/292.mp3");
            //       // // Create a player
            //       // final duration = await player.setUrl(// Load a URL
            //       //     'https://cdn.islamic.network/quran/audio/64/ar.abdurrahmaansudais/293.mp3'); // Schemes: (https: | file: | asset: )
            //       // // Play without waiting for completion
            //       // await player.play();
            //     },
            //     child: Text("Play Audio")),
            // SizedBox(
            //   height: 20,
            // ),
            // ElevatedButton(
            //     onPressed: () {
            //       playAudioFromUrl(
            //           url:
            //               "https://cdn.islamic.network/quran/audio/64/ar.abdurrahmaansudais/293.mp3");
            //     },
            //     child: Text("Play Audio 2")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // String tomorrowDate = "11-3-2024";
          DateTime currentDateTime = DateTime.now();
          // String formtedDate = convertToFomatedDate(
          //     day: currentDateTime.day,
          //     month: currentDateTime.month,
          //     year: currentDateTime.year);

          // String formatedMonth = convertToFomatedMonth(
          //     month: currentDateTime.month, year: currentDateTime.year);

          // fetchData(date: formatedMonth);

          // fetchArabicQuranAudios();
          // checkData();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

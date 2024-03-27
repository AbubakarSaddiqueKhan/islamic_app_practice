import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'dart:math' as math;
import 'dart:developer' as developer;

/**
 * 
 * 
 * 
 * 
 */

//
// Text(
//   "‏ ﻿﻿ ﴿Allah﴾",
//   textDirection: TextDirection.rtl,
//   style: TextStyle(
//       fontSize: 32,
//       color: Colors.amber,
//       fontFamily: "Saleem"),
// )

// import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_aa_sajda_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_alaq_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_araf_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_furqan_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_hajj_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_inshiqaaq_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_al_israa_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_an_nahl_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_an_najm_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_an_naml_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_ar_raad_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_faatiha_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_fussilat_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_maryam_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/DataBase/Quran/Simple_Arabic_Quran/Surah_Wise/surah_saad_simple_arabic_quran_data.dart';
import 'package:flutter_quran_api_practice/Navigation/on_generate_route.dart';
import 'package:flutter_quran_api_practice/model/Hadith/all_hadith_editions_model.dart';
import 'package:flutter_quran_api_practice/model/Hadith/all_hadith_model.dart';
import 'package:flutter_quran_api_practice/model/Hadith/arabic_lanuage_hadith_detailed_model.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_edition_data_model.dart';
import 'package:flutter_quran_api_practice/model/Quran_Updated/simple_quran.dart';
import 'package:flutter_quran_api_practice/model/Quran_Updated/word_by_word_quran.dart';
import 'package:flutter_quran_api_practice/model/month_conversion_api_model.dart';
import 'package:flutter_quran_api_practice/model/prayers_timings_of_single_day.dart';
import 'package:flutter_quran_api_practice/model/qibla_direction_model.dart';
import 'package:flutter_quran_api_practice/model/Quran/quran_api_model.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_all_categories_model.dart';
import 'package:flutter_quran_api_practice/model/Hadith/translated_language_hadith_detailed_model.dart';
import 'package:flutter_quran_api_practice/model/translated_tafsir_model.dart';
import 'package:flutter_quran_api_practice/model/zikar_o_azkar_model.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/AddressConversionBloc/address_conversion_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/AllPrayersTimingsOfSingleDay/all_prayers_timings_of_single_day_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/AllHadith/all_hadith_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/AllHadithCategoriesBloc/all_hadith_categories_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/HadithDetailsBloc/hadith_details_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/HadithEditionDataBloc/hadith_edition_data_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/IslamicDateConversionBloc/date_conversion_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlock/quran_api_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/TafsirEQuran/tafsir_e_quran_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/UpdateCurrentTimeBloc/update_current_time_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/UserCurrentLocationBloc/user_current_location_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/ZikarOAzkarBloc/zikar_o_azkar_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/PrayersTimingsApiService/all_prayers_timmings_of_single_day_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/QiblaDirectionApiService/qibla_direction_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/Quran_Updated_Api_Service/simple_quran_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/Quran_Updated_Api_Service/word_by_word_quran_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/Tafsir_E_Quran_Api_Service/tafsir_e_quran_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/ZikarOAzkarApiService/zikar_o_azkar_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/all_hadith_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/all_hadith_editions_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/hadith_details_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/hadith_all_categories_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/hadith_edition_api_service.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/DateConversionsApiService/month_converted_api_service.dart';
import 'package:flutter_quran_api_practice/views/screens/Asma_Al_Husna_Main_Page/asma_al_husnaa_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/prayer_in_%20the_light_of_quran.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/prayer_in_the_light_of_the%20hadith.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/obligations_of_prayer.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/prophetic_way_of_prayer.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/pratice_islam_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/prayer_introduction_page.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Shahda_Screens/shahada_page_new_design.dart';
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
import 'package:flutter_quran_api_practice/views/screens/fetch_user_current_location_main_page.dart';
import 'package:flutter_quran_api_practice/views/screens/hadith_editions_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/screens/hadith_main_page_design.dart';
import 'package:flutter_quran_api_practice/views/screens/Home_Page_Screens/home_page_deisgn.dart';
import 'package:flutter_quran_api_practice/views/screens/tafsir_e_quran_main_screen.dart';
import 'package:flutter_quran_api_practice/views/screens/zikar_o_azkar_main_page_design.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';

import 'dart:developer' as developer;

void main() {
  runApp(const MyApp());
}

class TestingData extends StatelessWidget {
  const TestingData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  print("Clicked");
                  // convertJson();
                },
                child: Text("data")),
          ],
        ),
      ),
    );
  }
}

// class TajweedMark extends StatelessWidget {
//   final String text;

//   TajweedMark({required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return TextSpan(
//       text: text,
//       style: TextStyle(
//         backgroundColor: Colors.yellow, // Example background color for Tajweed marks
//         fontWeight: FontWeight.bold,
//       ),
//     );
//   }
// }

// class TajweedMark extends StatelessWidget {
//   final String text;

//   TajweedMark({required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: TextStyle(
//         backgroundColor:
//             Colors.yellow, // Example background color for Tajweed marks
//         fontWeight: FontWeight.bold,
//       ),
//     );
//   }
// }

// class SymbolizedArabicText extends StatelessWidget {
//   final String arabicText;

//   SymbolizedArabicText({required this.arabicText});

//   @override
//   Widget build(BuildContext context) {
//     List<InlineSpan> textSpans = [];
//     RegExp regex = RegExp(r'\[(.*?)\]');
//     Iterable<Match> matches = regex.allMatches(arabicText);

//     int index = 0;
//     for (Match match in matches) {
//       String symbol = match.group(1)!;
//       String textBeforeSymbol = arabicText.substring(index, match.start);
//       textSpans.add(TextSpan(text: textBeforeSymbol));
//       // Apply specific styling or formatting based on the symbol
//       if (symbol.startsWith('h:')) {
//         // Apply emphasis or pause
//         textSpans.add(TextSpan(
//           text: arabicText.substring(match.start + 4, match.end),
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown),
//         ));
//       } else if (symbol.startsWith('n')) {
//         // Apply elongation
//         textSpans.add(TextSpan(
//           text: arabicText.substring(match.start + 3, match.end),
//           style: TextStyle(fontStyle: FontStyle.italic, color: Colors.pink),
//         ));
//       } else if (symbol.startsWith('p')) {
//         // Apply specific vowel sound
//         textSpans.add(TextSpan(
//           text: arabicText.substring(match.start + 3, match.end),
//           style: TextStyle(color: Colors.red),
//         ));
//       } else if (symbol.startsWith('l')) {
//         // Apply Tajweed marking
//         textSpans.add(TextSpan(
//           text: arabicText.substring(match.start + 2, match.end),
//           style: TextStyle(
//             backgroundColor:
//                 Colors.yellow, // Example background color for Tajweed marks
//             fontWeight: FontWeight.bold,
//           ),
//         )

//             //   TajweedMark(
//             //   text: arabicText.substring(match.start + 2, match.end),
//             // ) as TextSpan
//             );
//       }
//       index = match.end;
//     }

//     textSpans.add(TextSpan(text: arabicText.substring(index)));

//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: RichText(
//         text: TextSpan(children: textSpans),
//       ),
//     );
//   }
// }

// class SymbolizedArabicText extends StatelessWidget {
//   final String arabicText;

//   SymbolizedArabicText({required this.arabicText});

//   @override
//   Widget build(BuildContext context) {
//     List<InlineSpan> textSpans = [];
//     RegExp regex = RegExp(r'\[(.*?)\]');
//     Iterable<Match> matches = regex.allMatches(arabicText);

//     int index = 0;
//     for (Match match in matches) {
//       String symbol = match.group(1)!;
//       String textBeforeSymbol = arabicText.substring(index, match.start);
//       textSpans.add(TextSpan(text: textBeforeSymbol));
//       // Apply specific styling or formatting based on the symbol
//       if (symbol.startsWith('h:')) {
//         // Apply emphasis or pause
//         textSpans.add(TextSpan(
//           text: arabicText.substring(match.start + 4, match.end),
//           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.amber),
//         ));
//       } else if (symbol.startsWith('n')) {
//         // Apply elongation
//         textSpans.add(TextSpan(
//           text: arabicText.substring(match.start + 3, match.end),
//           style: TextStyle(fontStyle: FontStyle.italic, color: Colors.brown),
//         ));
//       } else if (symbol.startsWith('p')) {
//         // Apply specific vowel sound
//         textSpans.add(TextSpan(
//           text: arabicText.substring(match.start + 3, match.end),
//           style: TextStyle(color: Colors.red),
//         ));
//       }
//       index = match.end;
//     }

//     textSpans.add(TextSpan(text: arabicText.substring(index)));

//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: RichText(
//         text: TextSpan(children: textSpans),
//       ),
//     );
//   }
// }

class MyTest extends StatelessWidget {
  const MyTest({super.key});

  @override
  Widget build(BuildContext context) {
    void convertJson(String json) {
      print("Enter ..............");
      String jsonString = '''
      $json
    ''';

      dynamic words = jsonDecode(jsonString);

      List<dynamic> arabicWords =
          words.map((word) => word['word_arabic']).toList() as dynamic;

      List<dynamic> engWords =
          words.map((word) => word['word_transliteration']).toList() as dynamic;

      List<dynamic> urdWords =
          words.map((word) => word['word_translation']).toList() as dynamic;

      print(arabicWords);

      print("Exit ..............");
      developer.log(arabicWords.toString());
      developer.log(engWords.toString());
      developer.log(urdWords.toString());
    }

    void checkLocalData() {
      SimpleArabicQuranModel simpleArabicQuranModel =
          SimpleArabicQuranModel.fromJson(SurahAlAlaq.surahAlAlaqJsonData);

      developer.log(simpleArabicQuranModel.data.name);
      // developer.log(simpleArabicQuranModel.data.ayahs[0].text);
      // developer.log(simpleArabicQuranModel.data.ayahs[1].text);
      // developer.log(simpleArabicQuranModel.data.ayahs[2].text);
      // developer.log(simpleArabicQuranModel.data.ayahs[3].text);
      // developer.log(simpleArabicQuranModel.data.ayahs[4].text);
      // developer.log(simpleArabicQuranModel.data.ayahs[5].text);

      // developer.log(simpleArabicQuranModel.data.ayahs[6].text);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  checkLocalData();
                  // SimpleArabicQuranApiService simpleArabicQuranApiService =
                  //     SimpleArabicQuranApiService();
                  // SimpleArabicQuranModel arabicQuranModel =
                  //     await simpleArabicQuranApiService
                  //         .fetchSimpleQuranDataOfGivenSurah(surahNumber: 2);

                  // developer.log(arabicQuranModel.data.ayahs[284].text);
                  // developer.log(arabicQuranModel.data.ayahs[285].text);

                  // WordByWordQuranApiService wordByWordQuranApiService =
                  //     WordByWordQuranApiService();
                  // WordByWordQuranModel wordByWordQuranModel =
                  //     await wordByWordQuranApiService
                  //         .fetchWordByWordDetailOfQuranData(surahNumber: 2);
                  // print("Fome.............");
                  // // developer.log(wordByWordQuranModel.data.ayahs[1].text);
                  // convertJson(wordByWordQuranModel.data.ayahs[284].text);
                  // // convertJson();
                  // developer.log("Foneeeee..............");
                },
                child: Text("data"))
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 261.94856858859305
  // 	 : Sunan an-Nasa'i 464

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

      initialRoute: HomePageDesign.pageName,
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,

      // home: MyTest(),
      // testing ...

      // home: const AsmaUlHusnaMainPageDesign(),

      // home: const TestingPage(),
      // home: const PrayerIntroductionPage(),
      // home: const PrayerInTheLightOfQuran(),
      // home: const PrayerInTheLightOfHadith(),
      // home: const ObligationsOfPrayerScreen(),
      // home: const PropheticWayOfPrayer(),
      // home: const ShahdaPageDesign(),
      // home: const MyHomePage(title: "Urdu"),
      // home: BlocProvider(
      //   create: (context) => ZikarOAzkarBloc(),
      //   child: const ZikarOAzkarMainPageDesign(),
      // ),

      // home: BlocProvider(
      //   create: (context) => TafsirEQuranBloc(),
      //   child: const TafsirEQuranMainPageDesign(),
      // ),

      // home: const HomePageDesign(),
      // home: BlocProvider(
      //   create: (context) => currentUpdatedTime(),
      //   child: HomePage(),
      // ),

      // home: MultiBlocProvider(
      //   providers: [
      //     BlocProvider(
      //       create: (context) => AddressConversionBloc(),
      //       child: Container(),
      //     ),
      //     BlocProvider(
      //       create: (context) => UserCurrentLocationBloc(),
      //     ),
      //     BlocProvider(
      //       create: (context) => UpdateCurrentTimeBloc(),
      //     ),
      //     BlocProvider(
      //       create: (context) => AllPrayersTImingsOfSingleDayBloc(),
      //     ),
      //     BlocProvider(
      //       create: (context) => DateConversionBloc(),
      //     ),
      //   ],
      //   child: const HomePageDesign(),
      // ),

      // home: BlocProvider(
      //   create: (context) => UserCurrentLocationBloc(),
      //   child: const FetchUserCurrentLocationPage(),
      // ),

      // home: BlocProvider(
      //   create: (context) => HadithEditionDataBloc(),
      //   child: const HadithEditionsMainPageDesign(),
      // ),

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

class TestingPage extends StatefulWidget {
  const TestingPage({super.key});

  @override
  State<TestingPage> createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const PracticeIslamMainPageDesign(),
                  ));
                },
                child: const Text("Practice Islam")),
            // ElevatedButton(
            //     onPressed: () async {
            //       final player = AudioPlayer();
            //       // // final player2 = AudioPlayer();

            //       try {
            //         // Load the audio file from the asset
            //         ByteData data =
            //             await rootBundle.load("assets/second_kalma.mp3");
            //         // Play the audio file
            //         await player.play(BytesSource(data.buffer.asUint8List()));
            //       } catch (e) {
            //         print("Error playing audio: $e");
            //       }
            //     },
            //     child: Text("Play kalma"))
          ],
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   // Determine the current position of the device.
//   ///
//   /// When the location services are not enabled or permissions
//   /// are denied the `Future` will return an error.
//   Future<Position> _determinePosition() async {
//     bool serviceEnabled;
//     LocationPermission permission;

//     // Test if location services are enabled.
//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       developer.log("Turn on Location");
//       ScaffoldMessenger.of(context)
//           .showSnackBar(SnackBar(content: Text("Turn on Location")));
//       // Location services are not enabled don't continue
//       // accessing the position and request users of the
//       // App to enable the location services.
//       // return Future.error('Location services are disabled.');
//     }

//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         // Permissions are denied, next time you could try
//         // requesting permissions again (this is also where
//         // Android's shouldShowRequestPermissionRationale
//         // returned true. According to Android guidelines
//         // your App should show an explanatory UI now.
//         return Future.error('Location permissions are denied');
//       }
//     }

//     if (permission == LocationPermission.deniedForever) {
//       // Permissions are denied forever, handle appropriately.
//       return Future.error(
//           'Location permissions are permanently denied, we cannot request permissions.');
//     }

//     // When we reach here, permissions are granted and we can
//     // continue accessing the position of the device.
//     return await Geolocator.getCurrentPosition();
//   }

//   // final player = AudioPlayer();
//   // // final player2 = AudioPlayer();

//   // Future<void> playAudioFromUrl({required String url}) async {
//   //   await player.play(UrlSource(url));
//   // }

//   // Future<void> playAudioFromUrlSec({required String url}) async {
//   //   await player.play(UrlSource(url));
//   // }

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   player = AudioPlayer();
//   // }

//   int _counter = 0;
//   // final UrduTranslatedQuranApiService _urduTranslatedQuranApiService =
//   //     UrduTranslatedQuranApiService();
//   // UrduTranslatedQuranApiModel? _urduTranslatedQuranApiModel;
//   // void fetchData() async {
//   //   for (var surahNo = 1; surahNo <= 114; surahNo++) {
//   //     _urduTranslatedQuranApiModel = await _urduTranslatedQuranApiService
//   //         .fetchUrduTranslatedQuran(endPoints: surahNo.toString());
//   //     developer.log("Data is loading of surah no : $surahNo");
//   //     // print(_urduTranslatedQuranApiModel);
//   //     // print(
//   //     //     "translation is : ${_urduTranslatedQuranApiModel!.result[0].translation}");
//   //     // print(
//   //     //     "foot notes is : ${_urduTranslatedQuranApiModel!.result[0].footnotes}");
//   //   }
//   // }

//   // void fetchData({required String date}) async {
//   //   // FirstApiService firstApiService = FirstApiService();
//   //   // FirstApiModel firstApiModel = await firstApiService.fetchApiData();
//   //   // developer.log("Data is loading");
//   //   // print(firstApiModel);

//   //   // Abul A'ala Maududi urdu translation .
//   //   // developer.log("Data of molana modudi shb");
//   //   // print(firstApiModel.data[6]);

//   //   // data of abdurrahmaan As-Sudais audio .
//   //   // developer.log("Data of abdurrahmaan As-Sudais");
//   //   // print(firstApiModel.data[1]);

//   //   // // Current date and time ..

//   //   // DateTime currentDateTime = DateTime.now();
//   //   // print("current date time is : $currentDateTime");
//   //   // print("current day  is : ${currentDateTime.day}");
//   //   // print("current month  is : ${currentDateTime.month}");
//   //   // print("current year  is : ${currentDateTime.year}");

//   //   /////////////////////////////

//   //   // Convert date .

//   //   // DateConversionApiService dateConversionApiService =
//   //   //     DateConversionApiService();
//   //   // DateConversionModel dateConversionModel =
//   //   //     await dateConversionApiService.fetchConvertedDate(endPoint: date);
//   //   // developer.log("Month is converting ...");
//   //   // print(dateConversionModel);

//   //   ////////

//   //   // Convert date .

//     MonthConversionApiService monthConversionApiService =
//         MonthConversionApiService();
//     MonthConversionModel monthConversionModel =
//         await monthConversionApiService.fetchConvertedDate(endPoint: date);
//     developer.log("Month is converting ...");
//     print(monthConversionModel);
//   }

//   // // String convertToFomatedDate(
//   // //     {required int day, required int month, required int year}) {
//   // //   String convertedDate = "$day-$month-$year";
//   // //   return convertedDate;
//   // // }

//   // String convertToFomatedMonth({required int month, required int year}) {
//   //   String convertedDate = "$month/$year";
//   //   return convertedDate;
//   // }

// //   void checkData() async {
// //     AsmaAlHusnaApiService asmaAlHusnaApiService = AsmaAlHusnaApiService();

// //     // List<int> data = [1, 2, 3, 4, 5];
// // // String dataAsString = data.join(',');
// // // print(dataAsString); in dart
// //     List<int> dataList = [];
// //     for (var i = 1; i <= 99; i++) {
// //       dataList.add(i);
// //     }

// //     String dataAsString = dataList.join(',');
// //     developer.log("Asma Ul Husna list");
// //     AsmaAlHusnaModel asmaAlHusnaModel =
// //         await asmaAlHusnaApiService.asmaAlHusnas(endPoint: dataAsString);
// //     developer
// //         .log("Asma Ul Husna list length : ${asmaAlHusnaModel.data.length}");

// //     print(asmaAlHusnaModel);
// //   }

// //   void fetchArabicQuranAudios() async {
// //     List<AudioArabicQuranModel> arabicQuranAllAudios = [];
// //     AudioArabicQuranApiService audioArabicQuranApiService =
// //         AudioArabicQuranApiService();
// //     for (var surahNumber = 1; surahNumber <= 114; surahNumber++) {
// //       // 1/ar.abdurrahmaansudais
// //       String currentEndPoint = "$surahNumber/ar.abdurrahmaansudais";
// //       AudioArabicQuranModel arabicQuranModel = await audioArabicQuranApiService
// //           .fetchArabicQuranAudio(endPoint: currentEndPoint);
// //       arabicQuranAllAudios.add(arabicQuranModel);
// //       developer.log(
// //           "Alhamdulillah data of audio quran of surah : $surahNumber  is fetched successfully");
// //     }
// //     developer.log("Insha Allah All audio quran will be fetched successfully");

// //     print(arabicQuranAllAudios);
// //     developer.log("Alhamdulillah All audio quran is fetched successfully");
// //   }

//   // void fetchAllAsmaAlHusnaas() async{

//   //   AsmaAlHusnaApiService asmaAlHusnaApiService = AsmaAlHusnaApiService();
//   //   List<String> asmaAlHusnasNumbers = [];

//   //   for (var asmaAlHusnaNumber = 1;
//   //       asmaAlHusnaNumber <= 99;
//   //       asmaAlHusnaNumber++) {
//   //     asmaAlHusnasNumbers.add(asmaAlHusnaNumber.toString());
//   //   }

//   //   AsmaAlHusnaModel asmaAlHusnaModel = await asmaAlHusnaApiService.asmaAlHusnas(endPoint: asmaAlHusnasNumbers.toString());

//   // }

//   final player = AudioPlayer();
//   // // final player2 = AudioPlayer();

//   Future<void> _playAudioFromAsset({required String audioPath}) async {
//     try {
//       // Load the audio file from the asset
//       ByteData data = await rootBundle.load(audioPath);
//       // Play the audio file
//       await player.play(BytesSource(data.buffer.asUint8List()));
//     } catch (e) {
//       print("Error playing audio: $e");
//     }
//   }

//   // Future<void> playAudioFromAsset({required String url}) async {
//   //   // await player.play('assets/audio/sound.mp3', isLocal: true);
//   //   await player.setSourceAsset(url);
//   //   // await player.setSource(AssetSource(url));
//   //   await player.play(AssetSource(url));
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//                 onPressed: () async {
//                   TafsirEQuranApiService tafsirEQuranApiService =
//                       TafsirEQuranApiService();
//                   // TafsirEQuranModel tafsirEQuranModel =
//                   //     await tafsirEQuranApiService
//                   //         .fetchQuranTafsirEQuran(tafsirEQuranEndPoint);
//                   developer.log("Urdu Tafsir data is fetching");
//                   for (var surahNumber = 1; surahNumber <= 114; surahNumber++) {
//                     var endPoint =
//                         ("en-tafisr-ibn-kathir", surahNumber.toString());
//                     TafsirEQuranModel tafsirEQuranModel =
//                         await tafsirEQuranApiService
//                             .fetchQuranTafsirEQuran(endPoint);

//                     developer.log(
//                         "Alhamdulillah Fetched data of Surah No : $surahNumber");

//                     if (surahNumber == 1) {
//                       developer.log("Surah Fatiha :");

//                       developer.log(tafsirEQuranModel.toString());
//                     }
//                     if (surahNumber == 114) {
//                       developer.log("Surah Naas :");

//                       developer.log(tafsirEQuranModel.toString());
//                     }
//                   }
//                 },
//                 child: Text("Fetch Urdu Tafsir")),
//             SizedBox(
//               height: 30,
//             ),
//             ElevatedButton(
//                 onPressed: () async {
//                   TafsirEQuranApiService tafsirEQuranApiService =
//                       TafsirEQuranApiService();
//                   // TafsirEQuranModel tafsirEQuranModel =
//                   //     await tafsirEQuranApiService
//                   //         .fetchQuranTafsirEQuran(tafsirEQuranEndPoint);
//                   developer.log("Urdu Tafsir data is fetching");
//                   for (var surahNumber = 1; surahNumber <= 114; surahNumber++) {
//                     var endPoint =
//                         ("ur-tafsir-bayan-ul-quran", surahNumber.toString());
//                     TafsirEQuranModel tafsirEQuranModel =
//                         await tafsirEQuranApiService
//                             .fetchQuranTafsirEQuran(endPoint);

//                     developer.log(
//                         "Alhamdulillah Fetched data of Surah No : $surahNumber");

//                     if (surahNumber == 1) {
//                       developer.log("Surah Fatiha :");

//                       developer.log(tafsirEQuranModel.toString());
//                     }
//                     if (surahNumber == 114) {
//                       developer.log("Surah Naas :");

//                       developer.log(tafsirEQuranModel.toString());
//                     }
//                   }
//                 },
//                 child: Text("Fetch English Tafsir"))
//             // ElevatedButton(
//             //     onPressed: () async {},
//             //     child: const Text("Fetch Qibla Direction")),

//             // ElevatedButton(
//             //     onPressed: () async {
//             //       double direction = 261.94856858859305;

//             //       direction.toInt();

//             //       ZikarOAzkarApiService zikarOAzkarApiService =
//             //           ZikarOAzkarApiService();
//             //       ZikarOAzkarModel zikarOAzkarData =
//             //           await zikarOAzkarApiService.fetchZikarOAzkarData();

//             //       developer.log("Zikar O Azkar Data :");
//             //       developer.log(zikarOAzkarData.toString());
//             //     },
//             //     child: const Text("Fetch Zikar O Azkar"))
//             // ElevatedButton(
//             //     onPressed: () {
//             //       // playAudioFromAsset(url: "assets/audio/a1.mp3");
//             //       _playAudioFromAsset(audioPath: "assets/a1.mp3");
//             //     },
//             //     child: const Text("Mishari Rashid Azan")),

//             // ElevatedButton(
//             //     onPressed: () {
//             //       // playAudioFromAsset(url: "assets/a2.mp3");
//             //       _playAudioFromAsset(audioPath: "assets/a2.mp3");
//             //     },
//             //     child: const Text("Muhammad Tareq Azan")),

//             // ElevatedButton(
//             //     onPressed: () {
//             //       // playAudioFromAsset(url: "assets/a3.mp3");
//             //       _playAudioFromAsset(audioPath: "assets/a3.mp3");
//             //     },
//             //     child: const Text("Muhammad Al Ghazali Azan")),
//             // ElevatedButton(
//             //     onPressed: () async {
//             //       // AllHadithEditionsApiService allHadithEditionsApiService =
//             //       //     AllHadithEditionsApiService();
//             //       // AllHadithEditionsModel allHadithEditionsModel =
//             //       //     await allHadithEditionsApiService
//             //       //         .fetchAllHadithEditions();
//             //       // developer.log("All Hadith Editions");
//             //       // print(allHadithEditionsModel);
//             //       // developer.log("Alhamdulillah ");
//             //       // developer.log(
//             //       //     "Bukhari data  : ${allHadithEditionsModel.bukhari.collection} ");

//             //       //////
//             //       // HadithAllCategoriesApiService
//             //       //     urduTranslatedHadithAllCategoriesApiService =
//             //       //     HadithAllCategoriesApiService();
//             //       // List<HadithAllCategoriesModel>
//             //       //     urduTranslatedHadithAllCategoriesModels =
//             //       //     await urduTranslatedHadithAllCategoriesApiService
//             //       //         .fetchAllHadithCategories();
//             //       // developer.log("Hadith All categories");
//             //       // print(urduTranslatedHadithAllCategoriesModels);
//             //       // developer.log("Alhamdulillah ");
//             //       // developer.log(
//             //       //     "Total length is : ${urduTranslatedHadithAllCategoriesModels.length} ");

//             //       AllHadithApiService allHadithApiService =
//             //           AllHadithApiService();

//             //       AllHadithModel allHadithModel = await allHadithApiService
//             //           .fetchAllHadithOfGivenCategory(categoryId: "2");

//             //       developer.log("All hadith are :");
//             //       print(allHadithModel.data);
//             //       developer
//             //           .log("total hadith are : ${allHadithModel.data.length}");
//             //     },
//             //     child: Text("Check All Avaiable Hadith")),

//             // ElevatedButton(
//             //     onPressed: () async {
//             //       HadithEditionApiService hadithEditionApiService =
//             //           HadithEditionApiService();

//             //       HadithEditionDataModel arabicLanguageSahihMuslimHadithData =
//             //           await hadithEditionApiService
//             //               .fetchHadithDataOfGivenHadithEdition(
//             //                   hadithEditionName: "ara-muslim.json");

//             //       HadithEditionDataModel englishLanguageSahihMuslimHadithData =
//             //           await hadithEditionApiService
//             //               .fetchHadithDataOfGivenHadithEdition(
//             //                   hadithEditionName: "eng-muslim.json");

//             //       HadithEditionDataModel urduLanguageSahihMuslimHadithData =
//             //           await hadithEditionApiService
//             //               .fetchHadithDataOfGivenHadithEdition(
//             //                   hadithEditionName: "urd-muslim.json");

//             //       // HadithEditionDataModel arabicLanguageSunanAlTirimhgiData =
//             //       //     await hadithEditionApiService
//             //       //         .fetchHadithDataOfGivenHadithEdition(
//             //       //             hadithEditionName: "ara-tirmidhi.json");

//             //       // HadithEditionDataModel englishLanguageSunanAlTirimdgiData =
//             //       //     await hadithEditionApiService
//             //       //         .fetchHadithDataOfGivenHadithEdition(
//             //       //             hadithEditionName: "eng-tirmidhi.json");

//             //       // HadithEditionDataModel urduLanguageSunanAlTirimdgiData =
//             //       //     await hadithEditionApiService
//             //       //         .fetchHadithDataOfGivenHadithEdition(
//             //       //             hadithEditionName: "urd-tirmidhi.json");

//             //       developer.log("english tirimdi data :  ");

//             //       print(englishLanguageSahihMuslimHadithData);

//             //       developer.log("arabic tirimdi data :  ");

//             //       print(arabicLanguageSahihMuslimHadithData);

//             //       developer.log("Urdu tirimdi data :  ");
//             //       developer.log(urduLanguageSahihMuslimHadithData.hadiths.length
//             //           .toString());
//             //       print(urduLanguageSahihMuslimHadithData);

//             //       // AllHadithEditionsApiService allHadithEditionsApiService =
//             //       //     AllHadithEditionsApiService();
//             //       // AllHadithEditionsModel allHadithEditionsModel =
//             //       //     await allHadithEditionsApiService
//             //       //         .fetchAllHadithEditions();

//             //       // // developer.log("All hadith Editions :");
//             //       // // print(allHadithEditionsModel);

//             //       // developer.log("Abu dawood collections links :");
//             //       // print(allHadithEditionsModel.abudawud.collection
//             //       //     .every((element) {
//             //       //   print(
//             //       //       "Name :  ${element.name} and Links : ${element.link}");
//             //       //   developer.log(
//             //       //       "Name :  ${element.name} and Links : ${element.link}");
//             //       //   return true;
//             //       // }));

//             //       // // HadithDetailApiService hadithDetailApiService =
//             //       //     HadithDetailApiService();

//             //       // developer.log("Data is fetched");
//             //       // print("Data is fetched");
//             //       // developer.log("English Data");

//             //       // TranslatedLanguageHadithDetailedModel
//             //       //     englishLanguagHadithDetails = await hadithDetailApiService
//             //       //         .fetchEnglishLanuageHadithDetails(hadithId: "5913");

//             //       // print(englishLanguagHadithDetails);
//             //       // developer.log("Arabic Data");

//             //       // ArabicLanguageHadithDetailModel
//             //       //     arabicLanguageHadithDetailModel =
//             //       //     await hadithDetailApiService
//             //       //         .fetchArabicLanguageHadithDetails(hadithId: "5913");
//             //       // print(arabicLanguageHadithDetailModel);

//             //       // developer.log("Urdu Data");

//             //       // TranslatedLanguageHadithDetailedModel
//             //       //     urduLaguageHadithDetails = await hadithDetailApiService
//             //       //         .fetchUrduLanuageHadithDetails(hadithId: "5913");

//             //       // print(urduLaguageHadithDetails);

//             //       // print(urduLanguageHadithDetails);

//             //       // developer.log("English Data");

//             //       // print(englishLanguagHadithDetails);
//             //       // ArabicLanguageHadithDetailModel arabicLanguageHadithDetail =
//             //       //     await hadithDetailApiService
//             //       //         .fetchHadithDetailsOfGivenHadithId(
//             //       //             arabicLanguageRecord);

//             //       // TranslatedLanguageHadithDetailedModel
//             //       //     urduLanguageHadithDetails = await hadithDetailApiService
//             //       //         .fetchHadithDetailsOfGivenHadithId(
//             //       //             urduLanguageRecord);

//             //       // developer.log("Arabic Data");

//             //       // print(arabicLanguageHadithDetail);
//             //     },
//             //     child: Text("Fetch Tirimdi hadith Data"))

//             // ElevatedButton(
//             //     onPressed: () async {
//             //   UrduAudioQuranApiService urduAudioQuranApiService =
//             //       UrduAudioQuranApiService();
//             //   UrduAudioQuranModel urduAudioQuranDataModel =
//             //       await urduAudioQuranApiService.fetchUrduAudioQuran();
//             //   developer.log("Urdu audio quran data is loading");
//             //   print(urduAudioQuranDataModel);
//             //   developer.log("Urdu audio quran data is loaded successfully");
//             //   print(
//             //       "Total number of surahs : ${urduAudioQuranDataModel.data.surahs.length}");
//             // },
//             // child: Text("Urdu Audio"))
//             // ElevatedButton(
//             //     onPressed: () async {
//             //       playAudioFromUrl(
//             //           url:
//             //               "https://cdn.islamic.network/quran/audio/64/ar.abdurrahmaansudais/292.mp3");
//             //       // // Create a player
//             //       // final duration = await player.setUrl(// Load a URL
//             //       //     'https://cdn.islamic.network/quran/audio/64/ar.abdurrahmaansudais/293.mp3'); // Schemes: (https: | file: | asset: )
//             //       // // Play without waiting for completion
//             //       // await player.play();
//             //     },
//             //     child: Text("Play Audio")),
//             // SizedBox(
//             //   height: 20,
//             // ),
//             // ElevatedButton(
//             //     onPressed: () {
//             //       playAudioFromUrl(
//             //           url:
//             //               "https://cdn.islamic.network/quran/audio/64/ar.abdurrahmaansudais/293.mp3");
//             //     },
//             //     child: Text("Play Audio 2")),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           Position currentPosition = await _determinePosition();

//           developer.log("Alhamdulillah");
//           developer.log(
//               "Current positions is : ${currentPosition.latitude} + ${currentPosition.longitude}");
//           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//               content: Text(
//                   "Current positions is : ${currentPosition.latitude} + ${currentPosition.longitude}")));
//           // String tomorrowDate = "11-3-2024";
//           DateTime currentDateTime = DateTime.now();

//           const double kaabaLatitude = 21.4225;
//           const double kaabaLongitude = 39.8262;

//           // QiblaDirectionApiService qiblaDirectionApiService =
//           //     QiblaDirectionApiService();

//           // var userRecord =
//           //     (currentPosition.latitude, currentPosition.longitude);
//           // QiblaDirectionModel qiblaDirectionModel =
//           //     await qiblaDirectionApiService
//           //         .fetchQiblaDirectionOfUser(userRecord);

//           // developer.log("Qibla Direction is : ");
//           // developer.log(qiblaDirectionModel.data!.direction.toString());
//           // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//           //     content: Text(
//           //         "Qibla Direction : ${qiblaDirectionModel.data!.direction}")));

//           // AllPrayersTimingOfDayApiService allPrayersTimingOfDayApiService =
//           //     AllPrayersTimingOfDayApiService();

//           // var dateRecord = (
//           //   FormattedDate(
//           //       day: currentDateTime.day,
//           //       month: currentDateTime.month,
//           //       year: currentDateTime.year),
//           //   currentPosition.latitude,
//           //   currentPosition.longitude
//           // );

//           // AllPrayersTimingOfDayModel allPrayersTimingOfDayModel =
//           //     await allPrayersTimingOfDayApiService
//           //         .fetchAllPrayersTimingOfGivenDay(dateRecord);

//           // developer.log("Date of prayer's : ");
//           // print(allPrayersTimingOfDayModel);
//           // developer.log(allPrayersTimingOfDayModel.data.timings.toString());

//           // String formtedDate = convertToFomatedDate(
//           //     day: currentDateTime.day,
//           //     month: currentDateTime.month,
//           //     year: currentDateTime.year);

//           // String formatedMonth = convertToFomatedMonth(
//           //     month: currentDateTime.month, year: currentDateTime.year);

//           // fetchData(date: formatedMonth);

//           // fetchArabicQuranAudios();
//           // checkData();
//         },
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/QuranBlock/quran_api_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Screens_Widgets/fetch_quran_api_initial_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Screens_Widgets/fetch_quran_api_loading_widet.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Screens_Widgets/fetch_quran_error_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Screens_Widgets/fetch_quran_loaded_widget.dart';

class FetchQuranApiMainPageDesign extends StatefulWidget {
  const FetchQuranApiMainPageDesign({super.key});

  @override
  State<FetchQuranApiMainPageDesign> createState() =>
      _FetchQuranApiMainPageDesignState();
}

class _FetchQuranApiMainPageDesignState
    extends State<FetchQuranApiMainPageDesign> {
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/background.jpg",
                ),
                fit: BoxFit.cover)),
        child: Center(
          child: BlocBuilder<QuranApiBloc, QuranApiState>(
            builder: (context, state) {
              if (state is QuranApiInitialState) {
                return const FetchQuranApiInitialWidget();
              } else if (state is QuranApiLoadingState) {
                return const FetchQuranApiLoadingWidget();
              }
              // else if (state
              //     is ListOfSurahUrduTranslatedQuranApiLoadedState) {
              //   return FetchUrduTranslatedQuranSurahsListWidget(
              //       urduTranslatedQuranAllSurahs: state.urduTranslatedSurahs);
              // }
              else if (state is ListOfSurahArabicQuranApiLoadedState) {
                return FetchQuranDataLoadedWidget(
                  surahs: state.surahs,
                  englishTranslatedSurahs: state.englishTranslatedSurahs,
                  urduTranslatedSurahs: state.molanaMaududiUrduTranslatedSurahs,
                  audioArabicQuranAllSurahs: state.audioArabicQuranAllSurahs,
                  urduAudioQuranModel: state.urduAudioQuranAllSurahs,
                );
              } else {
                return const FetchQuranErrorWidget();
              }
            },
          ),
        ),
      ),
    );
  }
}

// Old simple design data .

/**
 * 
 * 
 * 
 * 
//  * Ui 
 * 
 *  ElevatedButton(
                onPressed: () {
                  setState(() {
                    getEnglishTranslatedQuran();
                  });
                },
                child: const Text("English Translated Quran")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    fetchSurahNameList();
                  });
                },
                child: const Text("Fetch Surah Name List"))



//  function's .





  // QuranApiModel? quranApiModel;
  // EnglishQuranApiService englishQuranApiService = EnglishQuranApiService();
  // ArabicQuranApiService arabicQuranApiService = ArabicQuranApiService();

  // void getEnglishTranslatedQuran() async {
  //   quranApiModel = await englishQuranApiService.fetchEnglishQuran();
  //   developer.log("Quran data is loading : ");
  //   // print(quranApiModel);
  //   // print("code : ${quranApiModel!.code}");
  //   // print("editions : ${quranApiModel.data}");
  //   // print("editions : ${quranApiModel.data!.}");
  //   // print("surah : ${quranApiModel.data!.surahs}");
  // }

  // void fetchSurahNameList() async {
  //   quranApiModel = await arabicQuranApiService.fetchArabicQuran();
  //   developer.log("Quran data is loading : ");
  //   // To fetch the list of the surah's .
  //   for (var i = 0; i < quranApiModel!.data.surahs.length; i++) {
  //     print(
  //         "Surah name of surah no : ${quranApiModel!.data.surahs[i].number} is : ${quranApiModel!.data.surahs[i].name} ");
  //   }
  //   // developer.log("Surah List is : ${quranApiModel!.data.surahs[0].number} ");

  //   // print(quranApiModel);
  //   // print("code : ${quranApiModel!.code}");
  //   // print("editions : ${quranApiModel.data}");
  //   // print("editions : ${quranApiModel.data!.}");
  //   // print("surah : ${quranApiModel.data!.surahs}");
  //   developer.log("Alhamdulillah");
  // }

  // void getQuran() async {
  //   quranApiModel = await arabicQuranApiService.fetchArabicQuran();
  //   developer.log("Quran data is loading : ");
  //   // To fetch the list of the surah's .
  //   for (var i = 0; i < quranApiModel!.data.surahs.length; i++) {
  //     print(
  //         "Surah name of surah no : ${quranApiModel!.data.surahs[i].number} is : ${quranApiModel!.data.surahs[i].name} ");
  //   }
  //   // developer.log("Surah List is : ${quranApiModel!.data.surahs[0].number} ");

  //   // print(quranApiModel);
  //   // print("code : ${quranApiModel!.code}");
  //   // print("editions : ${quranApiModel.data}");
  //   // print("editions : ${quranApiModel.data!.}");
  //   // print("surah : ${quranApiModel.data!.surahs}");
  //   developer.log("Alhamdulillah");
  // }







 */

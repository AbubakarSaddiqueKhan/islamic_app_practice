// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_quran_api_practice/view_models/Blocs/AsmaALHusnaBloc/asma_al_husna_bloc.dart';
// import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlock/quran_api_bloc.dart';
// import 'package:flutter_quran_api_practice/views/widgets/Quran_Screens_Widgets/fetch_quran_api_initial_widget.dart';
// import 'package:flutter_quran_api_practice/views/widgets/Quran_Screens_Widgets/fetch_quran_api_loading_widet.dart';
// import 'package:flutter_quran_api_practice/views/widgets/Quran_Screens_Widgets/fetch_quran_error_widget.dart';
// import 'package:flutter_quran_api_practice/views/widgets/Quran_Screens_Widgets/fetch_quran_loaded_widget.dart';

// class FetchAsmaALHusnaApiMainPageDesign extends StatefulWidget {
//   const FetchAsmaALHusnaApiMainPageDesign({super.key});

//   @override
//   State<FetchAsmaALHusnaApiMainPageDesign> createState() =>
//       _FetchAsmaALHusnaApiMainPageDesignState();
// }

// class _FetchAsmaALHusnaApiMainPageDesignState
//     extends State<FetchAsmaALHusnaApiMainPageDesign> {
//   @override
//   Widget build(BuildContext context) {
//     final Size(:width, :height) = MediaQuery.sizeOf(context);
//     return Scaffold(
//       body: Container(
//         width: width,
//         height: height,
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage(
//                   "assets/images/background.jpg",
//                 ),
//                 fit: BoxFit.cover)),
//         child: Center(
//           child: BlocBuilder<AsmaAlHusnaBloc, AsmaAlHusnaState>(
//               builder: (context, state) {
//             if (state is AsmaAlHusnaInitialState) {
//               return ElevatedButton(
//                   onPressed: () {
//                     context
//                         .read<AsmaAlHusnaBloc>()
//                         .add(FetchAllAsmaAlHusnasEvent());
//                   },
//                   child: Text("Fetch All Asma Al Husna"));
//             } else if (state is AsmaAlHusnaLoadingState) {
//               return CircularProgressIndicator();
//             } else if (state is AsmaAlHusnaLoadedState) {
//               return ListView.builder(
//                 itemCount: state.asmaAlHusnas.data.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: EdgeInsets.all(10),
//                     child: Container(
//                       width: width,
//                       height: height * 0.2,
//                       alignment: Alignment.center,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           CircleAvatar(
//                             child: Text(state.asmaAlHusnas.data[index].number
//                                 .toString()),
//                           ),
//                           Column(
//                             children: [
//                               Text(
//                                 "Name : ${state.asmaAlHusnas.data[index].name}",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                               Text(
//                                   "Translation : ${state.asmaAlHusnas.data[index].transliteration}",
//                                   style: TextStyle(color: Colors.white)),
//                               Text(state.asmaAlHusnas.data[index].en.meaning,
//                                   style: TextStyle(color: Colors.white))
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               );
//             } else {
//               return Text("Error Page");
//             }
//           }),
//         ),
//       ),
//     );
//   }
// }

// // Old simple design data .

// /**
//  * 
//  * 
//  * 
//  * 
// //  * Ui 
//  * 
//  *  ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     getEnglishTranslatedQuran();
//                   });
//                 },
//                 child: const Text("English Translated Quran")),
//             ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     fetchSurahNameList();
//                   });
//                 },
//                 child: const Text("Fetch Surah Name List"))



// //  function's .





//   // QuranApiModel? quranApiModel;
//   // EnglishQuranApiService englishQuranApiService = EnglishQuranApiService();
//   // ArabicQuranApiService arabicQuranApiService = ArabicQuranApiService();

//   // void getEnglishTranslatedQuran() async {
//   //   quranApiModel = await englishQuranApiService.fetchEnglishQuran();
//   //   developer.log("Quran data is loading : ");
//   //   // print(quranApiModel);
//   //   // print("code : ${quranApiModel!.code}");
//   //   // print("editions : ${quranApiModel.data}");
//   //   // print("editions : ${quranApiModel.data!.}");
//   //   // print("surah : ${quranApiModel.data!.surahs}");
//   // }

//   // void fetchSurahNameList() async {
//   //   quranApiModel = await arabicQuranApiService.fetchArabicQuran();
//   //   developer.log("Quran data is loading : ");
//   //   // To fetch the list of the surah's .
//   //   for (var i = 0; i < quranApiModel!.data.surahs.length; i++) {
//   //     print(
//   //         "Surah name of surah no : ${quranApiModel!.data.surahs[i].number} is : ${quranApiModel!.data.surahs[i].name} ");
//   //   }
//   //   // developer.log("Surah List is : ${quranApiModel!.data.surahs[0].number} ");

//   //   // print(quranApiModel);
//   //   // print("code : ${quranApiModel!.code}");
//   //   // print("editions : ${quranApiModel.data}");
//   //   // print("editions : ${quranApiModel.data!.}");
//   //   // print("surah : ${quranApiModel.data!.surahs}");
//   //   developer.log("Alhamdulillah");
//   // }

//   // void getQuran() async {
//   //   quranApiModel = await arabicQuranApiService.fetchArabicQuran();
//   //   developer.log("Quran data is loading : ");
//   //   // To fetch the list of the surah's .
//   //   for (var i = 0; i < quranApiModel!.data.surahs.length; i++) {
//   //     print(
//   //         "Surah name of surah no : ${quranApiModel!.data.surahs[i].number} is : ${quranApiModel!.data.surahs[i].name} ");
//   //   }
//   //   // developer.log("Surah List is : ${quranApiModel!.data.surahs[0].number} ");

//   //   // print(quranApiModel);
//   //   // print("code : ${quranApiModel!.code}");
//   //   // print("editions : ${quranApiModel.data}");
//   //   // print("editions : ${quranApiModel.data!.}");
//   //   // print("surah : ${quranApiModel.data!.surahs}");
//   //   developer.log("Alhamdulillah");
//   // }







//  */

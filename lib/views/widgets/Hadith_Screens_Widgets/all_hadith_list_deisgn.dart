import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/all_hadith_model.dart';
import 'package:flutter_quran_api_practice/model/arabic_lanuage_hadith_detailed_model.dart';
import 'package:flutter_quran_api_practice/model/translated_language_hadith_detailed_model.dart';
import 'package:flutter_quran_api_practice/view_models/Hadith_Bloc/AllHadith/all_hadith_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Hadith_Bloc/HadithDetailsBloc/hadith_details_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Hadith_Screens_Widgets/hadith_dtails_page_design.dart';
import 'dart:developer' as developer;

class AllHadithListPageDesign extends StatelessWidget {
  const AllHadithListPageDesign({super.key, required this.data});
  final List<Data> data;

  @override
  Widget build(BuildContext context) {
    HadithDetailsState currentListeningState;
    HadithDetailsState cState =
        BlocProvider.of<HadithDetailsBloc>(context, listen: true).state;
    Future<void> navigateToHadithDetailsPage({required int index}) async {
      print("Clicked on : ${data[index].id} title is : ${data[index].title}");

      context
          .read<HadithDetailsBloc>()
          .add(FetchHadithDetailsEvent(hadithId: data[index].id));

      print("Event added");
    }

    final Size(:width, :height) = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/dark.jpg",
                ),
                fit: BoxFit.cover)),
        child: Center(
            child: BlocListener<HadithDetailsBloc, HadithDetailsState>(
          listener: (context, state) {
            if (state is HadithDetailsInitialState) {
              developer.log("Initial .................... State");
            } else if (state is HadithDetailsLoadingState) {
              developer.log("Loading .................... State");
            } else if (state is HadithDetailsLoadedState) {
              developer.log("Alhamdulillah");
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => HadithDetailPageDesign(
                    englishLanguageHadithDetail:
                        state.englishLanguageHadithDetailedModel,
                    urduLanguageHadithDetail:
                        state.urduLanguageHadithDetailedModel,
                    arabicLanguageHadithDetail:
                        state.arabicLanguageHadithDetailModel),
              ));
            } else {
              developer.log("Eroorrrr .................... State");
            }
          },
          child: SizedBox(
            width: width,
            height: height,
            child: ListView.builder(
              // itemCount: data.length,
              itemCount: data.length,

              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 2, bottom: 2),
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        )),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5, right: 5, top: 5, bottom: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              data[index].title,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Amiri",
                                  fontSize: 18),
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              onTap: () async {
                                await navigateToHadithDetailsPage(index: index);

                                // context.watch<HadithDetailsBloc>().state;

                                Future.delayed(
                                  Duration(seconds: 1),
                                  () {
                                    developer.log(
                                        "Watching state is .............. $cState");
                                  },
                                );

                                HadithDetailsState currentHadithDetailState =
                                    context.read<HadithDetailsBloc>().state;
                                // if (cState is HadithDetailsLoadedState) {
                                //   Future.delayed(
                                //     const Duration(seconds: 3),
                                //     () {
                                //       developer.log("Finaaly naviagted");
                                //       print("navigate................");

                                // Navigator.of(context)
                                //     .push(MaterialPageRoute(
                                //   builder: (context) => HadithDetailPageDesign(
                                //       englishLanguageHadithDetail:
                                //           currentHadithDetailState
                                //               .englishLanguageHadithDetailedModel,
                                //       urduLanguageHadithDetail:
                                //           currentHadithDetailState
                                //               .urduLanguageHadithDetailedModel,
                                //       arabicLanguageHadithDetail:
                                //           currentHadithDetailState
                                //               .arabicLanguageHadithDetailModel),
                                // ));
                                //     },
                                //   );
                                // }
                              },
                              child: const Text(
                                "Read more ...",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Amiri",
                                    fontSize: 16),
                                textDirection: TextDirection.ltr,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        )),
      ),
    );
  }
}

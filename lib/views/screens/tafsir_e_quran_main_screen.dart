import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/TafsirEQuran/tafsir_e_quran_bloc.dart';
import 'package:flutter_quran_api_practice/views/screens/english_translated_tafsir_detailed_page_design.dart';
import 'package:flutter_quran_api_practice/views/screens/urdu_translated_tafsir_detail_page.dart';

class TafsirEQuranMainPageDesign extends StatelessWidget {
  const TafsirEQuranMainPageDesign({super.key});

  @override
  Widget build(BuildContext context) {
    void fetchUrduTafsir() async {
      context.read<TafsirEQuranBloc>().add(FetchUrduTranslatedTafsirEQuran());
    }

    void fetchEnglishTafsir() async {
      context
          .read<TafsirEQuranBloc>()
          .add(FetchEnglishTranslatedTafsirEQuran());
    }

    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return BlocListener<TafsirEQuranBloc, TafsirEQuranState>(
      listener: (context, state) {
        if (state is TafsirEQuranInitialState) {
          developer.log("initial ......");
        } else if (state is TafsirEQuranLoadingState) {
          developer.log("loading .....");
        } else if (state is TafsirEQuranErrorState) {
          developer.log("Erorr ..........");
        } else if (state is UrduTafsirEQuranLoadedState) {
          developer.log("loaded state .......");

          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => UrduTranslatedTafsirDetailedPage(
              tafsirEQuranData: state.tafsirEQuran[0],
            ),
          ));
        } else if (state is EnglishTafsirEQuranLoadedState) {
          developer.log("loaded state .......");

          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => EnglishTranslatedTafsirDetailedPage(
              tafsirEQuranData: state.tafsirEQuran[0],
            ),
          ));
          developer.log("loaded state .......");
        }
      },
      child: Scaffold(
          body: Container(
              width: width,
              height: height,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/dark.jpg"),
                      fit: BoxFit.cover)),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () => fetchUrduTafsir(),
                    child: Container(
                      width: 300,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )),
                      alignment: Alignment.center,
                      child: const Text(
                        "Fetch Urdu Tafsir E Quran",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => fetchEnglishTafsir(),
                    child: Container(
                      width: 300,
                      height: 70,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )),
                      alignment: Alignment.center,
                      child: const Text(
                        "Fetch English Tafsir E Quran",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ))),
    );
  }
}

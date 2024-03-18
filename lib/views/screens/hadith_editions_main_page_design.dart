import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/HadithEditionDataBloc/hadith_edition_data_bloc.dart';
import 'dart:developer' as developer;

import 'package:flutter_quran_api_practice/views/screens/all_hadith_of_edition_deisgn_page.dart';

class HadithEditionsMainPageDesign extends StatefulWidget {
  const HadithEditionsMainPageDesign({super.key});

  @override
  State<HadithEditionsMainPageDesign> createState() =>
      _HadithEditionsMainPageDesignState();
}

const List<String> editions = <String>[
  "Shahih Bukhari",
  "Shahih Muslim",
  "Sunan al-Nasa'i",
  "Sunan Abu Dawood",
  "Jami al-Tirmidhi",
  "Sunan ibn Majah",
  "Muwatta Imam Malik",
  "Hadith Qudsi",
  "Hadith Nawawi",
  "Imam Abu Hanifa",
  "Shah Waliullah Dehlawi "
];

class _HadithEditionsMainPageDesignState
    extends State<HadithEditionsMainPageDesign> {
  @override
  Widget build(BuildContext context) {
    void fetchDataOfGivenEdition({required int index}) {
      switch (index) {
        case 0:
          context
              .read<HadithEditionDataBloc>()
              .add(FetchSahihBukhariHadithDataEvent());
          break;
        case 1:
          context
              .read<HadithEditionDataBloc>()
              .add(FetchSahihMuslimHadithDataEvent());
          break;

        case 2:
          context
              .read<HadithEditionDataBloc>()
              .add(FetchHadithNisaiDataEvent());
          break;
        case 3:
          context
              .read<HadithEditionDataBloc>()
              .add(FetchAbuDawudHadithDataEvent());
          break;

/////
        ///

        case 4:
          context
              .read<HadithEditionDataBloc>()
              .add(FetchSunanAlTirmidhiHadithDataEvent());
          break;
        case 5:
          context
              .read<HadithEditionDataBloc>()
              .add(FetchIbnMajahHadithDataEvent());
          break;

        case 6:
          context
              .read<HadithEditionDataBloc>()
              .add(FetchMutaImamMalikHadithDataEvent());
          break;
        case 7:
          context
              .read<HadithEditionDataBloc>()
              .add(FetchHadithQudsiDataEvent());
          break;

        //
        case 8:
          context
              .read<HadithEditionDataBloc>()
              .add(FetchNawaiHadithDataEvent());
          break;

        case 9:
          context
              .read<HadithEditionDataBloc>()
              .add(FetchImamAbuHanifaHadithDataEvent());
          break;
        case 10:
          context
              .read<HadithEditionDataBloc>()
              .add(FetchShahWaliullahDehlawiHadithDataEvent());
          break;

        default:
      }
    }

    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
        body: BlocListener<HadithEditionDataBloc, HadithEditionDataState>(
      listener: (context, state) {
        if (state is HadithEditionDataInitialState) {
          developer.log("initial state");
        } else if (state is HadithEditionDataLoadingState) {
          developer.log("Loading state");
        } else if (state is HadithEditionDataErrorState) {
          developer.log("Error state");
        } else if (state is SunanAlTirmidhiHadithDataLoadedState) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return AllHadithOfEditionDesignPage(
                arabicHadithData: state.arabicLanguageSunanAlTirimdhiData,
                englishHadithData: state.englishLanguageSunanAlTirimdhiData,
                urduHadithData: state.urduLanguageSunanAlTirimdhiData,
              );
            },
          ));
        } else if (state is HadithQudsiDataLoadedState) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return AllHadithOfEditionDesignPage(
                arabicHadithData: state.arabicLanguagehadithQudsiData,
                englishHadithData: state.englishLanguageHadithQudsiData,
              );
            },
          ));
        } else if (state is NawaiHadithDataLoadedState) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return AllHadithOfEditionDesignPage(
                arabicHadithData: state.arabicLanguageNawaiHadithData,
                englishHadithData: state.englishLanguageNawaiHadithData,
              );
            },
          ));
        } else if (state is HadithNisaiDataLoadedState) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return AllHadithOfEditionDesignPage(
                arabicHadithData: state.arabicLanguageHadithNisaiData,
                englishHadithData: state.englishLanguageHadithNisaiData,
                urduHadithData: state.urduLanguageHadithNisaiData,
              );
            },
          ));
        } else if (state is SahihMuslimHadithDataLoadedState) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return AllHadithOfEditionDesignPage(
                arabicHadithData: state.arabicLanguageSahihMuslimHadithData,
                englishHadithData: state.englishLanguageSahihMuslimHadithData,
                urduHadithData: state.urduLanguageSahihMuslimHadithData,
              );
            },
          ));
        } else if (state is MutaImamMalikHadithDataLoadedState) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return AllHadithOfEditionDesignPage(
                arabicHadithData: state.arabicLanguageMutaImamMalikHadithData,
                englishHadithData: state.englishLanguageMutaImamMalikHadithData,
                urduHadithData: state.urduLanguageMutaImamMalikHadithData,
              );
            },
          ));
        } else if (state is IbnMajahHadithDataLoadedState) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return AllHadithOfEditionDesignPage(
                arabicHadithData: state.arabicLanguageIbnMajahHadithData,
                englishHadithData: state.englishLanguageIbnMajahHadithData,
                urduHadithData: state.urduLanguageIbnMajahHadithData,
              );
            },
          ));
        } else if (state is ShahWaliullahDehlawiHadithDataLoadedState) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return AllHadithOfEditionDesignPage(
                arabicHadithData:
                    state.arabicLanguageShahWaliullahDehlawiHadithData,
                englishHadithData:
                    state.englishLanguageShahWaliullahDehlawiHadithData,
              );
            },
          ));
        } else if (state is SahihBukhariHadithDataLoadedState) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return AllHadithOfEditionDesignPage(
                arabicHadithData: state.arabicLanguageSahihBukhariHadithData,
                englishHadithData: state.englishLanguageSahihBukhariHadithData,
                urduHadithData: state.urduLanguageSahihBukhariHadithData,
              );
            },
          ));
        } else if (state is ImamAbuHanifaHadithDataLoadedState) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return AllHadithOfEditionDesignPage(
                arabicHadithData: state.arabicLanguageImamAbuHanifaHadithData,
              );
            },
          ));
        } else if (state is AbuDawudHadithDataLoadedState) {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return AllHadithOfEditionDesignPage(
                arabicHadithData: state.arabicLanguageAbuDawudHadithData,
                englishHadithData: state.englishLanguageAbuDawudHadithData,
                urduHadithData: state.urduLanguageAbuDawudHadithData,
              );
            },
          ));
        }
      },
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/dark.jpg"),
                fit: BoxFit.cover)),
        child: ListView.builder(
          itemCount: editions.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
              child: InkWell(
                onTap: () {
                  print("clicked on :${editions[index]}");
                  fetchDataOfGivenEdition(index: index);
                },
                child: Container(
                  width: width,
                  height: height * 0.1,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      )),
                  alignment: Alignment.center,
                  child: Text(
                    editions[index],
                    style: const TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                        fontFamily: "Archivo"),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ));
  }
}

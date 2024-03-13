import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Hadith_Bloc/AllHadith/all_hadith_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Hadith_Bloc/AllHadithCategoriesBloc/all_hadith_categories_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Hadith_Bloc/HadithDetailsBloc/hadith_details_bloc.dart';
import 'package:flutter_quran_api_practice/views/widgets/Hadith_Screens_Widgets/hadith_page_error_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Hadith_Screens_Widgets/hadith_page_initial_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Hadith_Screens_Widgets/hadith_page_loaded_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Hadith_Screens_Widgets/hadith_page_loading_widget.dart';

class HadithMainPageDesign extends StatefulWidget {
  const HadithMainPageDesign({super.key});

  @override
  State<HadithMainPageDesign> createState() => _HadithMainPageDesignState();
}

class _HadithMainPageDesignState extends State<HadithMainPageDesign> {
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Hadith Main Page"),
      //   centerTitle: true,
      // ),
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/dark.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: BlocBuilder<AllHadithCategoriesBloc, AllHadithCategoriesState>(
            builder: (context, state) {
              print("Current state is : $state");
              if (state is AllHadithCategoriesInitialState) {
                return const HaidthPageInitialWidget();
              } else if (state is AllHadithCategoriesLoadingState) {
                return const HadithPageLoadingWidget();
              } else if (state is AllHadithCategoriesLoadedState) {
                return HadithPageLoadedWidget(
                    hadithCategories: state.hadithAllCategories);
              } else {
                return const HadithPageErrorWidget();
              }
            },
          ),
        ),
      ),
    );
  }
}

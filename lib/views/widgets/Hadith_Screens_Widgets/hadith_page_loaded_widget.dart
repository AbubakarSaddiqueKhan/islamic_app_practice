import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/all_hadith_model.dart';
import 'package:flutter_quran_api_practice/model/hadith_all_categories_model.dart';
import 'package:flutter_quran_api_practice/view_models/Hadith_Bloc/AllHadith/all_hadith_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Hadith_Bloc/HadithDetailsBloc/hadith_details_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/hadith_api_service/all_hadith_api_service.dart';
import 'package:flutter_quran_api_practice/views/widgets/Hadith_Screens_Widgets/all_hadith_list_deisgn.dart';
import 'dart:developer' as developer;

class HadithPageLoadedWidget extends StatelessWidget {
  const HadithPageLoadedWidget({super.key, required this.hadithCategories});

  final List<HadithAllCategoriesModel> hadithCategories;

  @override
  Widget build(BuildContext context) {
    Future<void> navigateToHadithListPage({required int index}) async {
      context.read<AllHadithBloc>().add(FetchAllHadithOfGivenCategoryEvent(
          categoryId: hadithCategories[index].id));
      print("Event added");

      print(
          "Recent hadith bloc state is  with read .................. : ${context.read<AllHadithBloc>().state}");

      // AllHadithApiService allHadithApiService = AllHadithApiService();

      // AllHadithModel allHadithModel =
      //     await allHadithApiService.fetchAllHadithOfGivenCategory();

      // print("fetched data is : ");
      // print(allHadithModel.data);
      // print("data length is : ${allHadithModel.data.length} ");
    }

    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return ListView.builder(
      itemCount: hadithCategories.length,
      itemBuilder: (context, index) {
        return BlocListener<AllHadithBloc, AllHadithState>(
          listener: (context, state) {
            if (state is AllHadithInitialState) {
              developer.log("All hadith Initial Page");
            } else if (state is AllHadithLoadingState) {
              developer.log("All hadith Loading Page");
            } else if (state is AllHadithLoadedState) {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BlocProvider(
                  create: (context) => HadithDetailsBloc(),
                  child: AllHadithListPageDesign(
                      data: state.allUrduTranslatedHadith.data),
                ),
              ));
            } else {
              developer.log("All hadith Error Page");
            }
          },
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 2, bottom: 2, right: 10),
            child: InkWell(
              onTap: () async {
                print("Clicked on : ${hadithCategories[index].title}");
                await navigateToHadithListPage(index: index);
                print(
                    "Recent hadith bloc state is  with  inside read method  .................. : ${context.read<AllHadithBloc>().state}");
              },
              child: Container(
                width: width,
                height: height * 0.1,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    )),
                alignment: Alignment.center,
                child: Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      hadithCategories[index].title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Amiri",
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                )),
              ),
            ),
          ),
        );
      },
    );
  }
}

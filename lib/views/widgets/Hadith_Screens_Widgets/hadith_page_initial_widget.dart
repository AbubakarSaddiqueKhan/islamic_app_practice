import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/AllHadithCategoriesBloc/all_hadith_categories_bloc.dart';

class HaidthPageInitialWidget extends StatelessWidget {
  const HaidthPageInitialWidget({super.key});

  @override
  Widget build(BuildContext context) {
    void fetchHadithCategories() {
      context
          .read<AllHadithCategoriesBloc>()
          .add(FetchAllHadithCategoriesEvent());
    }

    return InkWell(
      onTap: fetchHadithCategories,
      child: Container(
        width: 250,
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
          "Fetch Hadith Categories",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

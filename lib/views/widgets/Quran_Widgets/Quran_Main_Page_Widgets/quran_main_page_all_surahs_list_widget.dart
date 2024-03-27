import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Quran_Updated/surah.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Main_Page_Widgets/quran_main_page_surah_widget.dart';

class AllSurahsOfQuranWidgetsList extends StatelessWidget {
  const AllSurahsOfQuranWidgetsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      itemCount: allSurahsDataList.length,
      itemBuilder: (context, index) =>
          QuranMainPageSurahWidget(surah: allSurahsDataList[index]),
    ));
  }
}

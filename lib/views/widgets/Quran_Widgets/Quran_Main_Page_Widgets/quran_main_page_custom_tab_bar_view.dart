import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Asma_Ul_Husna_Model/local_asma_ul_husna.dart';
import 'package:flutter_quran_api_practice/model/Quran_Updated/surah.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Main_Page_Widgets/quran_main_page_all_parah_widgets_list.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Main_Page_Widgets/quran_main_page_all_surahs_list_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Main_Page_Widgets/quran_main_page_surah_widget.dart';

class QuranMainPageCustomTabBarView extends StatelessWidget {
  const QuranMainPageCustomTabBarView({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: const [
          AllSurahsOfQuranWidgetsList(),
          QuranMainPageAllParahWidgetsList()
        ],
      ),
    );
  }
}

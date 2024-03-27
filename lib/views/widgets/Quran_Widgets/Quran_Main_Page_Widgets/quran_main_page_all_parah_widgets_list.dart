import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Quran_Updated/parah.dart';
import 'package:flutter_quran_api_practice/views/widgets/Quran_Widgets/Quran_Main_Page_Widgets/quran_main_page_parah_widget.dart';

class QuranMainPageAllParahWidgetsList extends StatelessWidget {
  const QuranMainPageAllParahWidgetsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: allParahDataList.length,
      itemBuilder: (context, index) =>
          QuranMainPageParahWidget(parah: allParahDataList[index]),
    );
  }
}

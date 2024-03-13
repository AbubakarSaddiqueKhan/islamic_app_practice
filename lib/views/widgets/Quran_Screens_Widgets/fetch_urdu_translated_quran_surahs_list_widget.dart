// import 'package:flutter/material.dart';
// import 'package:flutter_quran_api_practice/model/urdu_translated_quran_api_model.dart';
// import 'package:flutter_quran_api_practice/views/widgets/urdu_translated_quran_custom_list_tile_widget.dart';

// class FetchUrduTranslatedQuranSurahsListWidget extends StatelessWidget {
//   const FetchUrduTranslatedQuranSurahsListWidget(
//       {super.key, required this.urduTranslatedQuranAllSurahs});
//   final List<UrduTranslatedQuranApiModel> urduTranslatedQuranAllSurahs;

//   @override
//   Widget build(BuildContext context) {
//     final Size(:width, :height) = MediaQuery.sizeOf(context);
//     return Center(
//       child: ListView.builder(
//         itemCount: urduTranslatedQuranAllSurahs.length,
//         itemBuilder: (context, index) {
//           return UrduTranslatedQuranSurahListTile(
//               index: index,
//               urduTranslatedQuranApiModel: urduTranslatedQuranAllSurahs[index]);
//         },
//       ),
//     );
//   }
// }

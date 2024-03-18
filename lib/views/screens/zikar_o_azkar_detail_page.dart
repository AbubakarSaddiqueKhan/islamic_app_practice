// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_quran_api_practice/view_models/Blocs/ZikarOAzkarBloc/zikar_o_azkar_bloc.dart';
// import 'package:flutter_quran_api_practice/views/widgets/Zikar_O_Azkar_Screens_Widgets/zikar_o_azkar_page_error_widget.dart';
// import 'package:flutter_quran_api_practice/views/widgets/Zikar_O_Azkar_Screens_Widgets/zikar_o_azkar_page_initial_widget.dart';
// import 'package:flutter_quran_api_practice/views/widgets/Zikar_O_Azkar_Screens_Widgets/zikar_o_azkar_page_loaded_widget.dart';
// import 'package:flutter_quran_api_practice/views/widgets/Zikar_O_Azkar_Screens_Widgets/zikar_o_azkar_page_loading_widget.dart';

// class ZikarOAzkarDetailedPage extends StatelessWidget {
//   const ZikarOAzkarDetailedPage({super.key, required this.index});

//   final int index;

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<ZikarOAzkarBloc, ZikarOAzkarState>(
//       builder: (context, state) {
//         if (state is ZikarOAzkarInitialState) {
//           return const ZikarOAzkarPageInitialWidget();
//         } else if (state is ZikarOAzkarLoadingState) {
//           return const ZikarOAzkarPageLoadingWidget();
//         } else if (state is ZikarOAzkarLoadedState) {
//           return ZikarOAzkarPageLoadedWidget(
//               index: index, zikarOAzkarData: state.zikarOAzkars);
//         } else {
//           return const ZikarOAzkarPageErrorWidget();
//         }
//       },
//     );
//   }
// }

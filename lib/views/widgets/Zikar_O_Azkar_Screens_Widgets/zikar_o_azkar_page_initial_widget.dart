// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_quran_api_practice/view_models/Blocs/Hadith_Bloc/AllHadithCategoriesBloc/all_hadith_categories_bloc.dart';
// import 'package:flutter_quran_api_practice/view_models/Blocs/ZikarOAzkarBloc/zikar_o_azkar_bloc.dart';

// class ZikarOAzkarPageInitialWidget extends StatelessWidget {
//   const ZikarOAzkarPageInitialWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     void fetchHadithCategories() {
//       context.read<ZikarOAzkarBloc>().add(FetchZikarOAzkarsEvent());
//     }

//     return InkWell(
//       onTap: fetchHadithCategories,
//       child: Container(
//         width: 300,
//         height: 70,
//         decoration: BoxDecoration(
//             color: Colors.white.withOpacity(0.15),
//             borderRadius: BorderRadius.circular(20),
//             border: Border.all(
//               color: Colors.white,
//               width: 1,
//             )),
//         alignment: Alignment.center,
//         child: const Text(
//           "Fetch Zikar O Azkar Data",
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//     );
//   }
// }

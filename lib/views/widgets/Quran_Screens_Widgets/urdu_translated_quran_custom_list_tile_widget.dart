// import 'package:flutter/material.dart';
// import 'package:flutter_quran_api_practice/model/urdu_translated_quran_api_model.dart';

// class UrduTranslatedQuranSurahListTile extends StatelessWidget {
//   const UrduTranslatedQuranSurahListTile({
//     super.key,
//     required this.index,
//     required this.urduTranslatedQuranApiModel,
//   });
//   final UrduTranslatedQuranApiModel urduTranslatedQuranApiModel;
//   final int index;

//   @override
//   Widget build(BuildContext context) {
//     void navigateToSurahDetailPage(
//         {required UrduTranslatedQuranApiModel urduTranslatedQuranApiModel}) {
//       print("clicked on surah no : $index");
//       Navigator.of(context).push(MaterialPageRoute(
//         builder: (context) {
//           return SizedBox.shrink();
//           // return SurahDetailedPage(
//           //   surah: surahs[index],
//           //   englishTranslatedSurah: englishTranslatedSurahs[index],
//           // );
//         },
//       ));
//     }

//     final Size(:width, :height) = MediaQuery.sizeOf(context);
//     return Padding(
//       padding: const EdgeInsets.only(top: 3, left: 10, right: 10, bottom: 2),
//       child: InkWell(
//         onTap: () => navigateToSurahDetailPage(
//             urduTranslatedQuranApiModel: urduTranslatedQuranApiModel),
//         child: Container(
//           width: width,
//           height: 100,
//           decoration: BoxDecoration(
//               color: Colors.white.withOpacity(0.15),
//               borderRadius: BorderRadius.circular(20),
//               border: Border.all(
//                 color: Colors.white,
//                 width: 1,
//               )),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Expanded(
//               //     flex: 60,
//               //     child: Column(
//               //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               //       crossAxisAlignment: CrossAxisAlignment.center,
//               //       children: [
//               //         Expanded(
//               //           child: Row(
//               //             mainAxisAlignment: MainAxisAlignment.start,
//               //             crossAxisAlignment: CrossAxisAlignment.center,
//               //             children: [
//               //               const SizedBox(
//               //                 width: 10,
//               //               ),
//               //               Text(
//               //                 "${surahs[index].number.toString()}. ",
                            //   style: const TextStyle(
                            //       fontFamily: "Archivo",
                            //       color: Colors.white,
                            //       fontSize: 18),
                            // ),
//               //               Text(
//               //                 surahs[index].englishName,
//               //                 style: const TextStyle(
//               //                     fontFamily: "Merienda",
//               //                     color: Colors.white,
//               //                     fontSize: 19),
//               //               ),
//               //             ],
//               //           ),
//               //         ),
//               //         Expanded(
//               //           child: Row(
//               //             mainAxisAlignment: MainAxisAlignment.start,
//               //             crossAxisAlignment: CrossAxisAlignment.center,
//               //             children: [
//               //               const SizedBox(
//               //                 width: 10,
//               //               ),
//               //               Text(
//               //                 surahs[index].revelationType,
//               //                 style: const TextStyle(
//               //                     fontFamily: "Khand",
//               //                     color: Colors.white,
//               //                     fontWeight: FontWeight.bold,
//               //                     fontSize: 20),
//               //               ),
//               //               const SizedBox(
//               //                 width: 10,
//               //               ),
//               //               Text(
//               //                 "Verses : ${surahs[index].ayahs.length.toString()}",
//               //                 style: const TextStyle(
//               //                     fontFamily: "Archivo",
//               //                     color: Colors.white,
//               //                     fontSize: 18),
//               //               ),
//               //             ],
//               //           ),
//               //         )
//               //       ],
//               //     )),
//               Expanded(
//                 flex: 40,
//                 child: Align(
//                   alignment: AlignmentDirectional.centerEnd,
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 15),
//                     child: Text(
//                       "Surah NO : ${index + 1} , Total No of Ayah's : ${urduTranslatedQuranApiModel.result.length}",
//                       textDirection: TextDirection.rtl,
//                       // style: GoogleFonts.amiri(color: Colors.white, fontSize: 24),
//                       style: const TextStyle(
//                           fontFamily: "Amiri",
//                           color: Colors.white,
//                           fontSize: 24),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



// // Old design code .

// /**
//  * 
//  * 
//  * 
//         ....
//         child: Container(
//           width: width,
//           height: 100,
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.blue.shade300),
//           alignment: Alignment.center,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Expanded(
//                   flex: 60,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Expanded(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "${surahs[index].number.toString()}. ",
//                               style: const TextStyle(
//                                   fontFamily: "Archivo",
//                                   color: Colors.white,
//                                   fontSize: 18),
//                             ),
//                             Text(
//                               surahs[index].englishName,
//                               style: const TextStyle(
//                                   fontFamily: "Merienda",
//                                   color: Colors.white,
//                                   fontSize: 19),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Expanded(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               surahs[index].revelationType,
//                               style: const TextStyle(
//                                   fontFamily: "Khand",
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 20),
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "Verses : ${surahs[index].ayahs.length.toString()}",
//                               style: const TextStyle(
//                                   fontFamily: "Archivo",
//                                   color: Colors.white,
//                                   fontSize: 18),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   )),
//               Expanded(
//                 flex: 40,
//                 child: Align(
//                   alignment: AlignmentDirectional.centerEnd,
//                   child: Padding(
//                     padding: const EdgeInsets.only(right: 15),
//                     child: Text(
//                       surahs[index].name,
//                       // style: GoogleFonts.amiri(color: Colors.white, fontSize: 24),
//                       style: const TextStyle(
//                           fontFamily: "Amiri",
//                           color: Colors.white,
//                           fontSize: 24),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),




//  */
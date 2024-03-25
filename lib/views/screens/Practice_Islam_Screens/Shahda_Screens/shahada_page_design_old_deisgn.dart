// import 'dart:typed_data';

// import 'package:audioplayers/audioplayers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Shahada_Screen_Widgets/kalma_widget_deisgn.dart';
// import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Shahada_Screen_Widgets/one_of_god_hadith_widget.dart';
// import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Shahada_Screen_Widgets/quranic_verse_widget_design.dart';

// class ShahadaPageDesign extends StatelessWidget {
//   const ShahadaPageDesign({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final Size(:width, :height) = MediaQuery.sizeOf(context);
//     return Scaffold(
//       body: Container(
//         width: width,
//         height: height,
//         decoration: const BoxDecoration(
//             image: DecorationImage(
//                 image: AssetImage(
//                   "assets/images/dark.jpg",
//                 ),
//                 fit: BoxFit.cover)),
//         child: const SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.all(10.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(
//                   height: 35,
//                 ),
//                 Text(
//                   "شہادت",
//                   textDirection: TextDirection.rtl,
//                   style: TextStyle(
//                       fontFamily: "Amiri", color: Colors.white, fontSize: 26),
//                 ),
//                 SizedBox(
//                   height: 5,
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(10.0),
//                   child: Text(
//                       "\"May God forgive me and guide me about any signs that have been misinterpreted in this study and elsewhere. May He always guide us to a better understanding of His deep scriptures so that we can purify ourselves and increase our knowledge.\"",
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           fontFamily: "Archivo",
//                           color: Colors.lime,
//                           fontSize: 16)),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 AllKalmaWidgets(),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Text(
//                   "توحید",
//                   textDirection: TextDirection.rtl,
//                   style: TextStyle(
//                       fontFamily: "Amiri", color: Colors.white, fontSize: 26),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 QuranicVersesWidgets(),
//                 SizedBox(
//                   height: 15,
//                 ),
//                 OnenessOfGodHadithWidgets()
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }




// // Old Design .

// /**
//  * 
//  *  //
//  * 
//  * 
//  *                    /////////////////////   All six Kalma   /////////////////////////////////

//                 Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.15),
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         color: Colors.white,
//                         width: 1,
//                       )),
//                   alignment: Alignment.center,
//                   child: Padding(
//                     padding:
//                         const EdgeInsets.only(left: 10, right: 10, bottom: 10),
//                     child: Column(
//                       children: [
//                         Align(
//                           alignment: Alignment.centerRight,
//                           child: Padding(
//                             padding: const EdgeInsets.only(right: 5),
//                             child: IconButton(
//                               icon: const Icon(Icons.volume_up_rounded),
//                               onPressed: () async {
//                                 await _playAudioFromAsset(
//                                     audioPath: allSixIslamicKalmas[1]
//                                         .islamicKalmaAudioUrlPath);
//                               },
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           allSixIslamicKalmas[1].islamicKalmaUrduName,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.green),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[1].islamicKalmaEnglishName,
//                           textDirection: TextDirection.ltr,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.cyan),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[1].islamicKalmaArabicLanguageText,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.white),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[1].islamicKalmaUrduLanguageText,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.green),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[1]
//                               .islamicKalmaEnglishLanguageText,
//                           textDirection: TextDirection.ltr,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 19,
//                               color: Colors.cyan),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 //

//                 Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.15),
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         color: Colors.white,
//                         width: 1,
//                       )),
//                   alignment: Alignment.center,
//                   child: Padding(
//                     padding:
//                         const EdgeInsets.only(left: 10, right: 10, bottom: 10),
//                     child: Column(
//                       children: [
//                         Align(
//                           alignment: Alignment.centerRight,
//                           child: Padding(
//                             padding: const EdgeInsets.only(right: 5),
//                             child: IconButton(
//                               icon: const Icon(Icons.volume_up_rounded),
//                               onPressed: () async {
//                                 await _playAudioFromAsset(
//                                     audioPath: allSixIslamicKalmas[2]
//                                         .islamicKalmaAudioUrlPath);
//                               },
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           allSixIslamicKalmas[2].islamicKalmaUrduName,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.green),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[2].islamicKalmaEnglishName,
//                           textDirection: TextDirection.ltr,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.cyan),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[2].islamicKalmaArabicLanguageText,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.white),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[2].islamicKalmaUrduLanguageText,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.green),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[2]
//                               .islamicKalmaEnglishLanguageText,
//                           textDirection: TextDirection.ltr,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 19,
//                               color: Colors.cyan),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 //

//                 Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.15),
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         color: Colors.white,
//                         width: 1,
//                       )),
//                   alignment: Alignment.center,
//                   child: Padding(
//                     padding:
//                         const EdgeInsets.only(left: 10, right: 10, bottom: 10),
//                     child: Column(
//                       children: [
//                         Align(
//                           alignment: Alignment.centerRight,
//                           child: Padding(
//                             padding: const EdgeInsets.only(right: 5),
//                             child: IconButton(
//                               icon: const Icon(Icons.volume_up_rounded),
//                               onPressed: () async {
//                                 await _playAudioFromAsset(
//                                     audioPath: allSixIslamicKalmas[3]
//                                         .islamicKalmaAudioUrlPath);
//                               },
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           allSixIslamicKalmas[3].islamicKalmaUrduName,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.green),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[3].islamicKalmaEnglishName,
//                           textDirection: TextDirection.ltr,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.cyan),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[3].islamicKalmaArabicLanguageText,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.white),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[3].islamicKalmaUrduLanguageText,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.green),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[3]
//                               .islamicKalmaEnglishLanguageText,
//                           textDirection: TextDirection.ltr,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 19,
//                               color: Colors.cyan),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 //

//                 Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.15),
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         color: Colors.white,
//                         width: 1,
//                       )),
//                   alignment: Alignment.center,
//                   child: Padding(
//                     padding:
//                         const EdgeInsets.only(left: 10, right: 10, bottom: 10),
//                     child: Column(
//                       children: [
//                         Align(
//                           alignment: Alignment.centerRight,
//                           child: Padding(
//                             padding: const EdgeInsets.only(right: 5),
//                             child: IconButton(
//                               icon: const Icon(Icons.volume_up_rounded),
//                               onPressed: () async {
//                                 await _playAudioFromAsset(
//                                     audioPath: allSixIslamicKalmas[4]
//                                         .islamicKalmaAudioUrlPath);
//                               },
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           allSixIslamicKalmas[4].islamicKalmaUrduName,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.green),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[4].islamicKalmaEnglishName,
//                           textDirection: TextDirection.ltr,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.cyan),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[4].islamicKalmaArabicLanguageText,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.white),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[4].islamicKalmaUrduLanguageText,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.green),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[4]
//                               .islamicKalmaEnglishLanguageText,
//                           textDirection: TextDirection.ltr,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 19,
//                               color: Colors.cyan),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 //

//                 Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white.withOpacity(0.15),
//                       borderRadius: BorderRadius.circular(20),
//                       border: Border.all(
//                         color: Colors.white,
//                         width: 1,
//                       )),
//                   alignment: Alignment.center,
//                   child: Padding(
//                     padding:
//                         const EdgeInsets.only(left: 10, right: 10, bottom: 10),
//                     child: Column(
//                       children: [
//                         Align(
//                           alignment: Alignment.centerRight,
//                           child: Padding(
//                             padding: const EdgeInsets.only(right: 5),
//                             child: IconButton(
//                               icon: const Icon(Icons.volume_up_rounded),
//                               onPressed: () async {
//                                 await _playAudioFromAsset(
//                                     audioPath: allSixIslamicKalmas[5]
//                                         .islamicKalmaAudioUrlPath);
//                               },
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           allSixIslamicKalmas[5].islamicKalmaUrduName,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.green),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[5].islamicKalmaEnglishName,
//                           textDirection: TextDirection.ltr,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.cyan),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[5].islamicKalmaArabicLanguageText,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.white),
//                         ),
//                         const SizedBox(
//                           height: 15,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[5].islamicKalmaUrduLanguageText,
//                           textDirection: TextDirection.rtl,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 22,
//                               color: Colors.green),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Text(
//                           allSixIslamicKalmas[5]
//                               .islamicKalmaEnglishLanguageText,
//                           textDirection: TextDirection.ltr,
//                           style: const TextStyle(
//                               fontFamily: "Amiri",
//                               fontSize: 19,
//                               color: Colors.cyan),
//                         )
//                       ],
//                     ),
//                   ),
//                 ),



//                 /////////////////////////////  Old Quran Design  //////////////////////////////////
//                 ///
                

//                 Text("~ 1 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         // مَا ٱتَّخَذَ ٱللَّهُ مِن وَلَدٍ وَمَا كَانَ مَعَهُۥ مِنْ إِلَٰهٍ إِذًا لَّذَهَبَ كُلُّ إِلَٰهٍۭبِمَا خَلَقَ وَلَعَلَا بَعْضُهُمْ عَلَىٰ بَعْضٍ سُبْحَٰنَ ٱللَّهِ عَمَّا يَصِفُونَ
//                         // قُلۡ اِنَّ صَلَاتِىۡ وَنُسُكِىۡ وَ مَحۡيَاىَ وَمَمَاتِىۡ لِلّٰهِ رَبِّ الۡعٰلَمِيۡنَۙ‏ ﻿﻿ ﴿6:162﴾‏
//                         Text(
//                             "مَا ٱتَّخَذَ ٱللَّهُ مِن وَلَدٍ وَمَا كَانَ مَعَهُۥ مِنْ إِلَٰهٍ إِذًا لَّذَهَبَ كُلُّ إِلَٰهٍۭبِمَا خَلَقَ وَلَعَلَا بَعْضُهُمْ عَلَىٰ بَعْضٍ سُبْحَٰنَ ٱللَّهِ عَمَّا يَصِفُونَ‏ ﻿﻿ ﴿23:91﴾‏",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "نہ تو اللہ نے کسی کو بیٹا بنایا اور نہ اس کے ساتھ اور کوئی معبود ہے، ورنہ ہر معبود اپنی مخلوق کو لئے لئے پھرتا اور ہر ایک دوسرے پر چڑھ دوڑتا۔ جو اوصاف یہ بتلاتے ہیں ان سے اللہ پاک (اور بےنیاز) ہے",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Allah has not taken any son, nor has there ever been with Him any deity. [If there had been], then each deity would have taken what it created, and some of them would have sought to overcome others. Exalted is Allah above what they describe [concerning Him].",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 15,
//                         ),

//                         Text("~ 2 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),

//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "شَهِدَ اللّٰهُ اَنَّهٗ لَاۤ اِلٰهَ اِلَّا هُوَۙ وَالۡمَلٰٓـئِكَةُ وَاُولُوا الۡعِلۡمِ قَآئِمًا ۢ بِالۡقِسۡطِ​ؕ لَاۤ اِلٰهَ اِلَّا هُوَ الۡعَزِيۡزُ الۡحَكِيۡمُؕ‏ ﻿﻿ ﴿3:18﴾",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "اللہ تعالیٰ، فرشتے اور اہل علم اس بات کی گواہی دیتے ہیں کہ اللہ کے سوا کوئی معبود نہیں اور وه عدل کو قائم رکھنے واﻻ ہے، اس غالب اور حکمت والے کے سوا کوئی عبادت کے ﻻئق نہیں",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Allah witnesses that there is no deity except Him, and [so do] the angels and those of knowledge - [that He is] maintaining [creation] in justice. There is no deity except Him, the Exalted in Might, the Wise.",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),

//                         SizedBox(
//                           height: 15,
//                         ),

//                         Text("~  3 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         //////

//                         Text(
//                             "إِنَّهُمۡ كَانُوٓاْ إِذَا قِيلَ لَهُمۡ لَآ إِلَٰهَ إِلَّا ٱللَّهُ يَسۡتَكۡبِرُونَ‏ ﻿﻿ ﴿37:35﴾",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "یہ وه (لوگ) ہیں کہ جب ان سے کہا جاتا ہے کہ اللہ کے سوا کوئی معبود نہیں تو یہ سرکشی کرتے تھے",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Indeed they, when it was said to them, 'There is no deity but Allah ,' were arrogant",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 15,
//                         ),

//                         Text("~ 4 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "فَٱعْلَمْ أَنَّهُۥ لَآ إِلَـٰهَ إِلَّا ٱللَّهُ وَٱسْتَغْفِرْ لِذَنۢبِكَ وَلِلْمُؤْمِنِينَ وَٱلْمُؤْمِنَـٰتِ ۗ وَٱللَّهُ يَعْلَمُ مُتَقَلَّبَكُمْ وَمَثْوَىٰكُمْ ‏ ﻿﻿ ﴿47:19﴾",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "سو (اے نبی!) آپ یقین کر لیں کہ اللہ کے سوا کوئی معبود نہیں اور اپنے گناہوں کی بخشش مانگا کریں اور مومن مردوں اور مومن عورتوں کے حق میں بھی، اللہ تم لوگوں کی آمد ورفت کی اور رہنے سہنے کی جگہ کو خوب جانتا ہے",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "So know, [O Muhammad], that there is no deity except Allah and ask forgiveness for your sin and for the believing men and believing women. And Allah knows of your movement and your resting place.",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 15,
//                         ),

//                         Text("~ 5 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "۞ وَٱعْبُدُوا۟ ٱللَّهَ وَلَا تُشْرِكُوا۟ بِهِۦ شَيْـًۭٔا ۖ وَبِٱلْوَٰلِدَيْنِ إِحْسَـٰنًۭا وَبِذِى ٱلْقُرْبَىٰ وَٱلْيَتَـٰمَىٰ وَٱلْمَسَـٰكِينِ وَٱلْجَارِ ذِى ٱلْقُرْبَىٰ وَٱلْجَارِ ٱلْجُنُبِ وَٱلصَّاحِبِ بِٱلْجَنۢبِ وَٱبْنِ ٱلسَّبِيلِ وَمَا مَلَكَتْ أَيْمَـٰنُكُمْ ۗ إِنَّ ٱللَّهَ لَا يُحِبُّ مَن كَانَ مُخْتَالًۭا فَخُورًا ٣٦‏ ﻿﻿ ﴿4:36﴾",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "اور اللہ تعالیٰ کی عبادت کرو اور اس کے ساتھ کسی کو شریک نہ کرو اور ماں باپ کے ساتھ سلوک واحسان کرو اور رشتہ داروں سے اور یتیموں سے اور مسکینوں سے اور قرابت دار ہمسایہ سے اور اجنبی ہمسایہ سے اور پہلو کے ساتھی سے اور راه کے مسافر سے اور ان سے جن کے مالک تمہارے ہاتھ ہیں، (غلام کنیز) یقیناً اللہ تعالیٰ تکبر کرنے والوں اور شیخی خوروں کو پسند نہیں فرماتا",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Worship Allah and associate nothing with Him, and to parents do good, and to relatives, orphans, the needy, the near neighbor, the neighbor farther away, the companion at your side, the traveler, and those whom your right hands possess. Indeed, Allah does not like those who are self-deluding and boastful.",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 15,
//                         ),

//                         Text("~ 6 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "قُلۡ اِنَّ صَلَاتِىۡ وَنُسُكِىۡ وَ مَحۡيَاىَ وَمَمَاتِىۡ لِلّٰهِ رَبِّ الۡعٰلَمِيۡنَۙ‏ ﻿﻿ ﴿6:162﴾‏",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "آپ فرما دیجئے کہ بالیقین میری نماز اور میری ساری عبادت اور میرا جینا اور میرا مرنا یہ سب خالص اللہ ہی کا ہے جو سارے جہان کا مالک ہے",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Surely my Prayer, all my acts of worship, 143 and my living and my dying are for Allah alone, the Lord of the whole universe.",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         ////
//                         ///
//                         ///
//                         ///...
//                         Text("~ 7 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "لَا شَرِيكَ لَهُۥ ۖ وَبِذَٰلِكَ أُمِرْتُ وَأَنَا۠ أَوَّلُ ٱلْمُسْلِمِينَ ‏ ﻿﻿ ﴿6:163﴾‏",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "اس کا کوئی شریک نہیں اور مجھ کو اسی کا حکم ہوا ہے اور میں سب ماننے والوں میں سے پہلا ہوں",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "No partner has He. And this I have been commanded, and I am the first [among you] of the Muslims",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         ///

//                         Text("~ 8 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "قُلْ إِنَّمَآ أَنَا۠ بَشَرٌۭ مِّثْلُكُمْ يُوحَىٰٓ إِلَىَّ أَنَّمَآ إِلَـٰهُكُمْ إِلَـٰهٌۭ وَٰحِدٌۭ ۖ فَمَن كَانَ يَرْجُوا۟ لِقَآءَ رَبِّهِۦ فَلْيَعْمَلْ عَمَلًۭا صَـٰلِحًۭا وَلَا يُشْرِكْ بِعِبَادَةِ رَبِّهِۦٓ أَحَدًۢا‏ ﻿﻿ ﴿18:110﴾‏",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "آپ کہہ دیجئے کہ میں تو تم جیسا ہی ایک انسان ہوں۔ (ہاں) میری جانب وحی کی جاتی ہے کہ سب کا معبود صرف ایک ہی معبود ہے، تو جسے بھی اپنے پروردگار سے ملنے کی آرزو ہو اسے چاہئے کہ نیک اعمال کرے اور اپنے پروردگار کی عبادت میں کسی کو بھی شریک نہ کرے",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Say, \"I am only a man like you, to whom has been revealed that your god is one God. So whoever would hope for the meeting with his Lord - let him do righteous work and not associate in the worship of his Lord anyone.",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         /////
//                         ///

//                         Text("~ 9 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "أَلَا لِلَّهِ ٱلدِّينُ ٱلْخَالِصُ ۚ وَٱلَّذِينَ ٱتَّخَذُوا۟ مِن دُونِهِۦٓ أَوْلِيَآءَ مَا نَعْبُدُهُمْ إِلَّا لِيُقَرِّبُونَآ إِلَى ٱللَّهِ زُلْفَىٰٓ إِنَّ ٱللَّهَ يَحْكُمُ بَيْنَهُمْ فِى مَا هُمْ فِيهِ يَخْتَلِفُونَ ۗ إِنَّ ٱللَّهَ لَا يَهْدِى مَنْ هُوَ كَـٰذِبٌۭ كَفَّارٌۭ‏ ﻿﻿ ﴿39:3﴾‏",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "خبردار! اللہ تعالیٰ ہی کے لئے خالص عبادت کرنا ہے اور جن لوگوں نے اس کے سوا اولیا بنا رکھے ہیں (اور کہتے ہیں) کہ ہم ان کی عبادت صرف اس لئے کرتے ہیں کہ یہ (بزرگ) اللہ کی نزدیکی کے مرتبہ تک ہماری رسائی کرا دیں، یہ لوگ جس بارے میں اختلاف کر رہے ہیں اس کا (سچا) فیصلہ اللہ (خود) کرے گا۔ جھوٹے اور ناشکرے (لوگوں) کو اللہ تعالیٰ راه نہیں دکھاتا",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Unquestionably, for Allah is the pure religion. And those who take protectors besides Him [say], \"We only worship them that they may bring us nearer to Allah in position. \" Indeed, Allah will judge between them concerning that over which they differ. Indeed, Allah does not guide he who is a liar and [confirmed] disbeliever",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         //////
//                         Text("~ 10 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "إِنَّآ أَنزَلْنَآ إِلَيْكَ ٱلْكِتَـٰبَ بِٱلْحَقِّ فَٱعْبُدِ ٱللَّهَ مُخْلِصًۭا لَّهُ ٱلدِّينَ‏ ﻿﻿ ﴿39:2﴾‏",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "یقیناً ہم نے اس کتاب کو آپ کی طرف حق کے ساتھ نازل فرمایا ہے پس آپ اللہ ہی کی عبادت کریں، اسی کے لئے دین کو خالص کرتے ہوئے",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Indeed, We have sent down to you the Book, [O Muhammad], in truth. So worship Allah , [being] sincere to Him in religion",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 10,
//                         ),



//             /////////////////   Hadith Old Deisgn     ///////////////////////////////////////
            



//                         ,
//                         Text("~ 1 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 15,
//                         ),
//                         Text(
//                             "وعن ابن عمر رضي الله عنهما قال:  قال رسول الله صلى الله عليه وسلم : \"أمرت أن أقاتل الناس حتى يشهدوا أن لا إله إلا الله وأن محمدًا رسول الله، ويقيموا الصلاة، ويؤتوا الزكاة، فإذا فعلوا ذلك، عصموا مني دماءهم وأموالهم إلا بحق الإسلام وحسابهم على الله",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "رسول اللہ صلی اللہ علیہ وآلہ وسلم نے فرمایا: \"مجھے لوگوں کو جہاں تک وہ لا الہ الا اللہ اور محمد رسول اللہ کا قول نہیں کہتے، ان کے ساتھ جہاد کرنے کا حکم دیا گیا ہے، اور جب تک وہ نماز قائم کریں، زکوۃ دیں، ان کی جان اور مال کو حرام نہ جانے دیا جائے، مگر ان کے خلاف کوئی قانونی حکم ہو، اور ان کو اللہ کی طرف سے حساب کرنا ہے۔",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "The Messenger of Allah (ﷺ) said, \"I have been commanded to fight people till they testify 'La ilaha illallah' (there is no true god except Allah) that Muhammad (ﷺ) is his slave and Messenger, and they establish Salat, and pay Zakat; and if they do this, their blood (life) and property are secured except when justified by law, and it is for Allah to call them to account.\"[Al-Bukhari and Muslim]",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),

//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Reference : Riyad as-Salihin 1209",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.amber,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 15,
//                         ),


//                         //////////////////////////////////////
//                         ///
//                         ///
//                         Text("~ 2 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),

//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "حَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ، حَدَّثَنَا لَيْثٌ، عَنِ ابْنِ عَجْلاَنَ، عَنْ مُحَمَّدِ بْنِ يَحْيَى بْنِ حَبَّانَ، عَنِ ابْنِ مُحَيْرِيزٍ، عَنِ الصُّنَابِحِيِّ، عَنْ عُبَادَةَ بْنِ الصَّامِتِ، أَنَّهُ قَالَ دَخَلْتُ عَلَيْهِ وَهُوَ فِي الْمَوْتِ فَبَكَيْتُ فَقَالَ مَهْلاً لِمَ تَبْكِي فَوَاللَّهِ لَئِنِ اسْتُشْهِدْتُ لأَشْهَدَنَّ لَكَ وَلَئِنْ شُفِّعْتُ لأَشْفَعَنَّ لَكَ وَلَئِنِ اسْتَطَعْتُ لأَنْفَعَنَّكَ ثُمَّ قَالَ وَاللَّهِ مَا مِنْ حَدِيثٍ سَمِعْتُهُ مِنْ رَسُولِ اللَّهِ صلى الله عليه وسلم لَكُمْ فِيهِ خَيْرٌ إِلاَّ حَدَّثْتُكُمُوهُ إِلاَّ حَدِيثًا وَاحِدًا وَسَوْفَ أُحَدِّثُكُمُوهُ الْيَوْمَ وَقَدْ أُحِيطَ بِنَفْسِي سَمِعْتُ رَسُولَ اللَّهِ صلى الله عليه وسلم يَقُولُ \" مَنْ شَهِدَ أَنْ لاَ إِلَهَ إِلاَّ اللَّهُ وَأَنَّ مُحَمَّدًا رَسُولُ اللَّهِ حَرَّمَ اللَّهُ عَلَيْهِ النَّارَ \"",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "سنابیحی کی روایت میں ہے کہ وہ عبادہ بن کے پاس گئے۔ سمیت جب مرنے والا تھا۔ میں آنسوؤں میں پھٹ پڑا۔ اس پر اس نے مجھ سے کہا: مجھے کچھ وقت دیں (تاکہ میں آپ سے بات کروں)۔ کیوں روتے ہو؟ اللہ کی قسم اگر مجھ سے گواہی دینے کے لیے کہا جائے تو میں ضرور تمہارے لیے گواہی دوں گا (کہ تم مومن ہو)۔ اگر مجھ سے شفاعت کی درخواست کی جائے تو میں آپ کی شفاعت ضرور کروں گا اور اگر مجھ میں طاقت ہے تو میں ضرور آپ کے ساتھ بھلائی کروں گا، پھر فرمایا: خدا کی قسم میں نے رسول اللہ صلی اللہ علیہ وسلم سے کبھی کوئی ایسی بات نہیں سنی جو آپ کے لیے فائدہ کا ذریعہ بن سکتا تھا اور پھر اس ایک حدیث کے سوا آپ تک نہ پہنچاتا۔ کہ آج میں آپ کو سنانے کا ارادہ رکھتا ہوں، چونکہ میں اپنی آخری سانسیں لینے جا رہا ہوں۔ میں نے رسول اللہ صلی اللہ علیہ وسلم کو فرماتے سنا: جس نے گواہی دی کہ اللہ کے سوا کوئی معبود نہیں اور محمد صلی اللہ علیہ وسلم اللہ کے رسول ہیں تو اللہ تعالیٰ اس پر جہنم کی آگ حرام کر دے گا۔",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "It is narrated on the authority of Sunabihi that he went to Ubada b. Samit when he was about to die. I burst into tears. Upon this he said to me: \n Allow me some time (so that I may talk with you). Why do you weep? By Allah, if I am asked to bear witness, I would certainly testify for you (that you are a believer). Should I be asked to intercede, I would certainly intercede for you, and if I have the power, I would certainly do good to you, and then observed: By Allah, never did I hear anything from the Messenger of Allah (ﷺ) which could have been a source of benefit to you and then not conveyed it to you except this single hadith. That I intend to narrate to you today, since I am going to breathe my last. I heard the Messenger of Allah (ﷺ) say: He who testifies that there is no god but Allah and that Muhammad is the messenger of Allah, Allah would prohibit the fire of Hell for him.",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),

//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Reference : Sahih Muslim 29",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.amber,
//                                 fontSize: 16)),

//                         SizedBox(
//                           height: 15,
//                         ),

                      
//                         Text("~  3 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         //////

//                         Text(
//                             "وعن ابن عمر رضي الله عنهما أن رسول الله صلى الله عليه وسلم قال :  بني الإسلام على خمس : شهادة أن لا إله إلى الله وأن محمدًا رسول الله، وإقام الصلاة، وإيتاء الزكاة، وحج البيت، وصوم رمضان \" ( متفق عليه )",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "ابن عمر رضی اللہ عنہما نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: اسلام کی بنیاد پانچ ستونوں پر ہے، جو اس بات کی گواہی دیتا ہے کہ لا الہ الا اللہ و انا محمد الرسول اللہ [اللہ کے سوا کوئی حقیقی معبود نہیں، اور محمد (صلی اللہ علیہ وسلم) اللہ کے رسول ہیں، نماز قائم کرنا، زکوٰۃ ادا کرنا، خانہ کعبہ کی زیارت کرنا اور صوم (روزہ) رکھنا۔ رمضان کے مہینے میں۔",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Ibn 'Umar (May Allah be pleased with them) reported:The Messenger of Allah (ﷺ) said, \"(The superstructure of) Islam is based on five (pillars), testifying the fact that La ilaha illallah wa anna Muhammad-ar-Rasul-ullah [there is no true god except Allah, and Muhammad ((ﷺ)) is the Messenger of Allah], establishing As- Salat (the prayers), paying Zakat (poor due), the pilgrimage to the House [of Allah (Ka'bah)], and the Saum (fasting) during the month of Ramadan.\"[Al-Bukhari and Muslim]",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),

//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Reference : Sahih Muslim 17 - A",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.amber,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 15,
//                         ),

//                         /////////////////////////////

//                         Text("~ 4 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "حَدَّثَنَا خَلَفُ بْنُ هِشَامٍ، حَدَّثَنَا حَمَّادُ بْنُ زَيْدٍ، عَنْ أَبِي جَمْرَةَ، قَالَ سَمِعْتُ ابْنَ عَبَّاسٍ، ح وَحَدَّثَنَا يَحْيَى بْنُ يَحْيَى، - وَاللَّفْظُ لَهُ - أَخْبَرَنَا عَبَّادُ بْنُ عَبَّادٍ، عَنْ أَبِي جَمْرَةَ، عَنِ ابْنِ عَبَّاسٍ، قَالَ قَدِمَ وَفْدُ عَبْدِ الْقَيْسِ عَلَى رَسُولِ اللَّهِ صلى الله عليه وسلم فَقَالُوا يَا رَسُولَ اللَّهِ إِنَّا هَذَا الْحَىَّ مِنْ رَبِيعَةَ وَقَدْ حَالَتْ بَيْنَنَا وَبَيْنَكَ كُفَّارُ مُضَرَ فَلاَ نَخْلُصُ إِلَيْكَ إِلاَّ فِي شَهْرِ الْحَرَامِ فَمُرْنَا بِأَمْرٍ نَعْمَلُ بِهِ وَنَدْعُو إِلَيْهِ مَنْ وَرَاءَنَا . قَالَ \" آمُرُكُمْ بِأَرْبَعٍ وَأَنْهَاكُمْ عَنْ أَرْبَعٍ الإِيمَانِ بِاللَّهِ - ثُمَّ فَسَّرَهَا لَهُمْ فَقَالَ - شَهَادَةِ أَنْ لاَ إِلَهَ إِلاَّ اللَّهُ وَأَنَّ مُحَمَّدًا رَسُولُ اللَّهِ وَإِقَامِ الصَّلاَةِ وَإِيتَاءِ الزَّكَاةِ وَأَنْ تُؤَدُّوا خُمُسَ مَا غَنِمْتُمْ وَأَنْهَاكُمْ عَنِ الدُّبَّاءِ وَالْحَنْتَمِ وَالنَّقِيرِ وَالْمُقَيَّرِ \". زَادَ خَلَفٌ فِي رِوَايَتِهِ \" شَهَادَةِ أَنْ لاَ إِلَهَ إِلاَّ اللَّهُ \". وَعَقَدَ وَاحِدَةً .",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "ابن عباس رضی اللہ عنہما سے روایت ہے کہ عبدالقیس کا ایک وفد رسول اللہ صلی اللہ علیہ وسلم کے پاس آیا اور کہا:اے اللہ کے رسول صلی اللہ علیہ وسلم ہمارا قبیلہ ربیعہ ہے اور آپ کے اور ہمارے درمیان مدر کے کافر کھڑے ہیں اور ہمیں حرمت والے مہینے کے علاوہ آپ کے پاس آنے کی آزادی نہیں ہے۔ ہمیں ایک ایسے عمل کی طرف ہدایت دیں جو ہم خود انجام دیں اور اپنے ساتھ رہنے والوں کو دعوت دیں۔ اس پر آپ صلی اللہ علیہ وسلم نے فرمایا: میں تمہیں چار چیزوں کا حکم دیتا ہوں اور چار کاموں سے منع کرتا ہوں۔ (وہ چار کام جن کا آپ کو حکم دیا گیا ہے وہ یہ ہیں): اللہ پر ایمان، پھر ان کے لیے اس کی وضاحت فرمائی اور فرمایا: حقیقت کی گواہی دینا۔ کہ اللہ کے سوا کوئی معبود نہیں، یہ کہ محمد صلی اللہ علیہ وسلم اللہ کے رسول ہیں، نماز کی پابندی، زکوٰۃ کی ادائیگی، تم اپنے مال غنیمت کا خمس (پانچواں حصہ) ادا کرو، اور میں تمہیں گول لوکی استعمال کرنے سے منع کرتا ہوں، شراب کے برتن، لکڑی کے برتن یا شراب کے لیے کھالیں۔ خلف بی۔ ہشام نے اپنی روایت میں یہ اضافہ کیا ہے: اس بات کی گواہی دینا کہ اللہ کے سوا کوئی معبود نہیں اور پھر اس نے اپنی انگلی سے رب کی وحدانیت کی طرف اشارہ کیا۔",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "It is narrated on the authority of Ibn 'Abbas that a delegation of Abdul Qais came to the Messenger of Allah (ﷺ) and said:Messenger of Allah, verily ours is a tribe of Rabi'a and there stand between you and us the unbelievers of Mudar and we find no freedom to come to you except in the sacred month. Direct us to an act which we should ourselves perform and invite those who live beside us. Upon this the Prophet remarked: I command you to do four things and prohibit you against four acts. (The four deeds which you are commanded to do are): Faith in Allah, and then he explained it for them and said: Testifying the fact. that there is no god but Allah, that Muhammad is the messenger of Allah, performance of prayer, payment of Zakat, that you pay Khums (one-fifth) of the booty fallen to your lot, and I prohibit you to use round gourd, wine jars, wooden pots or skins for wine. Khalaf b. Hisham has made this addition in his narration: Testifying the fact that there is no god but Allah, and then he with his finger pointed out the oneness of the Lord.",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),

//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Reference : Musnad Ahmad 452",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.amber,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 15,
//                         ),

                        
//                         Text("~ 5 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         ///////////////////////////////////////
//                         ///

//                         Text(
//                             "حَدَّثَنَا إِسْحَاقُ بْنُ سُلَيْمَانَ، قَالَ سَمِعْتُ مُغِيرَةَ بْنَ مُسْلِمٍ أَبَا سَلَمَةَ، يَذْكُرُ عَنْ مَطَرٍ، عَنْ نَافِعٍ، عَنِ ابْنِ عُمَرَ، أَنَّ عُثْمَانَ، رَضِيَ اللَّهُ عَنْهُ أَشْرَفَ عَلَى أَصْحَابِهِ وَهُوَ مَحْصُورٌ فَقَالَ عَلَامَ تَقْتُلُونِي فَإِنِّي سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ لَا يَحِلُّ دَمُ امْرِئٍ مُسْلِمٍ إِلَّا بِإِحْدَى ثَلَاثٍ رَجُلٌ زَنَى بَعْدَ إِحْصَانِهِ فَعَلَيْهِ الرَّجْمُ أَوْ قَتَلَ عَمْدًا فَعَلَيْهِ الْقَوَدُ أَوْ ارْتَدَّ بَعْدَ إِسْلَامِهِ فَعَلَيْهِ الْقَتْلُ فَوَاللَّهِ مَا زَنَيْتُ فِي جَاهِلِيَّةٍ وَلَا إِسْلَامٍ وَلَا قَتَلْتُ أَحَدًا فَأُقِيدَ نَفْسِي مِنْهُ وَلَا ارْتَدَدْتُ مُنْذُ أَسْلَمْتُ إِنِّي أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللَّهُ وَأَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ.",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "نافع سے ابن عمر سے روایت ہے کہ عثمان رضی اللہ عنہ نے اپنے ساتھیوں کی طرف دیکھا جب وہ محاصرے میں تھے اور فرمایا: تم مجھے کیوں مارنا چاہتے ہو؟ میں نے رسول اللہ صلی اللہ علیہ وسلم کو فرماتے سنا: مسلمان کا خون بہانا جائز نہیں سوائے تین صورتوں کے۔ وہ شخص جو شادی کے بعد زنا کا ارتکاب کرے تو اسے سنگسار کیا جائے، یا وہ شخص جس نے جان بوجھ کر قتل کیا ہو، تو اسے بدلہ میں قتل کیا جائے، یا وہ شخص جو مسلمان ہونے کے بعد مرتد ہو جائے، تو اس کو رجم کیا جائے گا۔ پھانسی دی جائے۔خدا کی قسم میں نے نہ جاہلیت میں کبھی زنا کیا اور نہ اسلام میں، میں نے کبھی کسی کو ایسا قتل نہیں کیا کہ بدلہ میں میری جان لے لی جائے۔ اور میں نے جب سے مسلمان ہوا ہے کبھی مرتد نہیں ہوا اس بات کی گواہی دیتا ہوں کہ اللہ کے سوا کوئی معبود نہیں اور محمد اس کے بندے اور اس کے رسول ہیں،",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "It was narrated from Nafi` from Ibn `Umar, that Uthman (رضي الله عنه) looked out at his companions when he was under siege and said : Why do you want to kill me? I heard the Messenger of Allah (ﷺ) say: `It is not permissible to shed the blood of a Muslim man except in one of three cases; a man who commits zina after being married, so he is to be stoned, or a man who killed deliberately (committed murder), so he is to be killed in retaliation, or a man who apostatised after having become Muslim, so he is to be executed.” By Allah, I never committed zina either during the Jahiliyyah or in Islam, I never killed anyone such that my life should be taken in retaliation; and I never apostatised since [became Muslim bear witness that there is no god but Allah and that Muhammad is His slave and His Messenger,",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),

//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Reference : Riyad as-Salihin 3912",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.amber,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 15,
//                         ),

                        
//                         Text("~ 6 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

// ///////////////////////////////
//                         ///

//                         Text(
//                             "وعن أبي عبد الله طارق بن أشيم ، رضي الله عنه ، قال: سمعت رسول الله صلى الله عليه وسلم يقول\:\" من قال لا إله إلا الله ، وكفر بما يعبد من دون الله، حرم ماله ودمه، وحسابه على الله تعالى\"(رواه مسلم)",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "ابو عبداللہ بن طارق بن اشیم رضی اللہ عنہ بیان کرتے ہیں:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: جس نے لا الہ الا اللہ (اللہ کے سوا کوئی معبود نہیں) کا اقرار کیا اور ہر اس چیز کا انکار کیا جسے لوگ اللہ کے سوا پوجتے ہیں تو اس کا مال اور خون حرام ہو جاتا ہے اور اللہ کو پکارنا ہے۔ اس کا حساب لیا جائے\"",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Abu Abdullah bin Tariq bin Ashyam (May Allah be pleased with him) reported:Messenger of Allah (ﷺ) said, \"He who professes La ilaha illallah (There is no true god except Allah), and denies of everything which the people worship besides Allah, his property and blood become inviolable, and it is for Allah to call him to account\".[Muslim].",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),

//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Reference : Riyad as-Salihin 391",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.amber,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         ////
//                         ///
//                         /////////
//                         ///
//                         ///
                        
//                         Text("~ 7 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "وعن جابر رضي الله عنه قال: سمعت رسول الله صلى الله عليه وسلم يقول: \"أفضل الذكر: لا إله إلا الله\". رواه الترمذي وقال حديث حسن",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "جابر رضی اللہ عنہ نے بیان کیا:میں نے رسول اللہ صلی اللہ علیہ وسلم کو فرماتے ہوئے سنا کہ اللہ کے ذکر کو منانے کا بہترین طریقہ یہ ہے کہ لا الہ الا اللہ کہا جائے۔ [ترمذی]",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Jabir (May Allah be pleased with him) reported : I heard the Messenger of Allah (ﷺ) saying, \"The best way to celebrate the remembrance of Allah is to say: La ilaha illallah (there is no true god except Allah).\"[At-Tirmidhi].",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),

//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Reference : Riyad as-Salihin 1437",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.amber,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         //////////////
//                         ///
                        
//                         Text("~ 8 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "وعن أبي سعيد الخدري رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم : “لقنوا موتاكم لا إله إلا الله\"(رواه مسلم)",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "ابو سعید خدری رضی اللہ عنہ بیان کرتے ہیں:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: اپنے مرنے والوں کو لا الہ الا اللہ پڑھنے کی تلقین کرو۔[مسلمان].",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Abu Sa'id Al-Khudri (May Allah be pleased with him) reported:The Messenger of Allah (ﷺ) said, \"Exhort your dying men to recite: 'La ilaha illallah' (There is no true god except Allah).\"[Muslim].",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),

//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Reference : Riyad as-Salihin 918",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.amber,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         /////
//                         ///////////////////
//                         ///
                        
//                         Text("~ 9 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "عن معاذ رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم :  \"من كان آخر كلامه لا إله إلا الله دخل الجنة\"(رواه أبو داود والحاكم وقال: صحيح الإسناد)",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "معاذ بن جبل رضی اللہ عنہ بیان کرتے ہیں:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا جس کا آخری کلمہ لا الہ الا اللہ ہو وہ جنت میں جائے گا۔[ابو داؤد]۔",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Mu`adh bin Jabal (May Allah be pleased with him) reported:The Messenger of Allah (ﷺ) said, \"He whose last words are: `La ilaha illallah' (There is no true god except Allah) will enter Jannah.''[Abu Dawud].",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),

//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Reference : Riyad as-Salihin 917",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.amber,
//                                 fontSize: 16)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         //////////
//                         ///
//                         ///
                       
//                         Text("~ 10 ~",
//                             textAlign: TextAlign.center,
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.red,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),

//                         Text(
//                             "عَنْ أَبِي هُرَيْرَةَ، قَالَ: قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ: «قُلْ آمَنْتُ بِاللَّهِ، ثُمَّ اسْتَقِم",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 height: 1.25,
//                                 wordSpacing: 2.5,
//                                 fontFamily: "Saleem",
//                                 color: Colors.white,
//                                 fontSize: 40)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "حضرت ابو ہریرہ رضی اللہ عنہ سے روایت ہے کہ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: \"کہہ دو: میں اللہ پر ایمان لاتا ہوں، پھر استقامت دکھاؤ",
//                             textDirection: TextDirection.rtl,
//                             style: TextStyle(
//                                 fontFamily: "Amiri",
//                                 color: Colors.green,
//                                 fontSize: 24)),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text(
//                             "Narrated Abu Huraira: The Messenger of Allah (ﷺ) said, \"Say, 'I believe in Allah,' and then be steadfast (straight on the right path).\"",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.cyan,
//                                 fontSize: 16)),
//                         // Sahih Muslim 38
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Text("Reference : Sahih Muslim 38",
//                             style: TextStyle(
//                                 fontFamily: "Archivo",
//                                 color: Colors.amber,
//                                 fontSize: 16)),


//  */
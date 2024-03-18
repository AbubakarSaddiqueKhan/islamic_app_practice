import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quran_api_practice/model/Hadith/arabic_lanuage_hadith_detailed_model.dart';
import 'package:flutter_quran_api_practice/model/Hadith/translated_language_hadith_detailed_model.dart';

class HadithDetailPageDesign extends StatelessWidget {
  const HadithDetailPageDesign(
      {super.key,
      required this.englishLanguageHadithDetail,
      required this.urduLanguageHadithDetail,
      required this.arabicLanguageHadithDetail});
  final TranslatedLanguageHadithDetailedModel englishLanguageHadithDetail;
  final TranslatedLanguageHadithDetailedModel urduLanguageHadithDetail;
  final ArabicLanguageHadithDetailModel arabicLanguageHadithDetail;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);

    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.15),
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
            image: const DecorationImage(
                image: AssetImage(
                  "assets/images/dark.jpg",
                ),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                // Text(" Urdu Title: ${urduLanguageHadithDetail.title}"),

                // SizedBox(
                //   height: 10,
                // ),
                // Text(" English Title: ${englishLanguageHadithDetail.title}"),

                Text(
                  arabicLanguageHadithDetail.hadeeth,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(
                      fontFamily: "Amiri", fontSize: 19, color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  urduLanguageHadithDetail.hadeeth,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(
                      fontFamily: "Amiri", fontSize: 18, color: Colors.green),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  englishLanguageHadithDetail.hadeeth,
                  style: const TextStyle(
                      fontFamily: "Archio", fontSize: 15, color: Colors.cyan),
                ),
                const SizedBox(
                  height: 15,
                ),

                Text(
                  urduLanguageHadithDetail.explanation,
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(
                      fontFamily: "Amiri", fontSize: 18, color: Colors.white),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  englishLanguageHadithDetail.explanation,
                  style: const TextStyle(
                      fontFamily: "Archio", fontSize: 15, color: Colors.cyan),
                ),

                const SizedBox(
                  height: 15,
                ),

                Text(urduLanguageHadithDetail.hints.toString(),
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        fontFamily: "Amiri",
                        fontSize: 18,
                        color: Colors.white)),

                const SizedBox(
                  height: 15,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Books : ${englishLanguageHadithDetail.attribution}",
                    style: const TextStyle(
                        fontFamily: "Amiri", fontSize: 18, color: Colors.cyan),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "Grade : [ ${englishLanguageHadithDetail.grade} ]",
                      style: const TextStyle(
                          fontFamily: "Amiri",
                          fontSize: 18,
                          color: Colors.cyan)),
                ),

                const SizedBox(
                  height: 15,
                ),
                Text(
                  "حوالہ جات : [ ${arabicLanguageHadithDetail.reference} ]",
                  textDirection: TextDirection.rtl,
                  style: const TextStyle(
                      fontFamily: "Amiri", fontSize: 18, color: Colors.green),
                ),
                // SizedBox(
                //   height: 20,
                // ),

                // SizedBox(
                //   height: 10,
                // ),
                // Text(" English Hints: ${englishLanguageHadithDetail.hints}"),
                // SizedBox(
                //   height: 10,
                // ),
                // Text(" English Title: ${englishLanguageHadithDetail.title}"),

                // SizedBox(
                //   height: 10,
                // ),

                // SizedBox(
                //   height: 50,
                // ),
                // // Text(" Arabic : $arabicLanguageHadithDetail"),
                // Text(
                //     " English Attributions: ${arabicLanguageHadithDetail.attribution}"),
                // SizedBox(
                //   height: 10,
                // ),
                // Text(
                //     " English Explanations : ${arabicLanguageHadithDetail.explanation}"),
                // SizedBox(
                //   height: 10,
                // ),
                // Text(" English Grade: ${arabicLanguageHadithDetail.grade}"),

                // SizedBox(
                //   height: 10,
                // ),
                // Text(" English Hints: ${arabicLanguageHadithDetail.hints}"),
                // SizedBox(
                //   height: 10,
                // ),
                // Text(" English Title: ${arabicLanguageHadithDetail.title}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

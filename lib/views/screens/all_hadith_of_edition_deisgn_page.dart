import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Hadith/hadith_edition_data_model.dart';

class AllHadithOfEditionDesignPage extends StatelessWidget {
  const AllHadithOfEditionDesignPage(
      {super.key,
      this.arabicHadithData,
      this.urduHadithData,
      this.englishHadithData});
  final HadithEditionDataModel? urduHadithData;
  final HadithEditionDataModel? englishHadithData;
  final HadithEditionDataModel? arabicHadithData;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/dark.jpg"),
                fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: SizedBox(
                  width: width,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Book Name : ${arabicHadithData?.metadata.name}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontFamily: "Archivo"),
                    ),
                  ),
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.white,
                        width: 1,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Arabic start .
                        Text(
                          " ~ ${arabicHadithData?.hadiths[index - 1].hadithnumber.toString() ?? ""}  ~",
                          style: const TextStyle(
                              color: Colors.teal,
                              fontSize: 16,
                              fontFamily: "Merienda"),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "\" ${arabicHadithData?.hadiths[index - 1].text.toString() ?? ""} \" ",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                              fontFamily: "Amiri"),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        // urdu start .
                        Text(
                          urduHadithData?.hadiths[index - 1].text.toString() ??
                              "",
                          textAlign: TextAlign.start,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                              color: Colors.green,
                              fontSize: 19,
                              fontFamily: "Amiri"),
                        ),
                        const SizedBox(
                          height: 15,
                        ),

                        // English Start .
                        Text(
                          englishHadithData?.hadiths[index - 1].text
                                  .toString() ??
                              "",
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              color: Colors.cyan,
                              fontSize: 16,
                              fontFamily: "Archivo"),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
          }, childCount: (arabicHadithData?.hadiths.length)! + 1),
        ),
      ),
    );
  }
}

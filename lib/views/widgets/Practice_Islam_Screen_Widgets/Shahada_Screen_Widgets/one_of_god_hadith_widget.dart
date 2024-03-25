import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Shahda/oneness_of_god_hadith_model.dart';

class OnenessOfGodHadithWidgetDesign extends StatelessWidget {
  const OnenessOfGodHadithWidgetDesign(
      {super.key, required this.onenessOfGodInHadithData});
  final OnenessOfGodInHadithModel onenessOfGodInHadithData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("~ ${onenessOfGodInHadithData.id} ~",
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                fontFamily: "Archivo", color: Colors.red, fontSize: 24)),
        const SizedBox(
          height: 10,
        ),
        Text(onenessOfGodInHadithData.hadithArabicText,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                height: 1.25,
                wordSpacing: 2.5,
                fontFamily: "Saleem",
                color: Colors.white,
                fontSize: 40)),
        const SizedBox(
          height: 10,
        ),
        Text(onenessOfGodInHadithData.hadithUrduText,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                fontFamily: "Amiri", color: Colors.green, fontSize: 24)),
        const SizedBox(
          height: 10,
        ),
        Text(onenessOfGodInHadithData.hadithEnglishText,
            style: const TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        Text("Reference : ${onenessOfGodInHadithData.hadithReference}",
            style: const TextStyle(
                fontFamily: "Archivo", color: Colors.amber, fontSize: 16)),
      ],
    );
  }
}

class OnenessOfGodHadithWidgets extends StatelessWidget {
  const OnenessOfGodHadithWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.15),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.white,
            width: 1,
          )),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              const Text("احادیث نبوی میں توحید کا بیان",
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: "Amiri", color: Colors.amber, fontSize: 24)),
              const SizedBox(
                height: 15,
              ),
              OnenessOfGodHadithWidgetDesign(
                  onenessOfGodInHadithData: onenessOfGodHadithList[0]),
              const SizedBox(
                height: 10,
              ),
              OnenessOfGodHadithWidgetDesign(
                  onenessOfGodInHadithData: onenessOfGodHadithList[1]),
              const SizedBox(
                height: 10,
              ),
              OnenessOfGodHadithWidgetDesign(
                  onenessOfGodInHadithData: onenessOfGodHadithList[2]),
              const SizedBox(
                height: 10,
              ),
              OnenessOfGodHadithWidgetDesign(
                  onenessOfGodInHadithData: onenessOfGodHadithList[3]),
              const SizedBox(
                height: 10,
              ),
              OnenessOfGodHadithWidgetDesign(
                  onenessOfGodInHadithData: onenessOfGodHadithList[4]),
              const SizedBox(
                height: 10,
              ),
              OnenessOfGodHadithWidgetDesign(
                  onenessOfGodInHadithData: onenessOfGodHadithList[5]),
              const SizedBox(
                height: 10,
              ),
              OnenessOfGodHadithWidgetDesign(
                  onenessOfGodInHadithData: onenessOfGodHadithList[6]),
              const SizedBox(
                height: 10,
              ),
              OnenessOfGodHadithWidgetDesign(
                  onenessOfGodInHadithData: onenessOfGodHadithList[7]),
              const SizedBox(
                height: 10,
              ),
              OnenessOfGodHadithWidgetDesign(
                  onenessOfGodInHadithData: onenessOfGodHadithList[8]),
              const SizedBox(
                height: 10,
              ),
              OnenessOfGodHadithWidgetDesign(
                  onenessOfGodInHadithData: onenessOfGodHadithList[9]),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

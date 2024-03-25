import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Prayer/obligation_of_prayer.dart';

class ObligationOfPrayerWidgetDesign extends StatelessWidget {
  const ObligationOfPrayerWidgetDesign(
      {super.key, required this.obligationOfPrayerData});
  final ObligationOfPrayerModel obligationOfPrayerData;

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Column(
      children: [
        Text("~ ${obligationOfPrayerData.id} ~",
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: const TextStyle(
                fontFamily: "Archivo", color: Colors.red, fontSize: 24)),
        const SizedBox(
          height: 10,
        ),
        Text(
          obligationOfPrayerData.obligationOfPrayerUrduTitle,
          textDirection: TextDirection.rtl,
          style: const TextStyle(
              height: 1.25,
              wordSpacing: 4,
              fontFamily: "Saleem",
              color: Colors.white,
              fontSize: 36),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          obligationOfPrayerData.obligationOfPrayerEnglishTitle,
          textDirection: TextDirection.ltr,
          style: const TextStyle(
              fontFamily: "Archivo", color: Colors.amber, fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          obligationOfPrayerData.obligationOfPrayerUduDetails,
          textDirection: TextDirection.rtl,
          style: const TextStyle(
              height: 1.25,
              wordSpacing: 4,
              fontFamily: "Saleem",
              color: Colors.green,
              fontSize: 36),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          obligationOfPrayerData.obligationOfPrayerEnglishDetails,
          textDirection: TextDirection.ltr,
          style: const TextStyle(
              fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: height * 0.35,
          width: width,
          child: Image.asset(
            obligationOfPrayerData.imagePath,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}

class FirstSixObligationOfPrayerWidgetsDatList extends StatelessWidget {
  const FirstSixObligationOfPrayerWidgetsDatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ObligationOfPrayerWidgetDesign(
            obligationOfPrayerData: obligationsOfPrayerDataList[0]),
        ObligationOfPrayerWidgetDesign(
            obligationOfPrayerData: obligationsOfPrayerDataList[1]),
        ObligationOfPrayerWidgetDesign(
            obligationOfPrayerData: obligationsOfPrayerDataList[2]),
        ObligationOfPrayerWidgetDesign(
            obligationOfPrayerData: obligationsOfPrayerDataList[3]),
        ObligationOfPrayerWidgetDesign(
            obligationOfPrayerData: obligationsOfPrayerDataList[4]),
        ObligationOfPrayerWidgetDesign(
            obligationOfPrayerData: obligationsOfPrayerDataList[5]),
      ],
    );
  }
}

class LastSevenObligationOfPrayerWidgetsDataList extends StatelessWidget {
  const LastSevenObligationOfPrayerWidgetsDataList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ObligationOfPrayerWidgetDesign(
            obligationOfPrayerData: obligationsOfPrayerDataList[6]),
        ObligationOfPrayerWidgetDesign(
            obligationOfPrayerData: obligationsOfPrayerDataList[7]),
        ObligationOfPrayerWidgetDesign(
            obligationOfPrayerData: obligationsOfPrayerDataList[8]),
        ObligationOfPrayerWidgetDesign(
            obligationOfPrayerData: obligationsOfPrayerDataList[9]),
        ObligationOfPrayerWidgetDesign(
            obligationOfPrayerData: obligationsOfPrayerDataList[10]),
        ObligationOfPrayerWidgetDesign(
            obligationOfPrayerData: obligationsOfPrayerDataList[11]),
        ObligationOfPrayerWidgetDesign(
            obligationOfPrayerData: obligationsOfPrayerDataList[12]),
      ],
    );
  }
}

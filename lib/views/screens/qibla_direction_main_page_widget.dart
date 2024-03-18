import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/qibla_direction_model.dart';
import 'package:flutter_quran_api_practice/view_models/Custom_Painters/qibla_page_custom_painters.dart';

class QiblaDirectionMainPageDesign extends StatelessWidget {
  const QiblaDirectionMainPageDesign(
      {super.key,
      required this.qiblaDirectionData,
      required this.distanceBetweenUserCurrentLocationAndKaaba});

  final QiblaDirectionModel qiblaDirectionData;
  final double distanceBetweenUserCurrentLocationAndKaaba;

  static String checkCardinalWithDirectionInDegree({required double degree}) {
    if (degree < 0) {
      return "Invalid";
    } else {
      if (degree == 0 || degree == 360) {
        return "N";
      } else if (degree == 90) {
        return "E";
      } else if (degree == 270) {
        return "S";
      } else if (degree == 180) {
        return "W";
      } else if (degree > 0 && degree < 90) {
        return "NE";
      } else if (degree > 90 && degree < 180) {
        return "ES";
      } else if (degree > 180 && degree < 270) {
        return "SW";
      } else if (degree > 270 && degree < 360) {
        return "NW";
      } else {
        return "Invalid";
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/dark.jpg",
                ),
                fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Distance from Makkah",
              style: const TextStyle(
                  color: Colors.white, fontSize: 18, fontFamily: "Archivo"),
            ),
            Text(
              "${distanceBetweenUserCurrentLocationAndKaaba.toInt().toString()} KM",
              style: const TextStyle(
                  color: Colors.green, fontSize: 20, fontFamily: "Archivo"),
            ),
            Text(
              "${qiblaDirectionData.data.direction.toInt().toString()} °  -   ${checkCardinalWithDirectionInDegree(degree: qiblaDirectionData.data.direction)}",
              style: const TextStyle(
                  color: Colors.cyan, fontSize: 20, fontFamily: "Archivo"),
            ),
            SizedBox(
              width: width * 0.8,
              height: height * 0.6,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: width * 0.7,
                      height: height * 0.6,
                      child: CustomPaint(
                        painter: QiblaPageCustomPainter(),
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: (pi / 180) * qiblaDirectionData.data.direction,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: width * 0.2,
                        height: height * 0.2,
                        child: Image.asset(
                          "assets/images/kaaba.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

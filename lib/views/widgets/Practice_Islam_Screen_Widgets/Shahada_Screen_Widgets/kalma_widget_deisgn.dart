import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Shahda/kalma_model.dart';

class KalmaWidgetDesign extends StatelessWidget {
  const KalmaWidgetDesign({super.key, required this.islamicKalmaData});
  final IslamicKalmaModel islamicKalmaData;

  static final player = AudioPlayer();

  Future<void> _playAudioFromAsset({required String audioPath}) async {
    try {
      // Load the audio file from the asset
      ByteData data = await rootBundle.load(audioPath);
      // Play the audio file
      await player.play(BytesSource(data.buffer.asUint8List()));
    } catch (e) {
      print("Error playing audio: $e");
    }
  }

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
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 65,
                  child: Text(
                    islamicKalmaData.islamicKalmaUrduName,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        fontFamily: "Amiri", fontSize: 22, color: Colors.green),
                  ),
                ),
                Expanded(
                  flex: 35,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: IconButton(
                        icon: const Icon(Icons.volume_up_rounded),
                        onPressed: () async {
                          await _playAudioFromAsset(
                              audioPath:
                                  islamicKalmaData.islamicKalmaAudioUrlPath);
                        },
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              islamicKalmaData.islamicKalmaEnglishName,
              textDirection: TextDirection.ltr,
              style: const TextStyle(
                  fontFamily: "Amiri", fontSize: 22, color: Colors.cyan),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              islamicKalmaData.islamicKalmaArabicLanguageText,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                  fontFamily: "Amiri", fontSize: 22, color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              islamicKalmaData.islamicKalmaUrduLanguageText,
              textDirection: TextDirection.rtl,
              style: const TextStyle(
                  fontFamily: "Amiri", fontSize: 22, color: Colors.green),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              islamicKalmaData.islamicKalmaEnglishLanguageText,
              textDirection: TextDirection.ltr,
              style: const TextStyle(
                  fontFamily: "Amiri", fontSize: 19, color: Colors.cyan),
            )
          ],
        ),
      ),
    );
  }
}

class AllKalmaWidgets extends StatelessWidget {
  const AllKalmaWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          KalmaWidgetDesign(islamicKalmaData: allSixIslamicKalmas[0]),
          const SizedBox(
            height: 10,
          ),
          KalmaWidgetDesign(islamicKalmaData: allSixIslamicKalmas[1]),
          const SizedBox(
            height: 10,
          ),
          KalmaWidgetDesign(islamicKalmaData: allSixIslamicKalmas[2]),
          const SizedBox(
            height: 10,
          ),
          KalmaWidgetDesign(islamicKalmaData: allSixIslamicKalmas[3]),
          const SizedBox(
            height: 10,
          ),
          KalmaWidgetDesign(islamicKalmaData: allSixIslamicKalmas[4]),
          const SizedBox(
            height: 10,
          ),
          KalmaWidgetDesign(islamicKalmaData: allSixIslamicKalmas[5]),
        ],
      ),
    );
  }
}

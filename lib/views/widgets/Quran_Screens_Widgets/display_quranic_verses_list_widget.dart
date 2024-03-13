import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quran_api_practice/model/audio_arabic_quran_model.dart';
import 'package:flutter_quran_api_practice/model/quran_api_model.dart';
import 'package:flutter_quran_api_practice/model/urdu_Audio_quran_model.dart';
import 'package:flutter_quran_api_practice/model/urdu_translated_quran_api_model.dart';

class QuranicVersesListViewWidget extends StatefulWidget {
  const QuranicVersesListViewWidget(
      {super.key,
      required this.surah,
      required this.englishTranslatedSurah,
      required this.urduTranslatedSurah,
      required this.audioArabicQuranSurah,
      required this.urduAudioQuranSurah});
  final Surahs surah;
  final Surahs englishTranslatedSurah;
  final Surahs urduTranslatedSurah;
  final AudioArabicQuranModel audioArabicQuranSurah;
  final UrduTranslatedSurahs urduAudioQuranSurah;

  @override
  State<QuranicVersesListViewWidget> createState() =>
      _QuranicVersesListViewWidgetState();
}

class _QuranicVersesListViewWidgetState
    extends State<QuranicVersesListViewWidget> {
  final arabicAudioQuranPlayer = AudioPlayer();
  final urduAudioQuranPlayer = AudioPlayer();
  Future<void> playArabicQuranAudioFromUrl({required String url}) async {
    await arabicAudioQuranPlayer.play(UrlSource(url));
  }

  Future<void> playUrduTranslatedQuranAudioFromUrl(
      {required String url}) async {
    await urduAudioQuranPlayer.play(UrlSource(url));
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Container(
      height: height,
      width: width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: widget.surah.ayahs.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 5, bottom: 5),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        )),
                    alignment: Alignment.topCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Text(
                            widget.surah.name,
                            style: const TextStyle(
                                fontFamily: "Amiri",
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Verses : ${widget.surah.ayahs.length}",
                                  style: const TextStyle(
                                      fontFamily: "Merienda",
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    String currentUrl = widget
                                        .urduAudioQuranSurah.ayahs[index].audio;
                                    print(
                                        "Current urdu translated quran url is : $currentUrl ");
                                    playUrduTranslatedQuranAudioFromUrl(
                                        url: currentUrl);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.15),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1,
                                        )),
                                    alignment: Alignment.topCenter,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 8, right: 8, top: 2, bottom: 2),
                                      child: Text("Urdu",
                                          style: TextStyle(
                                              fontFamily: "Merienda",
                                              color: Colors.white,
                                              fontSize: 15)),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    final String currentUrl = widget
                                        .audioArabicQuranSurah
                                        .data
                                        .ayahs[index]
                                        .audio;
                                    print(
                                        "Current playing url is : $currentUrl");
                                    playArabicQuranAudioFromUrl(
                                        url: currentUrl);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.15),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1,
                                        )),
                                    alignment: Alignment.topCenter,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 8, right: 8, top: 2, bottom: 2),
                                      child: Text("Arabic",
                                          style: TextStyle(
                                              fontFamily: "Merienda",
                                              color: Colors.white,
                                              fontSize: 15)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              widget.surah.ayahs[0].text,
                              textDirection: TextDirection.rtl,
                              style: const TextStyle(
                                fontFamily: "Amiri",
                                color: Colors.white,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              widget.urduTranslatedSurah.ayahs[0].text,
                              textDirection: TextDirection.rtl,
                              style: const TextStyle(
                                fontFamily: "Amiri",
                                color: Colors.green,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              widget.englishTranslatedSurah.ayahs[0].text,
                              textDirection: TextDirection.ltr,
                              style: const TextStyle(
                                  fontFamily: "Amiri",
                                  color: Colors.grey,
                                  fontSize: 19),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            return Padding(
              padding:
                  const EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
              child: Container(
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    )),
                alignment: Alignment.center,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "${widget.surah.number.toString()} . ${widget.surah.ayahs[index].numberInSurah - 1}",
                                  style: const TextStyle(
                                      fontFamily: "Archivo",
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    onTap:
                                    () {
                                      String currentUrl = widget
                                          .urduAudioQuranSurah
                                          .ayahs[index]
                                          .audio;
                                      print(
                                          "Current urdu translated quran url is : $currentUrl ");
                                      playUrduTranslatedQuranAudioFromUrl(
                                          url: currentUrl);
                                    };
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.15),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1,
                                        )),
                                    alignment: Alignment.topCenter,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 8, right: 8, top: 2, bottom: 2),
                                      child: Text("Urdu",
                                          style: TextStyle(
                                              fontFamily: "Merienda",
                                              color: Colors.white,
                                              fontSize: 15)),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    final String currentUrl = widget
                                        .audioArabicQuranSurah
                                        .data
                                        .ayahs[index]
                                        .audio;
                                    print(
                                        "Current playing url is : $currentUrl");
                                    playArabicQuranAudioFromUrl(
                                        url: currentUrl);
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.15),
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          color: Colors.white,
                                          width: 1,
                                        )),
                                    alignment: Alignment.topCenter,
                                    child: const Padding(
                                      padding: EdgeInsets.only(
                                          left: 8, right: 8, top: 2, bottom: 2),
                                      child: Text("Arabic",
                                          style: TextStyle(
                                              fontFamily: "Merienda",
                                              color: Colors.white,
                                              fontSize: 15)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          widget.surah.ayahs[index].text,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                              fontFamily: "Amiri",
                              color: Colors.white,
                              fontSize: 24),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          widget.urduTranslatedSurah.ayahs[index].text,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                              fontFamily: "Amiri",
                              color: Colors.green,
                              fontSize: 22),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              widget.englishTranslatedSurah.ayahs[index].text,
                              textDirection: TextDirection.ltr,
                              style: const TextStyle(
                                  fontFamily: "Amiri",
                                  color: Colors.grey,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

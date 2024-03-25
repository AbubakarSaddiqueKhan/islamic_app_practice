import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AllVersesOfSurahFatihaDetailsWidgetsList extends StatelessWidget {
  const AllVersesOfSurahFatihaDetailsWidgetsList({super.key});
  static final player = AudioPlayer();
  void playAudioFromAssets({required String audioPath}) async {
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
    return Column(
      children: [
        const Text("بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ ١",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                height: 1.25,
                wordSpacing: 4,
                fontFamily: "Saleem",
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 36)),
        InkWell(
          onTap: () {
            playAudioFromAssets(audioPath: "assets/f1.mp3");
          },
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                )),
            alignment: Alignment.center,
            child: const Text(
              "Play Verse Audio",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
            "اللہ کے نام سےشروع جو نہایت مہربان ہمیشہ رحم فرمانےوالا ہے ",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.green,
                fontSize: 26)),
        const Text(
            "In the Name of Allah—the Most Compassionate, Most Merciful.",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        const Text("ٱلْحَمْدُ لِلَّهِ رَبِّ ٱلْعَـٰلَمِينَ ٢",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                height: 1.25,
                wordSpacing: 4,
                fontFamily: "Saleem",
                color: Colors.white,
                fontSize: 36)),
        InkWell(
          onTap: () {
            playAudioFromAssets(audioPath: "assets/f2.mp3");
          },
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                )),
            alignment: Alignment.center,
            child: const Text(
              "Play Verse Audio",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
            "سب تعریفیں اللہ ہی کے لئے ہیں جو تمام جہانوں کی پرورش فرمانے والا ہے",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.green,
                fontSize: 26)),
        const Text("All praise is for Allah—Lord of all worlds,1",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        const Text("ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ ٣",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                height: 1.25,
                wordSpacing: 4,
                fontFamily: "Saleem",
                color: Colors.white,
                fontSize: 36)),
        InkWell(
          onTap: () {
            playAudioFromAssets(audioPath: "assets/f3.mp3");
          },
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                )),
            alignment: Alignment.center,
            child: const Text(
              "Play Verse Audio",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("نہایت مہربان بہت رحم فرمانے والا ہے",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.green,
                fontSize: 26)),
        const Text("The Most Compassionate, Most Merciful,",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        const Text("مَـٰلِكِ يَوْمِ ٱلدِّينِ ٤",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                height: 1.25,
                wordSpacing: 4,
                fontFamily: "Saleem",
                color: Colors.white,
                fontSize: 36)),
        InkWell(
          onTap: () {
            playAudioFromAssets(audioPath: "assets/f4.mp3");
          },
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                )),
            alignment: Alignment.center,
            child: const Text(
              "Play Verse Audio",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("نہایت مہربان بہت رحم فرمانے والا ہے",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.green,
                fontSize: 26)),
        const Text("Master of the Day of Judgment.",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        const Text("إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ٥",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                height: 1.25,
                wordSpacing: 4,
                fontFamily: "Saleem",
                color: Colors.white,
                fontSize: 36)),
        InkWell(
          onTap: () {
            playAudioFromAssets(audioPath: "assets/f5.mp3");
          },
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                )),
            alignment: Alignment.center,
            child: const Text(
              "Play Verse Audio",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
            "(اے اللہ!) ہم تیری ہی عبادت کرتے ہیں اور ہم تجھ ہی سے مدد چاہتے ہیں",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.green,
                fontSize: 26)),
        const Text("You ˹alone˺ we worship and You ˹alone˺ we ask for help.",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        const Text("ٱهْدِنَا ٱلصِّرَٰطَ ٱلْمُسْتَقِيمَ ٦",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                height: 1.25,
                wordSpacing: 4,
                fontFamily: "Saleem",
                color: Colors.white,
                fontSize: 36)),
        InkWell(
          onTap: () {
            playAudioFromAssets(audioPath: "assets/f6.mp3");
          },
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                )),
            alignment: Alignment.center,
            child: const Text(
              "Play Verse Audio",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("ہمیں سیدھا راستہ دکھا",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.green,
                fontSize: 26)),
        const Text("Guide us along the Straight Path",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        const Text(
            "صِرَٰطَ ٱلَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ ٱلْمَغْضُوبِ عَلَيْهِمْ وَلَا ٱلضَّآلِّينَ ٧",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                height: 1.25,
                wordSpacing: 4,
                fontFamily: "Saleem",
                color: Colors.white,
                fontSize: 36)),
        InkWell(
          onTap: () {
            playAudioFromAssets(audioPath: "assets/f7.mp3");
          },
          child: Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.15),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.white,
                  width: 1,
                )),
            alignment: Alignment.center,
            child: const Text(
              "Play Verse Audio",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
            "ان لوگوں کا راستہ جن پر تو نے انعام فرمایا ان لوگوں کا نہیں جن پر غضب کیا گیا ہے اور نہ (ہی) گمراہوں کا",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.green,
                fontSize: 26)),
        const Text(
            "The Path of those You have blessed—not those You are displeased with, or those who are astray.1 ",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
      ],
    );
  }
}

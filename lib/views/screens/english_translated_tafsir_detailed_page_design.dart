import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/model/translated_tafsir_model.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/TafsirEQuran/tafsir_e_quran_bloc.dart';
import 'dart:developer' as developer;

class EnglishTranslatedTafsirDetailedPage extends StatelessWidget {
  const EnglishTranslatedTafsirDetailedPage(
      {super.key, required this.tafsirEQuranData});

  final TafsirEQuranModel tafsirEQuranData;

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
          child: ListView.builder(
            itemCount: tafsirEQuranData.ayahs.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: width,
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "${tafsirEQuranData.ayahs[index].surah.toString()} ${tafsirEQuranData.ayahs[index].ayah.toString()}",
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          tafsirEQuranData.ayahs[index].text,
                          textDirection: TextDirection.ltr,
                          style: const TextStyle(
                            fontSize: 18,
                            fontFamily: "Archivo",
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}

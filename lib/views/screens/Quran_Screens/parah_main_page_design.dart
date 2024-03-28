import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/QuranBlock/SimpleArabicQuranParahWise/simple_arabic_quran_parah_wise_bloc.dart';

class ParahMainPageDesign extends StatefulWidget {
  const ParahMainPageDesign({super.key});
  static const String pageName = "parahMainPage/";

  @override
  State<ParahMainPageDesign> createState() => _ParahMainPageDesignState();
}

class _ParahMainPageDesignState extends State<ParahMainPageDesign> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    int parahNumber = ModalRoute.of(context)!.settings.arguments as int;

    context
        .read<SimpleArabicQuranParahWiseBloc>()
        .add(FetchSimpleArabicQuranDataOfGivenParah(parahNumber: parahNumber));
  }

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/dark.jpg",
                ),
                fit: BoxFit.cover)),
        alignment: Alignment.center,
        child: BlocBuilder<SimpleArabicQuranParahWiseBloc,
            SimpleArabicQuranParahWiseState>(
          builder: (context, state) {
            if (state is SimpleArabicQuranParahWiseInitialState) {
              return const Text(
                "init ...........,",
                style: TextStyle(fontSize: 22, color: Colors.white),
              );
            } else if (state is SimpleArabicQuranParahWiseLoadingState) {
              return const Text(
                "Loadig ...........,",
                style: TextStyle(fontSize: 22, color: Colors.white),
              );
            } else if (state is SimpleArabicQuranParahWiseErrorState) {
              return const Text(
                "Errooooorr ...........,",
                style: TextStyle(fontSize: 22, color: Colors.white),
              );
            } else {
              (state as SimpleArabicQuranParahWiseLoadedState);
              return ListView.builder(
                itemCount:
                    state.simpleArabicQuranParahWiseData.data.ayahs.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10, bottom: 2, top: 2, right: 10),
                    child: Container(
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, top: 10, bottom: 5),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.15),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1,
                                      )),
                                  alignment: Alignment.center,
                                  child: const Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, top: 2, bottom: 2),
                                    child: Text(
                                      "Translation",
                                      style: TextStyle(
                                        fontFamily: "Archivo",
                                        color: Colors.cyan,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.15),
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 1,
                                      )),
                                  alignment: Alignment.center,
                                  child: const Padding(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 8, top: 2, bottom: 2),
                                    child: Text(
                                      "Tafseer",
                                      style: TextStyle(
                                        fontFamily: "Archivo",
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.volume_up_outlined,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                state.simpleArabicQuranParahWiseData.data
                                    .ayahs[index].text,
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Saleem",
                                    fontSize: 40,
                                    wordSpacing: 2.5,
                                    height: 1.3),
                              ),
                            ),
                            Text(
                              "‏ ﻿﻿ ﴿  آیت نمبر ${state.simpleArabicQuranParahWiseData.data.ayahs[index].number} ﴾",
                              textDirection: TextDirection.rtl,
                              style: const TextStyle(
                                  fontFamily: "Amiri", color: Colors.amber),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

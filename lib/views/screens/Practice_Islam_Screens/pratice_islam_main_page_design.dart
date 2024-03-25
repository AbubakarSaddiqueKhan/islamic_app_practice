import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/practice_islam_model.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/prayer_introduction_page.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Shahda_Screens/shahada_page_new_design.dart';

class PracticeIslamMainPageDesign extends StatelessWidget {
  const PracticeIslamMainPageDesign({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemCount: practiceIslamTypes.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  print(
                      "Clicked on :${practiceIslamTypes[index].practiceIslamEnglishName} , ${practiceIslamTypes[index].practiceIslamUrduName}");
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const PrayerIntroductionPage()
                      // const ShahdaPageDesign(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Container(
                    width: width,
                    // height: height * 0.11,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        )),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          practiceIslamTypes[index].practiceIslamUrduName,
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.green,
                              fontSize: 22,
                              fontFamily: "Amiri"),
                        ),
                        Text(
                          practiceIslamTypes[index].practiceIslamEnglishName,
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: "Archivo"),
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
          ),
        ),
      ),
    );
  }
}

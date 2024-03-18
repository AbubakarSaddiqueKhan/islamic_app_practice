import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/zikar_o_azkar_model.dart';

class ZikarOAzkarPageLoadedWidget extends StatelessWidget {
  const ZikarOAzkarPageLoadedWidget({super.key, required this.zikarOAzkarData});
  final List<Empty> zikarOAzkarData;

  static const List<String> zikarOAzkarTypes = <String>[
    "Morning supplications",
    "Evening Remembrances",
    "Remembrances after the salutation of the obligatory prayer",
    "تسابيح",
    "Sleeping supplications",
    "Waking up supplications",
    "Quranic supplications",
    "Prayers of the Prophets",
    ""
  ];

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
        child: ListView.builder(
          itemCount: zikarOAzkarData.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.only(top: 2, bottom: 2, left: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(15),
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
                      Text(
                        "گنتی : ${zikarOAzkarData[index].count.toString()}",
                        style: const TextStyle(
                            fontFamily: "Archivo",
                            color: Colors.green,
                            fontSize: 17),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        zikarOAzkarData[index].content.toString(),
                        textDirection: TextDirection.rtl,
                        style: const TextStyle(
                            fontFamily: "Amiri",
                            color: Colors.white,
                            fontSize: 23),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        zikarOAzkarData[index].description.toString(),
                        textDirection: TextDirection.rtl,
                        style: const TextStyle(
                            fontFamily: "Amiri",
                            color: Colors.cyan,
                            fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "حوالہ : ${zikarOAzkarData[index].reference.toString()}",
                        style: const TextStyle(
                            fontFamily: "Amiri",
                            color: Colors.green,
                            fontSize: 18),
                      ),
                    ],
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

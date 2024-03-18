import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran_api_practice/view_models/Blocs/ZikarOAzkarBloc/zikar_o_azkar_bloc.dart';
import 'dart:developer' as developer;

import 'package:flutter_quran_api_practice/views/widgets/Zikar_O_Azkar_Screens_Widgets/zikar_o_azkar_page_loaded_widget.dart';

class ZikarOAzkarMainPageDesign extends StatelessWidget {
  const ZikarOAzkarMainPageDesign({super.key});

// دعائیں

  static const List<ZikarOAzkarType> zikarOAzkarTypes = <ZikarOAzkarType>[
    ZikarOAzkarType(
        englishName: "Morning supplications", urduName: "صبح کی دعائیں"),
    ZikarOAzkarType(
        englishName: "Evening supplications", urduName: "شام کی دعائیں"),
    ZikarOAzkarType(
        englishName:
            "Supplications after the salutation of the obligatory prayer",
        urduName: "فرض نماز کے سلام کے بعد کی دعائیں"),
    ZikarOAzkarType(
        englishName: "Glorification of God", urduName: "خدا کی تسبیح"),
    ZikarOAzkarType(
        englishName: "Sleeping supplications", urduName: "سونے کی دعائیں"),
    ZikarOAzkarType(
        englishName: "Waking up supplications", urduName: "جاگنے کی دعائیں"),
    ZikarOAzkarType(
        englishName: "Quranic supplications", urduName: "قرآنی دعائیں"),
    ZikarOAzkarType(
        englishName: "Prayers of the Prophets", urduName: "انبیاء کی دعائیں")
  ];

  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: BlocListener<ZikarOAzkarBloc, ZikarOAzkarState>(
        listener: (context, state) {
          if (state is ZikarOAzkarInitialState) {
            developer.log("Initial ...........");
          } else if (state is ZikarOAzkarLoadingState) {
            developer.log("Loading ...........");
          } else if (state is ZikarOAzkarErrorState) {
            developer.log("Eroorrrr...........");
          } else if (state is ZikarOAzkarLoadedState) {
            developer.log("Done .......... Loaded");
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ZikarOAzkarPageLoadedWidget(
                  zikarOAzkarData: state.zikarOAzkars),
            ));
          }
        },
        child: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/dark.jpg"),
                  fit: BoxFit.cover)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: width,
                height: height,
                child: ListView.builder(
                  itemCount: zikarOAzkarTypes.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
                      child: InkWell(
                        onTap: () {
                          print(
                              "clicked on : ${zikarOAzkarTypes[index].urduName}");

                          if (index == 0) {
                            context.read<ZikarOAzkarBloc>().add(
                                const FetchMorningSupplicationsZikarOAzkarsEvent());
                          } else if (index == 1) {
                            context.read<ZikarOAzkarBloc>().add(
                                const FetchEveningSupplicationsZikarOAzkarsEvent());
                          } else if (index == 2) {
                            context
                                .read<ZikarOAzkarBloc>()
                                .add(const FetchPrayerZikarOAzkarsEvent());
                          } else if (index == 3) {
                            context.read<ZikarOAzkarBloc>().add(
                                const FetchGlorificationOfGodZikarOAzkarsEvent());
                          } else if (index == 4) {
                            context.read<ZikarOAzkarBloc>().add(
                                const FetchSleepingSupplicationsZikarOAzkarsEvent());
                          } else if (index == 5) {
                            context.read<ZikarOAzkarBloc>().add(
                                const FetchWakingUpSupplicationsZikarOAzkarsEvent());
                          } else if (index == 6) {
                            context.read<ZikarOAzkarBloc>().add(
                                const FetchQuranicSupplicationsZikarOAzkarsEvent());
                          } else if (index == 7) {
                            context.read<ZikarOAzkarBloc>().add(
                                const FetchProphetsPrayersZikarOAzkarsEvent());
                          }
                        },
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
                                Text(
                                  zikarOAzkarTypes[index].urduName,
                                  textDirection: TextDirection.rtl,
                                  style: const TextStyle(
                                      fontFamily: "Amiri",
                                      fontSize: 19,
                                      color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  zikarOAzkarTypes[index].englishName,
                                  style: const TextStyle(
                                      fontFamily: "Archivo",
                                      fontSize: 19,
                                      color: Colors.white),
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
            ),
          ),
        ),
      ),
    );
  }
}

class ZikarOAzkarType {
  final String englishName;
  final String urduName;
  const ZikarOAzkarType({required this.englishName, required this.urduName});
}

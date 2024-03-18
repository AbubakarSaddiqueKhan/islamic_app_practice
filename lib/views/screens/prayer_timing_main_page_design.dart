import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_quran_api_practice/model/prayers_timings_of_single_day.dart';

class PrayerTimingMainPageDesign extends StatelessWidget {
  const PrayerTimingMainPageDesign(
      {super.key, required this.allPrayerTimingsData});
  final AllPrayersTimingOfDayModel allPrayerTimingsData;

  static DateTime currentTime = DateTime.now();

  static const List<String> prayerNames = <String>[
    "Fajar",
    "Dhuhr",
    "Asr",
    "Maghrib",
    "Isha"
  ];

  @override
  Widget build(BuildContext context) {
    // (String prayerName, Icon prayerIcon, String prayerTime) prayerTimingRecord;
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      allPrayerTimingsData.data.date.hijri.date,
                      style: const TextStyle(fontSize: 23, color: Colors.white),
                    ),
                    const Text(
                      "User Location",
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${currentTime.hour} : ${currentTime.minute}",
                      style: const TextStyle(fontSize: 23, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.amber,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  prayerNames[0],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const Icon(
                                  Icons.sunny,
                                  color: Colors.white,
                                ),
                                Text(
                                  allPrayerTimingsData.data.timings.Fajr,
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),

                        /// Dhuhr
                        ///
                        Expanded(
                          child: Container(
                            color: Colors.blue,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  prayerNames[1],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const Icon(
                                  Icons.sunny,
                                  color: Colors.white,
                                ),
                                Text(
                                  allPrayerTimingsData.data.timings.Dhuhr,
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            color: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  prayerNames[2],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const Icon(
                                  Icons.sunny,
                                  color: Colors.white,
                                ),
                                Text(
                                  allPrayerTimingsData.data.timings.Asr,
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            color: Colors.purple,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  prayerNames[3],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const Icon(
                                  Icons.sunny,
                                  color: Colors.white,
                                ),
                                Text(
                                  allPrayerTimingsData.data.timings.Maghrib,
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            color: Colors.grey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  prayerNames[0],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const Icon(
                                  Icons.sunny,
                                  color: Colors.white,
                                ),
                                Text(
                                  allPrayerTimingsData.data.timings.Isha,
                                  style: const TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// var record = ('first', a: 2, b: true, 'last');

// final prayerTimingRecord = (String prayerName,Icon prayerIcon, String prayerTime);

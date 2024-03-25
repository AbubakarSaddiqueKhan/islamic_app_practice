import 'package:flutter/material.dart';

class ShahdaPageTabBarWidgetTopDesign extends StatelessWidget {
  const ShahdaPageTabBarWidgetTopDesign(
      {super.key, required this.tabBarName, required this.tabBarTextColor});
  final String tabBarName;
  final Color tabBarTextColor;

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
        padding: const EdgeInsets.only(top: 10, bottom: 5, right: 20, left: 20),
        child: Center(
          child: Text(tabBarName,
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  height: 1.15,
                  wordSpacing: 2,
                  fontFamily: "Saleem",
                  color: tabBarTextColor,
                  fontSize: 25)),
        ),
      ),
    );
  }
}

List<ShahdaPageTabBarWidgetTopDesign> shahdaPageTabs =
    const <ShahdaPageTabBarWidgetTopDesign>[
  ShahdaPageTabBarWidgetTopDesign(
      tabBarName: "احادیث نبوی میں توحید کا بیان",
      tabBarTextColor: Colors.cyan),
  ShahdaPageTabBarWidgetTopDesign(
      tabBarName: "قرآن میں شہادت کا بیان", tabBarTextColor: Colors.green),
  ShahdaPageTabBarWidgetTopDesign(
      tabBarName: " چھ کلمے ", tabBarTextColor: Colors.amber),
];

import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Shahada_Screen_Widgets/kalma_widget_deisgn.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Shahada_Screen_Widgets/one_of_god_hadith_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Shahada_Screen_Widgets/quranic_verse_widget_design.dart';

List<Widget> shahdaPageTabViews = const <Widget>[
  Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: OnenessOfGodHadithWidgets()),
  Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: QuranicVersesWidgets()),
  Padding(
      padding: EdgeInsets.only(left: 10, right: 10), child: AllKalmaWidgets()),
];

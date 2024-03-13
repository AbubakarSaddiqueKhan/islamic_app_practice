// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class TranslatedLanguageHadithDetailedModel {
  String id;
  String title;
  String hadeeth;
  String attribution;
  String grade;
  String explanation;
  List<String> hints;
  List<String> categories;
  List<String> translations;
  String? hadeethAr;
  String? explanationAr;
  dynamic hintsAr;
  String? attributionAr;
  String? gradeAr;
  TranslatedLanguageHadithDetailedModel({
    required this.id,
    required this.title,
    required this.hadeeth,
    required this.attribution,
    required this.grade,
    required this.explanation,
    required this.hints,
    required this.categories,
    required this.translations,
    required this.hadeethAr,
    required this.explanationAr,
    required this.hintsAr,
    required this.attributionAr,
    required this.gradeAr,
  });

  TranslatedLanguageHadithDetailedModel copyWith({
    String? id,
    String? title,
    String? hadeeth,
    String? attribution,
    String? grade,
    String? explanation,
    List<String>? hints,
    List<String>? categories,
    List<String>? translations,
    String? hadeethAr,
    String? explanationAr,
    dynamic hintsAr,
    String? attributionAr,
    String? gradeAr,
  }) {
    return TranslatedLanguageHadithDetailedModel(
      id: id ?? this.id,
      title: title ?? this.title,
      hadeeth: hadeeth ?? this.hadeeth,
      attribution: attribution ?? this.attribution,
      grade: grade ?? this.grade,
      explanation: explanation ?? this.explanation,
      hints: hints ?? this.hints,
      categories: categories ?? this.categories,
      translations: translations ?? this.translations,
      hadeethAr: hadeethAr ?? this.hadeethAr,
      explanationAr: explanationAr ?? this.explanationAr,
      hintsAr: hintsAr ?? this.hintsAr,
      attributionAr: attributionAr ?? this.attributionAr,
      gradeAr: gradeAr ?? this.gradeAr,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'hadeeth': hadeeth,
      'attribution': attribution,
      'grade': grade,
      'explanation': explanation,
      'hints': hints,
      'categories': categories,
      'translations': translations,
      'hadeethAr': hadeethAr,
      'explanationAr': explanationAr,
      'hintsAr': hintsAr,
      'attributionAr': attributionAr,
      'gradeAr': gradeAr,
    };
  }

  factory TranslatedLanguageHadithDetailedModel.fromMap(
      Map<String, dynamic> map) {
    return TranslatedLanguageHadithDetailedModel(
      id: map['id'] as String,
      title: map['title'] as String,
      hadeeth: map['hadeeth'] as String,
      attribution: map['attribution'] as String,
      grade: map['grade'] as String,
      explanation: map['explanation'] as String,
      hints: List<String>.from((map['hints'] as List<dynamic>)),
      categories: List<String>.from((map['categories'] as List<dynamic>)),
      translations: List<String>.from((map['translations'] as List<dynamic>)),
      hadeethAr: map['hadeethAr'] as String?,
      explanationAr: map['explanationAr'] as String?,
      hintsAr: map['hintsAr'] as dynamic,
      attributionAr: map['attributionAr'] as String?,
      gradeAr: map['gradeAr'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory TranslatedLanguageHadithDetailedModel.fromJson(String source) =>
      TranslatedLanguageHadithDetailedModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'EnglishLanuageHadithDetailedModel(id: $id, title: $title, hadeeth: $hadeeth, attribution: $attribution, grade: $grade, explanation: $explanation, hints: $hints, categories: $categories, translations: $translations, hadeethAr: $hadeethAr, explanationAr: $explanationAr, hintsAr: $hintsAr, attributionAr: $attributionAr, gradeAr: $gradeAr)';
  }

  @override
  bool operator ==(covariant TranslatedLanguageHadithDetailedModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.hadeeth == hadeeth &&
        other.attribution == attribution &&
        other.grade == grade &&
        other.explanation == explanation &&
        listEquals(other.hints, hints) &&
        listEquals(other.categories, categories) &&
        listEquals(other.translations, translations) &&
        other.hadeethAr == hadeethAr &&
        other.explanationAr == explanationAr &&
        listEquals(other.hintsAr, hintsAr) &&
        other.attributionAr == attributionAr &&
        other.gradeAr == gradeAr;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        hadeeth.hashCode ^
        attribution.hashCode ^
        grade.hashCode ^
        explanation.hashCode ^
        hints.hashCode ^
        categories.hashCode ^
        translations.hashCode ^
        hadeethAr.hashCode ^
        explanationAr.hashCode ^
        hintsAr.hashCode ^
        attributionAr.hashCode ^
        gradeAr.hashCode;
  }
}

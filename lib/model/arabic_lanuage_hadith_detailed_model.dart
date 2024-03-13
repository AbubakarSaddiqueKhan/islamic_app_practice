// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class ArabicLanguageHadithDetailModel {
  String id;
  String? title;
  String hadeeth;
  String attribution;
  String grade;
  String? explanation;
  dynamic hints;
  List<String> categories;
  List<String> translations;
  // List<WordsMeanings> wordsMeanings;
  String? reference;
  ArabicLanguageHadithDetailModel({
    required this.id,
    required this.title,
    required this.hadeeth,
    required this.attribution,
    required this.grade,
    required this.explanation,
    required this.hints,
    required this.categories,
    required this.translations,
    // required this.wordsMeanings,
    required this.reference,
  });

  ArabicLanguageHadithDetailModel copyWith({
    String? id,
    String? title,
    String? hadeeth,
    String? attribution,
    String? grade,
    String? explanation,
    dynamic hints,
    List<String>? categories,
    List<String>? translations,
    // List<WordsMeanings>? wordsMeanings,
    String? reference,
  }) {
    return ArabicLanguageHadithDetailModel(
      id: id ?? this.id,
      title: title ?? this.title,
      hadeeth: hadeeth ?? this.hadeeth,
      attribution: attribution ?? this.attribution,
      grade: grade ?? this.grade,
      explanation: explanation ?? this.explanation,
      hints: hints ?? this.hints,
      categories: categories ?? this.categories,
      translations: translations ?? this.translations,
      // wordsMeanings: wordsMeanings ?? this.wordsMeanings,
      reference: reference ?? this.reference,
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
      // 'wordsMeanings': wordsMeanings.map((x) => x.toMap()).toList(),
      'reference': reference,
    };
  }

  factory ArabicLanguageHadithDetailModel.fromMap(Map<String, dynamic> map) {
    return ArabicLanguageHadithDetailModel(
      id: map['id'] as String,
      title: map['title'] as String?,
      hadeeth: map['hadeeth'] as String,
      attribution: map['attribution'] as String,
      grade: map['grade'] as String,
      explanation: map['explanation'] as String?,
      hints: map['hints'] as dynamic,
      categories: List<String>.from((map['categories'] as List<dynamic>)),
      translations: List<String>.from((map['translations'] as List<dynamic>)),
      // wordsMeanings: List<WordsMeanings>.from(
      //   (map['wordsMeanings'] as dynamic ??
      //           WordsMeanings(word: "word", meaning: "meaning"))
      //       ?.map<WordsMeanings>(
      //     (x) => WordsMeanings?.fromMap(x as Map<String, dynamic>),
      //   ),
      // ),
      reference: map['reference'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory ArabicLanguageHadithDetailModel.fromJson(String source) =>
      ArabicLanguageHadithDetailModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ArabicLanuageHadithDetailModel(id: $id, title: $title, hadeeth: $hadeeth, attribution: $attribution, grade: $grade, explanation: $explanation, hints: $hints, categories: $categories, translations: $translations, reference: $reference)';
  }

  @override
  bool operator ==(covariant ArabicLanguageHadithDetailModel other) {
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
        // listEquals(other.wordsMeanings, wordsMeanings) &&
        other.reference == reference;
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
        // wordsMeanings.hashCode ^
        reference.hashCode;
  }
}

class WordsMeanings {
  String word;
  String meaning;
  WordsMeanings({
    required this.word,
    required this.meaning,
  });

  WordsMeanings copyWith({
    String? word,
    String? meaning,
  }) {
    return WordsMeanings(
      word: word ?? this.word,
      meaning: meaning ?? this.meaning,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'word': word,
      'meaning': meaning,
    };
  }

  factory WordsMeanings.fromMap(Map<String, dynamic> map) {
    return WordsMeanings(
      word: map['word'] as String,
      meaning: map['meaning'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory WordsMeanings.fromJson(String source) =>
      WordsMeanings.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'WordsMeanings(word: $word, meaning: $meaning)';

  @override
  bool operator ==(covariant WordsMeanings other) {
    if (identical(this, other)) return true;

    return other.word == word && other.meaning == meaning;
  }

  @override
  int get hashCode => word.hashCode ^ meaning.hashCode;
}

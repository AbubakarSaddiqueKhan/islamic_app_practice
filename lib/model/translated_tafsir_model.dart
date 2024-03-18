// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class TafsirEQuranModel {
  List<Ayahs> ayahs;
  TafsirEQuranModel({
    required this.ayahs,
  });

  TafsirEQuranModel copyWith({
    List<Ayahs>? ayahs,
  }) {
    return TafsirEQuranModel(
      ayahs: ayahs ?? this.ayahs,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ayahs': ayahs.map((x) => x.toMap()).toList(),
    };
  }

  factory TafsirEQuranModel.fromMap(Map<String, dynamic> map) {
    return TafsirEQuranModel(
      ayahs: List<Ayahs>.from(
        (map['ayahs'] as List<dynamic>).map<Ayahs>(
          (x) => Ayahs.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory TafsirEQuranModel.fromJson(String source) =>
      TafsirEQuranModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'TafsirEQuranModel(ayahs: $ayahs)';

  @override
  bool operator ==(covariant TafsirEQuranModel other) {
    if (identical(this, other)) return true;

    return listEquals(other.ayahs, ayahs);
  }

  @override
  int get hashCode => ayahs.hashCode;
}

class Ayahs {
  int ayah;
  int surah;
  String text;
  Ayahs({
    required this.ayah,
    required this.surah,
    required this.text,
  });

  Ayahs copyWith({
    int? ayah,
    int? surah,
    String? text,
  }) {
    return Ayahs(
      ayah: ayah ?? this.ayah,
      surah: surah ?? this.surah,
      text: text ?? this.text,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ayah': ayah,
      'surah': surah,
      'text': text,
    };
  }

  factory Ayahs.fromMap(Map<String, dynamic> map) {
    return Ayahs(
      ayah: map['ayah'] as int,
      surah: map['surah'] as int,
      text: map['text'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Ayahs.fromJson(String source) =>
      Ayahs.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Ayahs(ayah: $ayah, surah: $surah, text: $text)';

  @override
  bool operator ==(covariant Ayahs other) {
    if (identical(this, other)) return true;

    return other.ayah == ayah && other.surah == surah && other.text == text;
  }

  @override
  int get hashCode => ayah.hashCode ^ surah.hashCode ^ text.hashCode;
}

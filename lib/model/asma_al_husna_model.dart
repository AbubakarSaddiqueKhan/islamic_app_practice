// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class AsmaAlHusnaModel {
  int code;
  String status;
  List<Data> data;
  AsmaAlHusnaModel({
    required this.code,
    required this.status,
    required this.data,
  });

  AsmaAlHusnaModel copyWith({
    int? code,
    String? status,
    List<Data>? data,
  }) {
    return AsmaAlHusnaModel(
      code: code ?? this.code,
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'status': status,
      'data': data.map((x) => x.toMap()).toList(),
    };
  }

  factory AsmaAlHusnaModel.fromMap(Map<String, dynamic> map) {
    return AsmaAlHusnaModel(
      code: map['code'] as int,
      status: map['status'] as String,
      data: List<Data>.from(
        (map['data'] as List<dynamic>).map<Data>(
          (x) => Data.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory AsmaAlHusnaModel.fromJson(String source) =>
      AsmaAlHusnaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'AsmaAlHusnaModel(code: $code, status: $status, data: $data)';

  @override
  bool operator ==(covariant AsmaAlHusnaModel other) {
    if (identical(this, other)) return true;

    return other.code == code &&
        other.status == status &&
        listEquals(other.data, data);
  }

  @override
  int get hashCode => code.hashCode ^ status.hashCode ^ data.hashCode;
}

class Data {
  String name;
  String transliteration;
  int number;
  En en;
  Data({
    required this.name,
    required this.transliteration,
    required this.number,
    required this.en,
  });

  Data copyWith({
    String? name,
    String? transliteration,
    int? number,
    En? en,
  }) {
    return Data(
      name: name ?? this.name,
      transliteration: transliteration ?? this.transliteration,
      number: number ?? this.number,
      en: en ?? this.en,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'transliteration': transliteration,
      'number': number,
      'en': en.toMap(),
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      name: map['name'] as String,
      transliteration: map['transliteration'] as String,
      number: map['number'] as int,
      en: En.fromMap(map['en'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) =>
      Data.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Data(name: $name, transliteration: $transliteration, number: $number, en: $en)';
  }

  @override
  bool operator ==(covariant Data other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.transliteration == transliteration &&
        other.number == number &&
        other.en == en;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        transliteration.hashCode ^
        number.hashCode ^
        en.hashCode;
  }
}

class En {
  String meaning;
  En({
    required this.meaning,
  });

  En copyWith({
    String? meaning,
  }) {
    return En(
      meaning: meaning ?? this.meaning,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meaning': meaning,
    };
  }

  factory En.fromMap(Map<String, dynamic> map) {
    return En(
      meaning: map['meaning'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory En.fromJson(String source) =>
      En.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'En(meaning: $meaning)';

  @override
  bool operator ==(covariant En other) {
    if (identical(this, other)) return true;

    return other.meaning == meaning;
  }

  @override
  int get hashCode => meaning.hashCode;
}

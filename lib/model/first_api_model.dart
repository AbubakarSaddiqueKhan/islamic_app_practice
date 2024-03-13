// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class FirstApiModel {
  int code;
  String status;
  List<Data> data;
  FirstApiModel({
    required this.code,
    required this.status,
    required this.data,
  });

  FirstApiModel copyWith({
    int? code,
    String? status,
    List<Data>? data,
  }) {
    return FirstApiModel(
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

  factory FirstApiModel.fromMap(Map<String, dynamic> map) {
    return FirstApiModel(
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

  factory FirstApiModel.fromJson(String source) =>
      FirstApiModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'FirstApiModel(code: $code, status: $status, data: $data)';

  @override
  bool operator ==(covariant FirstApiModel other) {
    if (identical(this, other)) return true;

    return other.code == code &&
        other.status == status &&
        listEquals(other.data, data);
  }

  @override
  int get hashCode => code.hashCode ^ status.hashCode ^ data.hashCode;
}

class Data {
  String identifier;
  String language;
  String name;
  String englishName;
  String format;
  String type;
  String? direction;
  Data({
    required this.identifier,
    required this.language,
    required this.name,
    required this.englishName,
    required this.format,
    required this.type,
    this.direction,
  });

  Data copyWith({
    String? identifier,
    String? language,
    String? name,
    String? englishName,
    String? format,
    String? type,
    String? direction,
  }) {
    return Data(
      identifier: identifier ?? this.identifier,
      language: language ?? this.language,
      name: name ?? this.name,
      englishName: englishName ?? this.englishName,
      format: format ?? this.format,
      type: type ?? this.type,
      direction: direction ?? this.direction,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identifier': identifier,
      'language': language,
      'name': name,
      'englishName': englishName,
      'format': format,
      'type': type,
      'direction': direction,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      identifier: map['identifier'] as String,
      language: map['language'] as String,
      name: map['name'] as String,
      englishName: map['englishName'] as String,
      format: map['format'] as String,
      type: map['type'] as String,
      direction: map['direction'] != null ? map['direction'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) =>
      Data.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Data(identifier: $identifier, language: $language, name: $name, englishName: $englishName, format: $format, type: $type, direction: $direction)';
  }

  @override
  bool operator ==(covariant Data other) {
    if (identical(this, other)) return true;

    return other.identifier == identifier &&
        other.language == language &&
        other.name == name &&
        other.englishName == englishName &&
        other.format == format &&
        other.type == type &&
        other.direction == direction;
  }

  @override
  int get hashCode {
    return identifier.hashCode ^
        language.hashCode ^
        name.hashCode ^
        englishName.hashCode ^
        format.hashCode ^
        type.hashCode ^
        direction.hashCode;
  }
}

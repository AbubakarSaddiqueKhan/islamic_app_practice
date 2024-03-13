// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/foundation.dart';

class AllHadithModel {
  List<Data> data;
  Meta meta;
  AllHadithModel({
    required this.data,
    required this.meta,
  });

  AllHadithModel copyWith({
    List<Data>? data,
    Meta? meta,
  }) {
    return AllHadithModel(
      data: data ?? this.data,
      meta: meta ?? this.meta,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data.map((x) => x.toMap()).toList(),
      'meta': meta.toMap(),
    };
  }

  factory AllHadithModel.fromMap(Map<String, dynamic> map) {
    return AllHadithModel(
      data: List<Data>.from(
        (map['data'] as List<dynamic>).map<Data>(
          (x) => Data.fromMap(x as Map<String, dynamic>),
        ),
      ),
      meta: Meta.fromMap(map['meta'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory AllHadithModel.fromJson(String source) =>
      AllHadithModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AllHadithModel(data: $data, meta: $meta)';

  @override
  bool operator ==(covariant AllHadithModel other) {
    if (identical(this, other)) return true;

    return listEquals(other.data, data) && other.meta == meta;
  }

  @override
  int get hashCode => data.hashCode ^ meta.hashCode;
}

class Data {
  String id;
  String title;
  List<String> translations;
  Data({
    required this.id,
    required this.title,
    required this.translations,
  });

  Data copyWith({
    String? id,
    String? title,
    List<String>? translations,
  }) {
    return Data(
      id: id ?? this.id,
      title: title ?? this.title,
      translations: translations ?? this.translations,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'translations': translations,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      id: map['id'] as String,
      title: map['title'] as String,
      translations: List<String>.from((map['translations'] as List<dynamic>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) =>
      Data.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Data(id: $id, title: $title, translations: $translations)';

  @override
  bool operator ==(covariant Data other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        listEquals(other.translations, translations);
  }

  @override
  int get hashCode => id.hashCode ^ title.hashCode ^ translations.hashCode;
}

class Meta {
  dynamic currentPage;
  dynamic lastPage;
  dynamic totalItems;
  dynamic perPage;
  Meta({
    required this.currentPage,
    required this.lastPage,
    required this.totalItems,
    required this.perPage,
  });

  Meta copyWith({
    dynamic currentPage,
    dynamic lastPage,
    dynamic totalItems,
    dynamic perPage,
  }) {
    return Meta(
      currentPage: currentPage ?? this.currentPage,
      lastPage: lastPage ?? this.lastPage,
      totalItems: totalItems ?? this.totalItems,
      perPage: perPage ?? this.perPage,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentPage': currentPage,
      'lastPage': lastPage,
      'totalItems': totalItems,
      'perPage': perPage,
    };
  }

  factory Meta.fromMap(Map<String, dynamic> map) {
    return Meta(
      currentPage: map['currentPage'] as dynamic,
      lastPage: map['lastPage'] as dynamic,
      totalItems: map['totalItems'] as dynamic,
      perPage: map['perPage'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory Meta.fromJson(String source) =>
      Meta.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Meta(currentPage: $currentPage, lastPage: $lastPage, totalItems: $totalItems, perPage: $perPage)';
  }

  @override
  bool operator ==(covariant Meta other) {
    if (identical(this, other)) return true;

    return other.currentPage == currentPage &&
        other.lastPage == lastPage &&
        other.totalItems == totalItems &&
        other.perPage == perPage;
  }

  @override
  int get hashCode {
    return currentPage.hashCode ^
        lastPage.hashCode ^
        totalItems.hashCode ^
        perPage.hashCode;
  }
}

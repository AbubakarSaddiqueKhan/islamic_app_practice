// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

// Outer Model { }

class ZikarOAzkarModel {
// Inner Data classes (model's) .
  List<dynamic> fluffy;
  List<Empty> tentacled;
  List<Empty> indigo;
  List<Empty> indecent;
  List<Empty> sticky;
  List<Empty> purple;
  List<Empty> tafseerApi;
  List<Empty> empty;
  ZikarOAzkarModel({
    required this.fluffy,
    required this.tentacled,
    required this.indigo,
    required this.indecent,
    required this.sticky,
    required this.purple,
    required this.tafseerApi,
    required this.empty,
  });

  ZikarOAzkarModel copyWith({
    List<dynamic>? fluffy,
    List<Empty>? tentacled,
    List<Empty>? indigo,
    List<Empty>? indecent,
    List<Empty>? sticky,
    List<Empty>? purple,
    List<Empty>? tafseerApi,
    List<Empty>? empty,
  }) {
    return ZikarOAzkarModel(
      fluffy: fluffy ?? this.fluffy,
      tentacled: tentacled ?? this.tentacled,
      indigo: indigo ?? this.indigo,
      indecent: indecent ?? this.indecent,
      sticky: sticky ?? this.sticky,
      purple: purple ?? this.purple,
      tafseerApi: tafseerApi ?? this.tafseerApi,
      empty: empty ?? this.empty,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fluffy': fluffy,
      'tentacled': tentacled.map((x) => x.toMap()).toList(),
      'indigo': indigo.map((x) => x.toMap()).toList(),
      'indecent': indecent.map((x) => x.toMap()).toList(),
      'sticky': sticky.map((x) => x.toMap()).toList(),
      'purple': purple.map((x) => x.toMap()).toList(),
      'tafseerApi': tafseerApi.map((x) => x.toMap()).toList(),
      'empty': empty.map((x) => x.toMap()).toList(),
    };
  }

  factory ZikarOAzkarModel.fromMap(Map<String, dynamic> map) {
    return ZikarOAzkarModel(
      fluffy: List<dynamic>.from((map['أذكار الصباح'] as List<dynamic>)),
      tentacled: List<Empty>.from(
        (map['أذكار المساء'] as List<dynamic>).map<Empty>(
          (x) => Empty.fromMap(x as Map<String, dynamic>),
        ),
      ),
      indigo: List<Empty>.from(
        (map['أذكار بعد السلام من الصلاة المفروضة'] as List<dynamic>)
            .map<Empty>(
          (x) => Empty.fromMap(x as Map<String, dynamic>),
        ),
      ),
      indecent: List<Empty>.from(
        (map['تسابيح'] as List<dynamic>).map<Empty>(
          (x) => Empty.fromMap(x as Map<String, dynamic>),
        ),
      ),
      sticky: List<Empty>.from(
        (map['أذكار النوم'] as List<dynamic>).map<Empty>(
          (x) => Empty.fromMap(x as Map<String, dynamic>),
        ),
      ),
      purple: List<Empty>.from(
        (map['أذكار الاستيقاظ'] as List<dynamic>).map<Empty>(
          (x) => Empty.fromMap(x as Map<String, dynamic>),
        ),
      ),
      tafseerApi: List<Empty>.from(
        (map['أدعية قرآنية'] as List<dynamic>).map<Empty>(
          (x) => Empty.fromMap(x as Map<String, dynamic>),
        ),
      ),
      empty: List<Empty>.from(
        (map['أدعية الأنبياء'] as List<dynamic>).map<Empty>(
          (x) => Empty.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ZikarOAzkarModel.fromJson(String source) =>
      ZikarOAzkarModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ZikarOAzkarModel(fluffy: $fluffy, tentacled: $tentacled, indigo: $indigo, indecent: $indecent, sticky: $sticky, purple: $purple, tafseerApi: $tafseerApi, empty: $empty)';
  }

  @override
  bool operator ==(covariant ZikarOAzkarModel other) {
    if (identical(this, other)) return true;

    return listEquals(other.fluffy, fluffy) &&
        listEquals(other.tentacled, tentacled) &&
        listEquals(other.indigo, indigo) &&
        listEquals(other.indecent, indecent) &&
        listEquals(other.sticky, sticky) &&
        listEquals(other.purple, purple) &&
        listEquals(other.tafseerApi, tafseerApi) &&
        listEquals(other.empty, empty);
  }

  @override
  int get hashCode {
    return fluffy.hashCode ^
        tentacled.hashCode ^
        indigo.hashCode ^
        indecent.hashCode ^
        sticky.hashCode ^
        purple.hashCode ^
        tafseerApi.hashCode ^
        empty.hashCode;
  }
}

class Empty {
  String? category;
  String? count;
  String? description;
  String? reference;
  String? content;
  Empty({
    this.category,
    this.count,
    this.description,
    this.reference,
    this.content,
  });

  Empty copyWith({
    String? category,
    String? count,
    String? description,
    String? reference,
    String? content,
  }) {
    return Empty(
      category: category ?? this.category,
      count: count ?? this.count,
      description: description ?? this.description,
      reference: reference ?? this.reference,
      content: content ?? this.content,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'count': count,
      'description': description,
      'reference': reference,
      'content': content,
    };
  }

  factory Empty.fromMap(Map<String, dynamic> map) {
    return Empty(
      category: map['category'] != null ? map['category'] as String : null,
      count: map['count'] != null ? map['count'] as String : null,
      description:
          map['description'] != null ? map['description'] as String : null,
      reference: map['reference'] != null ? map['reference'] as String : null,
      content: map['content'] != null ? map['content'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Empty.fromJson(String source) =>
      Empty.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Empty(category: $category, count: $count, description: $description, reference: $reference, content: $content)';
  }

  @override
  bool operator ==(covariant Empty other) {
    if (identical(this, other)) return true;

    return other.category == category &&
        other.count == count &&
        other.description == description &&
        other.reference == reference &&
        other.content == content;
  }

  @override
  int get hashCode {
    return category.hashCode ^
        count.hashCode ^
        description.hashCode ^
        reference.hashCode ^
        content.hashCode;
  }
}



/**
 * 
 * 
 * factory ZikarOAzkarModel.fromJson(Map<String, dynamic> json) {
    return ZikarOAzkarModel(
      fluffy: json["أذكار الصباح"] == null
          ? []
          : List<dynamic>.from(json["أذكار الصباح"]!.map((x) => x)),
      tentacled: json["أذكار المساء"] == null
          ? []
          : List<Empty>.from(
              json["أذكار المساء"]!.map((x) => Empty.fromJson(x))),
      indigo: json["أذكار بعد السلام من الصلاة المفروضة"] == null
          ? []
          : List<Empty>.from(json["أذكار بعد السلام من الصلاة المفروضة"]!
              .map((x) => Empty.fromJson(x))),
      indecent: json["تسابيح"] == null
          ? []
          : List<Empty>.from(json["تسابيح"]!.map((x) => Empty.fromJson(x))),
      sticky: json["أذكار النوم"] == null
          ? []
          : List<Empty>.from(
              json["أذكار النوم"]!.map((x) => Empty.fromJson(x))),
      purple: json["أذكار الاستيقاظ"] == null
          ? []
          : List<Empty>.from(
              json["أذكار الاستيقاظ"]!.map((x) => Empty.fromJson(x))),
      tafseerApi: json["أدعية قرآنية"] == null
          ? []
          : List<Empty>.from(
              json["أدعية قرآنية"]!.map((x) => Empty.fromJson(x))),
      empty: json["أدعية الأنبياء"] == null
          ? []
          : List<Empty>.from(
              json["أدعية الأنبياء"]!.map((x) => Empty.fromJson(x))),
    );
  }



//////////////////////


factory Empty.fromJson(Map<String, dynamic> json) {
    return Empty(
      category: json["category"],
      count: json["count"],
      description: json["description"],
      reference: json["reference"],
      content: json["content"],
    );
  }

 */
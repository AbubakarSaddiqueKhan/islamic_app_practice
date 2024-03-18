// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class HadithAllCategoriesModel {
  String id;
  String title;
  String? hadeethsCount;
  String? parentId;
  HadithAllCategoriesModel({
    required this.id,
    required this.title,
    required this.hadeethsCount,
    required this.parentId,
  });

  HadithAllCategoriesModel copyWith({
    String? id,
    String? title,
    String? hadeethsCount,
    String? parentId,
  }) {
    return HadithAllCategoriesModel(
      id: id ?? this.id,
      title: title ?? this.title,
      hadeethsCount: hadeethsCount ?? this.hadeethsCount,
      parentId: parentId ?? this.parentId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'hadeethsCount': hadeethsCount,
      'parentId': parentId,
    };
  }

  factory HadithAllCategoriesModel.fromMap(Map<String, dynamic> map) {
    return HadithAllCategoriesModel(
      id: map['id'] as String,
      title: map['title'] as String,
      hadeethsCount: map['hadeethsCount'] as String?,
      parentId: map['parentId'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory HadithAllCategoriesModel.fromJson(String source) =>
      HadithAllCategoriesModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UrduTranslatedHadithAllCategoriesModel(id: $id, title: $title, hadeethsCount: $hadeethsCount, parentId: $parentId)';
  }

  @override
  bool operator ==(covariant HadithAllCategoriesModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.hadeethsCount == hadeethsCount &&
        other.parentId == parentId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        hadeethsCount.hashCode ^
        parentId.hashCode;
  }
}

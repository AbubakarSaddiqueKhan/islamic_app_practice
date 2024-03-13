// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';

// import 'package:flutter/foundation.dart';

// class UrduTranslatedQuranApiModel {
//   List<Result> result;
//   UrduTranslatedQuranApiModel({
//     required this.result,
//   });

//   UrduTranslatedQuranApiModel copyWith({
//     List<Result>? result,
//   }) {
//     return UrduTranslatedQuranApiModel(
//       result: result ?? this.result,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'result': result.map((x) => x.toMap()).toList(),
//     };
//   }

//   factory UrduTranslatedQuranApiModel.fromMap(Map<String, dynamic> map) {
//     return UrduTranslatedQuranApiModel(
//       result: List<Result>.from(
//         (map['result'] as List<dynamic>).map<Result>(
//           (x) => Result.fromMap(x as Map<String, dynamic>),
//         ),
//       ),
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory UrduTranslatedQuranApiModel.fromJson(String source) =>
//       UrduTranslatedQuranApiModel.fromMap(
//           json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'UrduTranslatedQuranApiModel(result: $result)';

//   @override
//   bool operator ==(covariant UrduTranslatedQuranApiModel other) {
//     if (identical(this, other)) return true;

//     return listEquals(other.result, result);
//   }

//   @override
//   int get hashCode => result.hashCode;
// }

// class Result {
//   String id;
//   String sura;
//   String aya;
//   String? arabicText;
//   String translation;
//   String footnotes;
//   Result({
//     required this.id,
//     required this.sura,
//     required this.aya,
//     required this.arabicText,
//     required this.translation,
//     required this.footnotes,
//   });

//   Result copyWith({
//     String? id,
//     String? sura,
//     String? aya,
//     String? arabicText,
//     String? translation,
//     String? footnotes,
//   }) {
//     return Result(
//       id: id ?? this.id,
//       sura: sura ?? this.sura,
//       aya: aya ?? this.aya,
//       arabicText: arabicText ?? this.arabicText,
//       translation: translation ?? this.translation,
//       footnotes: footnotes ?? this.footnotes,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'id': id,
//       'sura': sura,
//       'aya': aya,
//       'arabicText': arabicText,
//       'translation': translation,
//       'footnotes': footnotes,
//     };
//   }

//   factory Result.fromMap(Map<String, dynamic> map) {
//     return Result(
//       id: map['id'] as String,
//       sura: map['sura'] as String,
//       aya: map['aya'] as String,
//       arabicText: map['arabicText'] as String?,
//       translation: map['translation'] as String,
//       footnotes: map['footnotes'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory Result.fromJson(String source) =>
//       Result.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() {
//     return 'Result(id: $id, sura: $sura, aya: $aya, arabicText: $arabicText, translation: $translation, footnotes: $footnotes)';
//   }

//   @override
//   bool operator ==(covariant Result other) {
//     if (identical(this, other)) return true;

//     return other.id == id &&
//         other.sura == sura &&
//         other.aya == aya &&
//         other.arabicText == arabicText &&
//         other.translation == translation &&
//         other.footnotes == footnotes;
//   }

//   @override
//   int get hashCode {
//     return id.hashCode ^
//         sura.hashCode ^
//         aya.hashCode ^
//         arabicText.hashCode ^
//         translation.hashCode ^
//         footnotes.hashCode;
//   }
// }

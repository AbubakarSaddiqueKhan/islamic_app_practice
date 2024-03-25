// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PracticeIslamModel {
  String practiceIslamEnglishName;
  String practiceIslamUrduName;
  PracticeIslamModel({
    required this.practiceIslamEnglishName,
    required this.practiceIslamUrduName,
  });

  PracticeIslamModel copyWith({
    String? practiceIslamEnglishName,
    String? practiceIslamUrduName,
  }) {
    return PracticeIslamModel(
      practiceIslamEnglishName:
          practiceIslamEnglishName ?? this.practiceIslamEnglishName,
      practiceIslamUrduName:
          practiceIslamUrduName ?? this.practiceIslamUrduName,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'practiceIslamEnglishName': practiceIslamEnglishName,
      'practiceIslamUrduName': practiceIslamUrduName,
    };
  }

  factory PracticeIslamModel.fromMap(Map<String, dynamic> map) {
    return PracticeIslamModel(
      practiceIslamEnglishName: map['practiceIslamEnglishName'] as String,
      practiceIslamUrduName: map['practiceIslamUrduName'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PracticeIslamModel.fromJson(String source) =>
      PracticeIslamModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'PracticeIslamModel(practiceIslamEnglishName: $practiceIslamEnglishName, practiceIslamUrduName: $practiceIslamUrduName)';

  @override
  bool operator ==(covariant PracticeIslamModel other) {
    if (identical(this, other)) return true;

    return other.practiceIslamEnglishName == practiceIslamEnglishName &&
        other.practiceIslamUrduName == practiceIslamUrduName;
  }

  @override
  int get hashCode =>
      practiceIslamEnglishName.hashCode ^ practiceIslamUrduName.hashCode;
}

List<PracticeIslamModel> practiceIslamTypes = <PracticeIslamModel>[
  PracticeIslamModel(
      practiceIslamEnglishName: "Faith", practiceIslamUrduName: "شہادت"),
  PracticeIslamModel(
      practiceIslamEnglishName: "Prayer", practiceIslamUrduName: "نماز"),
  PracticeIslamModel(
      practiceIslamEnglishName: "Zakat", practiceIslamUrduName: "زکوٰۃ"),
  PracticeIslamModel(
      practiceIslamEnglishName: "Fasting", practiceIslamUrduName: "روزہ"),
  PracticeIslamModel(
      practiceIslamEnglishName: "Pilgrimage", practiceIslamUrduName: "حج"),
  PracticeIslamModel(
      practiceIslamEnglishName: "Jihad", practiceIslamUrduName: "جہاد"),
  PracticeIslamModel(
      practiceIslamEnglishName: "Funeral prayer",
      practiceIslamUrduName: "نماز جنازہ"),
];

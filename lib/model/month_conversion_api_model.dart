// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class MonthConversionModel {
  int code;
  String status;
  List<Data> data;
  MonthConversionModel({
    required this.code,
    required this.status,
    required this.data,
  });

  MonthConversionModel copyWith({
    int? code,
    String? status,
    List<Data>? data,
  }) {
    return MonthConversionModel(
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

  factory MonthConversionModel.fromMap(Map<String, dynamic> map) {
    return MonthConversionModel(
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

  factory MonthConversionModel.fromJson(String source) =>
      MonthConversionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'DateConversionModel(code: $code, status: $status, data: $data)';

  @override
  bool operator ==(covariant MonthConversionModel other) {
    if (identical(this, other)) return true;

    return other.code == code &&
        other.status == status &&
        listEquals(other.data, data);
  }

  @override
  int get hashCode => code.hashCode ^ status.hashCode ^ data.hashCode;
}

class Data {
  Hijri hijri;
  Gregorian gregorian;
  Data({
    required this.hijri,
    required this.gregorian,
  });

  Data copyWith({
    Hijri? hijri,
    Gregorian? gregorian,
  }) {
    return Data(
      hijri: hijri ?? this.hijri,
      gregorian: gregorian ?? this.gregorian,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hijri': hijri.toMap(),
      'gregorian': gregorian.toMap(),
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      hijri: Hijri.fromMap(map['hijri'] as Map<String, dynamic>),
      gregorian: Gregorian.fromMap(map['gregorian'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Data.fromJson(String source) =>
      Data.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Data(hijri: $hijri, gregorian: $gregorian)';

  @override
  bool operator ==(covariant Data other) {
    if (identical(this, other)) return true;

    return other.hijri == hijri && other.gregorian == gregorian;
  }

  @override
  int get hashCode => hijri.hashCode ^ gregorian.hashCode;
}

class Hijri {
  String date;
  String format;
  String day;
  Weekday weekday;
  Month month;
  String year;
  Designation designation;
  List<dynamic> holidays;
  Hijri({
    required this.date,
    required this.format,
    required this.day,
    required this.weekday,
    required this.month,
    required this.year,
    required this.designation,
    required this.holidays,
  });

  Hijri copyWith({
    String? date,
    String? format,
    String? day,
    Weekday? weekday,
    Month? month,
    String? year,
    Designation? designation,
    List<dynamic>? holidays,
  }) {
    return Hijri(
      date: date ?? this.date,
      format: format ?? this.format,
      day: day ?? this.day,
      weekday: weekday ?? this.weekday,
      month: month ?? this.month,
      year: year ?? this.year,
      designation: designation ?? this.designation,
      holidays: holidays ?? this.holidays,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'format': format,
      'day': day,
      'weekday': weekday.toMap(),
      'month': month.toMap(),
      'year': year,
      'designation': designation.toMap(),
      'holidays': holidays,
    };
  }

  factory Hijri.fromMap(Map<String, dynamic> map) {
    return Hijri(
        date: map['date'] as String,
        format: map['format'] as String,
        day: map['day'] as String,
        weekday: Weekday.fromMap(map['weekday'] as Map<String, dynamic>),
        month: Month.fromMap(map['month'] as Map<String, dynamic>),
        year: map['year'] as String,
        designation:
            Designation.fromMap(map['designation'] as Map<String, dynamic>),
        holidays: List<dynamic>.from(
          (map['holidays'] as List<dynamic>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Hijri.fromJson(String source) =>
      Hijri.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Hijri(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation, holidays: $holidays)';
  }

  @override
  bool operator ==(covariant Hijri other) {
    if (identical(this, other)) return true;

    return other.date == date &&
        other.format == format &&
        other.day == day &&
        other.weekday == weekday &&
        other.month == month &&
        other.year == year &&
        other.designation == designation &&
        listEquals(other.holidays, holidays);
  }

  @override
  int get hashCode {
    return date.hashCode ^
        format.hashCode ^
        day.hashCode ^
        weekday.hashCode ^
        month.hashCode ^
        year.hashCode ^
        designation.hashCode ^
        holidays.hashCode;
  }
}

class Weekday {
  String en;
  String? ar;
  Weekday({
    required this.en,
    required this.ar,
  });

  Weekday copyWith({
    String? en,
    String? ar,
  }) {
    return Weekday(
      en: en ?? this.en,
      ar: ar ?? this.ar,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'en': en,
      'ar': ar,
    };
  }

  factory Weekday.fromMap(Map<String, dynamic> map) {
    return Weekday(
      en: map['en'] as String,
      ar: map['ar'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory Weekday.fromJson(String source) =>
      Weekday.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Weekday(en: $en, ar: $ar)';

  @override
  bool operator ==(covariant Weekday other) {
    if (identical(this, other)) return true;

    return other.en == en && other.ar == ar;
  }

  @override
  int get hashCode => en.hashCode ^ ar.hashCode;
}

class Month {
  int number;
  String en;
  String? ar;
  Month({
    required this.number,
    required this.en,
    required this.ar,
  });

  Month copyWith({
    int? number,
    String? en,
    String? ar,
  }) {
    return Month(
      number: number ?? this.number,
      en: en ?? this.en,
      ar: ar ?? this.ar,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'number': number,
      'en': en,
      'ar': ar,
    };
  }

  factory Month.fromMap(Map<String, dynamic> map) {
    return Month(
      number: map['number'] as int,
      en: map['en'] as String,
      ar: map['ar'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory Month.fromJson(String source) =>
      Month.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Month(number: $number, en: $en, ar: $ar)';

  @override
  bool operator ==(covariant Month other) {
    if (identical(this, other)) return true;

    return other.number == number && other.en == en && other.ar == ar;
  }

  @override
  int get hashCode => number.hashCode ^ en.hashCode ^ ar.hashCode;
}

class Designation {
  String abbreviated;
  String expanded;
  Designation({
    required this.abbreviated,
    required this.expanded,
  });

  Designation copyWith({
    String? abbreviated,
    String? expanded,
  }) {
    return Designation(
      abbreviated: abbreviated ?? this.abbreviated,
      expanded: expanded ?? this.expanded,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abbreviated': abbreviated,
      'expanded': expanded,
    };
  }

  factory Designation.fromMap(Map<String, dynamic> map) {
    return Designation(
      abbreviated: map['abbreviated'] as String,
      expanded: map['expanded'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Designation.fromJson(String source) =>
      Designation.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'Designation(abbreviated: $abbreviated, expanded: $expanded)';

  @override
  bool operator ==(covariant Designation other) {
    if (identical(this, other)) return true;

    return other.abbreviated == abbreviated && other.expanded == expanded;
  }

  @override
  int get hashCode => abbreviated.hashCode ^ expanded.hashCode;
}

class Gregorian {
  String date;
  String format;
  String day;
  Weekday weekday;
  Month month;
  String year;
  Designation designation;
  Gregorian({
    required this.date,
    required this.format,
    required this.day,
    required this.weekday,
    required this.month,
    required this.year,
    required this.designation,
  });

  Gregorian copyWith({
    String? date,
    String? format,
    String? day,
    Weekday? weekday,
    Month? month,
    String? year,
    Designation? designation,
  }) {
    return Gregorian(
      date: date ?? this.date,
      format: format ?? this.format,
      day: day ?? this.day,
      weekday: weekday ?? this.weekday,
      month: month ?? this.month,
      year: year ?? this.year,
      designation: designation ?? this.designation,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date,
      'format': format,
      'day': day,
      'weekday': weekday.toMap(),
      'month': month.toMap(),
      'year': year,
      'designation': designation.toMap(),
    };
  }

  factory Gregorian.fromMap(Map<String, dynamic> map) {
    return Gregorian(
      date: map['date'] as String,
      format: map['format'] as String,
      day: map['day'] as String,
      weekday: Weekday.fromMap(map['weekday'] as Map<String, dynamic>),
      month: Month.fromMap(map['month'] as Map<String, dynamic>),
      year: map['year'] as String,
      designation:
          Designation.fromMap(map['designation'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Gregorian.fromJson(String source) =>
      Gregorian.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Gregorian(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation)';
  }

  @override
  bool operator ==(covariant Gregorian other) {
    if (identical(this, other)) return true;

    return other.date == date &&
        other.format == format &&
        other.day == day &&
        other.weekday == weekday &&
        other.month == month &&
        other.year == year &&
        other.designation == designation;
  }

  @override
  int get hashCode {
    return date.hashCode ^
        format.hashCode ^
        day.hashCode ^
        weekday.hashCode ^
        month.hashCode ^
        year.hashCode ^
        designation.hashCode;
  }
}



/////////////////////////////

// class AutoGenerate {
//   AutoGenerate({
//     required this.code,
//     required this.status,
//     required this.data,
//   });
//   late final int code;
//   late final String status;
//   late final List<Data> data;
  
//   AutoGenerate.fromJson(Map<String, dynamic> json){
//     code = json['code'];
//     status = json['status'];
//     data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['code'] = code;
//     _data['status'] = status;
//     _data['data'] = data.map((e)=>e.toJson()).toList();
//     return _data;
//   }
// }

// class Data {
//   Data({
//     required this.hijri,
//     required this.gregorian,
//   });
//   late final Hijri hijri;
//   late final Gregorian gregorian;
  
//   Data.fromJson(Map<String, dynamic> json){
//     hijri = Hijri.fromJson(json['hijri']);
//     gregorian = Gregorian.fromJson(json['gregorian']);
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['hijri'] = hijri.toJson();
//     _data['gregorian'] = gregorian.toJson();
//     return _data;
//   }
// }

// class Hijri {
//   Hijri({
//     required this.date,
//     required this.format,
//     required this.day,
//     required this.weekday,
//     required this.month,
//     required this.year,
//     required this.designation,
//     required this.holidays,
//   });
//   late final String date;
//   late final String format;
//   late final String day;
//   late final Weekday weekday;
//   late final Month month;
//   late final String year;
//   late final Designation designation;
//   late final List<String> holidays;
  
//   Hijri.fromJson(Map<String, dynamic> json){
//     date = json['date'];
//     format = json['format'];
//     day = json['day'];
//     weekday = Weekday.fromJson(json['weekday']);
//     month = Month.fromJson(json['month']);
//     year = json['year'];
//     designation = Designation.fromJson(json['designation']);
//     holidays = List.castFrom<dynamic, String>(json['holidays']);
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['date'] = date;
//     _data['format'] = format;
//     _data['day'] = day;
//     _data['weekday'] = weekday.toJson();
//     _data['month'] = month.toJson();
//     _data['year'] = year;
//     _data['designation'] = designation.toJson();
//     _data['holidays'] = holidays;
//     return _data;
//   }
// }

// class Weekday {
//   Weekday({
//     required this.en,
//     required this.ar,
//   });
//   late final String en;
//   late final String ar;
  
//   Weekday.fromJson(Map<String, dynamic> json){
//     en = json['en'];
//     ar = json['ar'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['en'] = en;
//     _data['ar'] = ar;
//     return _data;
//   }
// }

// class Month {
//   Month({
//     required this.number,
//     required this.en,
//     required this.ar,
//   });
//   late final int number;
//   late final String en;
//   late final String ar;
  
//   Month.fromJson(Map<String, dynamic> json){
//     number = json['number'];
//     en = json['en'];
//     ar = json['ar'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['number'] = number;
//     _data['en'] = en;
//     _data['ar'] = ar;
//     return _data;
//   }
// }

// class Designation {
//   Designation({
//     required this.abbreviated,
//     required this.expanded,
//   });
//   late final String abbreviated;
//   late final String expanded;
  
//   Designation.fromJson(Map<String, dynamic> json){
//     abbreviated = json['abbreviated'];
//     expanded = json['expanded'];
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['abbreviated'] = abbreviated;
//     _data['expanded'] = expanded;
//     return _data;
//   }
// }

// class Gregorian {
//   Gregorian({
//     required this.date,
//     required this.format,
//     required this.day,
//     required this.weekday,
//     required this.month,
//     required this.year,
//     required this.designation,
//   });
//   late final String date;
//   late final String format;
//   late final String day;
//   late final Weekday weekday;
//   late final Month month;
//   late final String year;
//   late final Designation designation;
  
//   Gregorian.fromJson(Map<String, dynamic> json){
//     date = json['date'];
//     format = json['format'];
//     day = json['day'];
//     weekday = Weekday.fromJson(json['weekday']);
//     month = Month.fromJson(json['month']);
//     year = json['year'];
//     designation = Designation.fromJson(json['designation']);
//   }

//   Map<String, dynamic> toJson() {
//     final _data = <String, dynamic>{};
//     _data['date'] = date;
//     _data['format'] = format;
//     _data['day'] = day;
//     _data['weekday'] = weekday.toJson();
//     _data['month'] = month.toJson();
//     _data['year'] = year;
//     _data['designation'] = designation.toJson();
//     return _data;
//   }
// }
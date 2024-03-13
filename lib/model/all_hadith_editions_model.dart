// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class AllHadithEditionsModel {
  Abudawud abudawud;
  Abuhanifa abuhanifa;
  Bukhari bukhari;
  Dehlawi dehlawi;
  Ibnmajah ibnmajah;
  Owner? owner;
  Muslim muslim;
  // Know know;
  Nawawi nawawi;
  Qudsi qudsi;
  dynamic Tirmidhi;
  AllHadithEditionsModel({
    required this.abudawud,
    required this.abuhanifa,
    required this.bukhari,
    required this.dehlawi,
    required this.ibnmajah,
    // required this.owner,
    required this.muslim,
    // required this.know,
    required this.nawawi,
    required this.qudsi,
    required this.Tirmidhi,
  });

  AllHadithEditionsModel copyWith({
    Abudawud? abudawud,
    Abuhanifa? abuhanifa,
    Bukhari? bukhari,
    Dehlawi? dehlawi,
    Ibnmajah? ibnmajah,
    // Owner? owner,
    Muslim? muslim,
    // Know? know,
    Nawawi? nawawi,
    Qudsi? qudsi,
    dynamic? Tirmidhi,
  }) {
    return AllHadithEditionsModel(
      abudawud: abudawud ?? this.abudawud,
      abuhanifa: abuhanifa ?? this.abuhanifa,
      bukhari: bukhari ?? this.bukhari,
      dehlawi: dehlawi ?? this.dehlawi,
      ibnmajah: ibnmajah ?? this.ibnmajah,
      // owner: owner ?? this.owner,
      muslim: muslim ?? this.muslim,
      // know: know ?? this.know,
      nawawi: nawawi ?? this.nawawi,
      qudsi: qudsi ?? this.qudsi,
      Tirmidhi: Tirmidhi ?? this.Tirmidhi,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'abudawud': abudawud.toMap(),
      'abuhanifa': abuhanifa.toMap(),
      'bukhari': bukhari.toMap(),
      'dehlawi': dehlawi.toMap(),
      'ibnmajah': ibnmajah.toMap(),
      // 'owner': owner?.toMap(),
      'muslim': muslim.toMap(),
      // 'know': know.toMap(),
      'nawawi': nawawi.toMap(),
      'qudsi': qudsi.toMap(),
      'Tirmidhi': Tirmidhi,
    };
  }

  factory AllHadithEditionsModel.fromMap(Map<String, dynamic> map) {
    return AllHadithEditionsModel(
      abudawud: Abudawud.fromMap(map['abudawud'] as Map<String, dynamic>),
      abuhanifa: Abuhanifa.fromMap(map['abuhanifa'] as Map<String, dynamic>),
      bukhari: Bukhari.fromMap(map['bukhari'] as Map<String, dynamic>),
      dehlawi: Dehlawi.fromMap(map['dehlawi'] as Map<String, dynamic>),
      ibnmajah: Ibnmajah.fromMap(map['ibnmajah'] as Map<String, dynamic>),
      // owner: Owner.fromMap(map['owner'] as Map<String, dynamic>),
      muslim: Muslim.fromMap(map['muslim'] as Map<String, dynamic>),
      // know: Know.fromMap(map['know'] as Map<String, dynamic>),
      nawawi: Nawawi.fromMap(map['nawawi'] as Map<String, dynamic>),
      qudsi: Qudsi.fromMap(map['qudsi'] as Map<String, dynamic>),
      Tirmidhi: map['Tirmidhi'] as dynamic,
    );
  }

  String toJson() => json.encode(toMap());

  factory AllHadithEditionsModel.fromJson(String source) =>
      AllHadithEditionsModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'AllHadithEditionsModel(abudawud: $abudawud, abuhanifa: $abuhanifa, bukhari: $bukhari, dehlawi: $dehlawi, ibnmajah: $ibnmajah, muslim: $muslim, nawawi: $nawawi, qudsi: $qudsi, Tirmidhi: $Tirmidhi)';
  }

  @override
  bool operator ==(covariant AllHadithEditionsModel other) {
    if (identical(this, other)) return true;

    return other.abudawud == abudawud &&
        other.abuhanifa == abuhanifa &&
        other.bukhari == bukhari &&
        other.dehlawi == dehlawi &&
        other.ibnmajah == ibnmajah &&
        other.owner == owner &&
        other.muslim == muslim &&
        // other.know == know &&
        other.nawawi == nawawi &&
        other.qudsi == qudsi &&
        other.Tirmidhi == Tirmidhi;
  }

  @override
  int get hashCode {
    return abudawud.hashCode ^
        abuhanifa.hashCode ^
        bukhari.hashCode ^
        dehlawi.hashCode ^
        ibnmajah.hashCode ^
        owner.hashCode ^
        muslim.hashCode ^
        // know.hashCode ^
        nawawi.hashCode ^
        qudsi.hashCode ^
        Tirmidhi.hashCode;
  }
}

class Abudawud {
  String name;
  List<Collection> collection;
  Abudawud({
    required this.name,
    required this.collection,
  });

  Abudawud copyWith({
    String? name,
    List<Collection>? collection,
  }) {
    return Abudawud(
      name: name ?? this.name,
      collection: collection ?? this.collection,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'collection': collection.map((x) => x.toMap()).toList(),
    };
  }

  factory Abudawud.fromMap(Map<String, dynamic> map) {
    return Abudawud(
      name: map['name'] as String,
      collection: List<Collection>.from(
        (map['collection'] as List<dynamic>).map<Collection>(
          (x) => Collection.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Abudawud.fromJson(String source) =>
      Abudawud.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Abudawud(name: $name, collection: $collection)';

  @override
  bool operator ==(covariant Abudawud other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.collection, collection);
  }

  @override
  int get hashCode => name.hashCode ^ collection.hashCode;
}

class Collection {
  String name;
  String book;
  String author;
  String language;
  dynamic hasSections;
  String direction;
  String source;
  String comments;
  String link;
  String linkmin;
  Collection({
    required this.name,
    required this.book,
    required this.author,
    required this.language,
    required this.hasSections,
    required this.direction,
    required this.source,
    required this.comments,
    required this.link,
    required this.linkmin,
  });

  Collection copyWith({
    String? name,
    String? book,
    String? author,
    String? language,
    dynamic hasSections,
    String? direction,
    String? source,
    String? comments,
    String? link,
    String? linkmin,
  }) {
    return Collection(
      name: name ?? this.name,
      book: book ?? this.book,
      author: author ?? this.author,
      language: language ?? this.language,
      hasSections: hasSections ?? this.hasSections,
      direction: direction ?? this.direction,
      source: source ?? this.source,
      comments: comments ?? this.comments,
      link: link ?? this.link,
      linkmin: linkmin ?? this.linkmin,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'book': book,
      'author': author,
      'language': language,
      'hasSections': hasSections,
      'direction': direction,
      'source': source,
      'comments': comments,
      'link': link,
      'linkmin': linkmin,
    };
  }

  factory Collection.fromMap(Map<String, dynamic> map) {
    return Collection(
      name: map['name'] as String,
      book: map['book'] as String,
      author: map['author'] as String,
      language: map['language'] as String,
      hasSections: map['hasSections'] as dynamic,
      direction: map['direction'] as String,
      source: map['source'] as String,
      comments: map['comments'] as String,
      link: map['link'] as String,
      linkmin: map['linkmin'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Collection.fromJson(String source) =>
      Collection.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Collection(name: $name, book: $book, author: $author, language: $language, hasSections: $hasSections, direction: $direction, source: $source, comments: $comments, link: $link, linkmin: $linkmin)';
  }

  @override
  bool operator ==(covariant Collection other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.book == book &&
        other.author == author &&
        other.language == language &&
        other.hasSections == hasSections &&
        other.direction == direction &&
        other.source == source &&
        other.comments == comments &&
        other.link == link &&
        other.linkmin == linkmin;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        book.hashCode ^
        author.hashCode ^
        language.hashCode ^
        hasSections.hashCode ^
        direction.hashCode ^
        source.hashCode ^
        comments.hashCode ^
        link.hashCode ^
        linkmin.hashCode;
  }
}

class Abuhanifa {
  String name;
  List<Collection> collection;
  Abuhanifa({
    required this.name,
    required this.collection,
  });

  Abuhanifa copyWith({
    String? name,
    List<Collection>? collection,
  }) {
    return Abuhanifa(
      name: name ?? this.name,
      collection: collection ?? this.collection,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'collection': collection.map((x) => x.toMap()).toList(),
    };
  }

  factory Abuhanifa.fromMap(Map<String, dynamic> map) {
    return Abuhanifa(
      name: map['name'] as String,
      collection: List<Collection>.from(
        (map['collection'] as List<dynamic>).map<Collection>(
          (x) => Collection.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Abuhanifa.fromJson(String source) =>
      Abuhanifa.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Abuhanifa(name: $name, collection: $collection)';

  @override
  bool operator ==(covariant Abuhanifa other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.collection, collection);
  }

  @override
  int get hashCode => name.hashCode ^ collection.hashCode;
}

class Bukhari {
  String name;
  List<Collection> collection;
  Bukhari({
    required this.name,
    required this.collection,
  });

  Bukhari copyWith({
    String? name,
    List<Collection>? collection,
  }) {
    return Bukhari(
      name: name ?? this.name,
      collection: collection ?? this.collection,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'collection': collection.map((x) => x.toMap()).toList(),
    };
  }

  factory Bukhari.fromMap(Map<String, dynamic> map) {
    return Bukhari(
      name: map['name'] as String,
      collection: List<Collection>.from(
        (map['collection'] as List<dynamic>).map<Collection>(
          (x) => Collection.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Bukhari.fromJson(String source) =>
      Bukhari.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Bukhari(name: $name, collection: $collection)';

  @override
  bool operator ==(covariant Bukhari other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.collection, collection);
  }

  @override
  int get hashCode => name.hashCode ^ collection.hashCode;
}

class Dehlawi {
  String name;
  List<Collection> collection;
  Dehlawi({
    required this.name,
    required this.collection,
  });

  Dehlawi copyWith({
    String? name,
    List<Collection>? collection,
  }) {
    return Dehlawi(
      name: name ?? this.name,
      collection: collection ?? this.collection,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'collection': collection.map((x) => x.toMap()).toList(),
    };
  }

  factory Dehlawi.fromMap(Map<String, dynamic> map) {
    return Dehlawi(
      name: map['name'] as String,
      collection: List<Collection>.from(
        (map['collection'] as List<dynamic>).map<Collection>(
          (x) => Collection.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Dehlawi.fromJson(String source) =>
      Dehlawi.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Dehlawi(name: $name, collection: $collection)';

  @override
  bool operator ==(covariant Dehlawi other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.collection, collection);
  }

  @override
  int get hashCode => name.hashCode ^ collection.hashCode;
}

class Ibnmajah {
  String name;
  List<Collection> collection;
  Ibnmajah({
    required this.name,
    required this.collection,
  });

  Ibnmajah copyWith({
    String? name,
    List<Collection>? collection,
  }) {
    return Ibnmajah(
      name: name ?? this.name,
      collection: collection ?? this.collection,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'collection': collection.map((x) => x.toMap()).toList(),
    };
  }

  factory Ibnmajah.fromMap(Map<String, dynamic> map) {
    return Ibnmajah(
      name: map['name'] as String,
      collection: List<Collection>.from(
        (map['collection'] as List<dynamic>).map<Collection>(
          (x) => Collection.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Ibnmajah.fromJson(String source) =>
      Ibnmajah.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Ibnmajah(name: $name, collection: $collection)';

  @override
  bool operator ==(covariant Ibnmajah other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.collection, collection);
  }

  @override
  int get hashCode => name.hashCode ^ collection.hashCode;
}

class Owner {
  String name;
  List<Collection> collection;
  Owner({
    required this.name,
    required this.collection,
  });

  Owner copyWith({
    String? name,
    List<Collection>? collection,
  }) {
    return Owner(
      name: name ?? this.name,
      collection: collection ?? this.collection,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'collection': collection.map((x) => x.toMap()).toList(),
    };
  }

  factory Owner.fromMap(Map<String, dynamic> map) {
    return Owner(
      name: map['name'] as String,
      collection: List<Collection>.from(
        (map['collection'] as List<int>).map<Collection>(
          (x) => Collection.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Owner.fromJson(String source) =>
      Owner.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Owner(name: $name, collection: $collection)';

  @override
  bool operator ==(covariant Owner other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.collection, collection);
  }

  @override
  int get hashCode => name.hashCode ^ collection.hashCode;
}

class Muslim {
  String name;
  List<Collection> collection;
  Muslim({
    required this.name,
    required this.collection,
  });

  Muslim copyWith({
    String? name,
    List<Collection>? collection,
  }) {
    return Muslim(
      name: name ?? this.name,
      collection: collection ?? this.collection,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'collection': collection.map((x) => x.toMap()).toList(),
    };
  }

  factory Muslim.fromMap(Map<String, dynamic> map) {
    return Muslim(
      name: map['name'] as String,
      collection: List<Collection>.from(
        (map['collection'] as List<dynamic>).map<Collection>(
          (x) => Collection.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Muslim.fromJson(String source) =>
      Muslim.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Muslim(name: $name, collection: $collection)';

  @override
  bool operator ==(covariant Muslim other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.collection, collection);
  }

  @override
  int get hashCode => name.hashCode ^ collection.hashCode;
}

class Know {
  String name;
  List<Collection> collection;
  Know({
    required this.name,
    required this.collection,
  });

  Know copyWith({
    String? name,
    List<Collection>? collection,
  }) {
    return Know(
      name: name ?? this.name,
      collection: collection ?? this.collection,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'collection': collection.map((x) => x.toMap()).toList(),
    };
  }

  factory Know.fromMap(Map<String, dynamic> map) {
    return Know(
      name: map['name'] as String,
      collection: List<Collection>.from(
        (map['collection'] as List<int>).map<Collection>(
          (x) => Collection.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Know.fromJson(String source) =>
      Know.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Know(name: $name, collection: $collection)';

  @override
  bool operator ==(covariant Know other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.collection, collection);
  }

  @override
  int get hashCode => name.hashCode ^ collection.hashCode;
}

class Nawawi {
  String name;
  List<Collection> collection;
  Nawawi({
    required this.name,
    required this.collection,
  });

  Nawawi copyWith({
    String? name,
    List<Collection>? collection,
  }) {
    return Nawawi(
      name: name ?? this.name,
      collection: collection ?? this.collection,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'collection': collection.map((x) => x.toMap()).toList(),
    };
  }

  factory Nawawi.fromMap(Map<String, dynamic> map) {
    return Nawawi(
      name: map['name'] as String,
      collection: List<Collection>.from(
        (map['collection'] as List<dynamic>).map<Collection>(
          (x) => Collection.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Nawawi.fromJson(String source) =>
      Nawawi.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Nawawi(name: $name, collection: $collection)';

  @override
  bool operator ==(covariant Nawawi other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.collection, collection);
  }

  @override
  int get hashCode => name.hashCode ^ collection.hashCode;
}

class Qudsi {
  String name;
  List<Collection> collection;
  Qudsi({
    required this.name,
    required this.collection,
  });

  Qudsi copyWith({
    String? name,
    List<Collection>? collection,
  }) {
    return Qudsi(
      name: name ?? this.name,
      collection: collection ?? this.collection,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'collection': collection.map((x) => x.toMap()).toList(),
    };
  }

  factory Qudsi.fromMap(Map<String, dynamic> map) {
    return Qudsi(
      name: map['name'] as String,
      collection: List<Collection>.from(
        (map['collection'] as List<dynamic>).map<Collection>(
          (x) => Collection.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Qudsi.fromJson(String source) =>
      Qudsi.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Qudsi(name: $name, collection: $collection)';

  @override
  bool operator ==(covariant Qudsi other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.collection, collection);
  }

  @override
  int get hashCode => name.hashCode ^ collection.hashCode;
}

class Tirmidhi {
  String name;
  List<Collection> collection;
  Tirmidhi({
    required this.name,
    required this.collection,
  });

  Tirmidhi copyWith({
    String? name,
    List<Collection>? collection,
  }) {
    return Tirmidhi(
      name: name ?? this.name,
      collection: collection ?? this.collection,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'collection': collection.map((x) => x.toMap()).toList(),
    };
  }

  factory Tirmidhi.fromMap(Map<String, dynamic> map) {
    return Tirmidhi(
      name: map['name'] as String,
      collection: List<Collection>.from(
        (map['collection'] as List<int>).map<Collection>(
          (x) => Collection.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Tirmidhi.fromJson(String source) =>
      Tirmidhi.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Tirmidhi(name: $name, collection: $collection)';

  @override
  bool operator ==(covariant Tirmidhi other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.collection, collection);
  }

  @override
  int get hashCode => name.hashCode ^ collection.hashCode;
}

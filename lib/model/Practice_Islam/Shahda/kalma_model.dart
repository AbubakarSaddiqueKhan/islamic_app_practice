// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class IslamicKalmaModel {
  String islamicKalmaEnglishName;
  String islamicKalmaUrduName;
  String islamicKalmaArabicLanguageText;
  String islamicKalmaEnglishLanguageText;
  String islamicKalmaUrduLanguageText;
  String islamicKalmaAudioUrlPath;
  IslamicKalmaModel({
    required this.islamicKalmaEnglishName,
    required this.islamicKalmaUrduName,
    required this.islamicKalmaArabicLanguageText,
    required this.islamicKalmaEnglishLanguageText,
    required this.islamicKalmaUrduLanguageText,
    required this.islamicKalmaAudioUrlPath,
  });

  IslamicKalmaModel copyWith({
    String? islamicKalmaEnglishName,
    String? islamicKalmaUrduName,
    String? islamicKalmaArabicLanguageText,
    String? islamicKalmaEnglishLanguageText,
    String? islamicKalmaUrduLanguageText,
    String? islamicKalmaAudioUrlPath,
  }) {
    return IslamicKalmaModel(
      islamicKalmaEnglishName:
          islamicKalmaEnglishName ?? this.islamicKalmaEnglishName,
      islamicKalmaUrduName: islamicKalmaUrduName ?? this.islamicKalmaUrduName,
      islamicKalmaArabicLanguageText:
          islamicKalmaArabicLanguageText ?? this.islamicKalmaArabicLanguageText,
      islamicKalmaEnglishLanguageText: islamicKalmaEnglishLanguageText ??
          this.islamicKalmaEnglishLanguageText,
      islamicKalmaUrduLanguageText:
          islamicKalmaUrduLanguageText ?? this.islamicKalmaUrduLanguageText,
      islamicKalmaAudioUrlPath:
          islamicKalmaAudioUrlPath ?? this.islamicKalmaAudioUrlPath,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'islamicKalmaEnglishName': islamicKalmaEnglishName,
      'islamicKalmaUrduName': islamicKalmaUrduName,
      'islamicKalmaArabicLanguageText': islamicKalmaArabicLanguageText,
      'islamicKalmaEnglishLanguageText': islamicKalmaEnglishLanguageText,
      'islamicKalmaUrduLanguageText': islamicKalmaUrduLanguageText,
      'islamicKalmaAudioUrlPath': islamicKalmaAudioUrlPath,
    };
  }

  factory IslamicKalmaModel.fromMap(Map<String, dynamic> map) {
    return IslamicKalmaModel(
      islamicKalmaEnglishName: map['islamicKalmaEnglishName'] as String,
      islamicKalmaUrduName: map['islamicKalmaUrduName'] as String,
      islamicKalmaArabicLanguageText:
          map['islamicKalmaArabicLanguageText'] as String,
      islamicKalmaEnglishLanguageText:
          map['islamicKalmaEnglishLanguageText'] as String,
      islamicKalmaUrduLanguageText:
          map['islamicKalmaUrduLanguageText'] as String,
      islamicKalmaAudioUrlPath: map['islamicKalmaAudioUrlPath'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory IslamicKalmaModel.fromJson(String source) =>
      IslamicKalmaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'IslamicKalmaModel(islamicKalmaEnglishName: $islamicKalmaEnglishName, islamicKalmaUrduName: $islamicKalmaUrduName, islamicKalmaArabicLanguageText: $islamicKalmaArabicLanguageText, islamicKalmaEnglishLanguageText: $islamicKalmaEnglishLanguageText, islamicKalmaUrduLanguageText: $islamicKalmaUrduLanguageText, islamicKalmaAudioUrlPath: $islamicKalmaAudioUrlPath)';
  }

  @override
  bool operator ==(covariant IslamicKalmaModel other) {
    if (identical(this, other)) return true;

    return other.islamicKalmaEnglishName == islamicKalmaEnglishName &&
        other.islamicKalmaUrduName == islamicKalmaUrduName &&
        other.islamicKalmaArabicLanguageText ==
            islamicKalmaArabicLanguageText &&
        other.islamicKalmaEnglishLanguageText ==
            islamicKalmaEnglishLanguageText &&
        other.islamicKalmaUrduLanguageText == islamicKalmaUrduLanguageText &&
        other.islamicKalmaAudioUrlPath == islamicKalmaAudioUrlPath;
  }

  @override
  int get hashCode {
    return islamicKalmaEnglishName.hashCode ^
        islamicKalmaUrduName.hashCode ^
        islamicKalmaArabicLanguageText.hashCode ^
        islamicKalmaEnglishLanguageText.hashCode ^
        islamicKalmaUrduLanguageText.hashCode ^
        islamicKalmaAudioUrlPath.hashCode;
  }
}

List<IslamicKalmaModel> allSixIslamicKalmas = <IslamicKalmaModel>[
  IslamicKalmaModel(
      islamicKalmaEnglishName: "Purity",
      islamicKalmaUrduName: "كَلِمَةُ اَلطَّيِّبَة",
      islamicKalmaArabicLanguageText:
          "لَآ اِلٰهَ اِلَّا اللّٰهُ مُحَمَّدٌ رَّسُوْلُ اللّٰهِ ؕ",
      islamicKalmaEnglishLanguageText:
          " There is no God but Allah Muhammad is the messenger of Allah",
      islamicKalmaUrduLanguageText:
          "الله کے سوا کوئ معبود نہیں، محمد صلہ الله علیہ وسلم الله کے رسول ہیں",
      islamicKalmaAudioUrlPath: "assets/first_kalam.mp3"),
  IslamicKalmaModel(
      islamicKalmaEnglishName: "Word of Evidence",
      islamicKalmaUrduName: "كَلِمَةُ اَلشَّهَادَة",
      islamicKalmaArabicLanguageText:
          "اَشْهَدُ اَنْ لَّآ اِلٰهَ اِلَّا اللّٰهُ وَحْدَهٗ لَا شَرِيْكَ لَهٗ وَاَشْهَدُ اَنَّ مُحَمَّدًا عَبْدُهٗ وَرَسُوْلُهٗ ؕ",
      islamicKalmaEnglishLanguageText:
          "I bear witness that (there is) no god except Allah; One is He, no partner hath He, and I bear witness that Muhammad [PBUH] is His Servant and Messenger",
      islamicKalmaUrduLanguageText:
          "میں گواہی دیتا ہو کہ اللہ کے سوا کوئی معبود نہیں وہ اکیلا ہے اسکا کوئی شریک نہیں اور میں گواہی دیتا ہو کہ محمد ﷺ اسکے بندے اور رسول ہیں",
      islamicKalmaAudioUrlPath: "assets/second_kalma.mp3"),
  IslamicKalmaModel(
      islamicKalmaEnglishName: "Word of Majesty",
      islamicKalmaUrduName: "كَلِمَةُ اَلتَّمْجِيدْ",
      islamicKalmaArabicLanguageText:
          "سُبْحَانَ اللّٰهِ وَالْحَمْدُ لِلّٰهِ وَلَآ اِلٰهَ اِلَّااللّٰهُ وَاللّٰهُ اَكْبَرُ ؕ وَلَآ حَوْلَ وَلَا قُوَّةَ اِلَّا بِاللّٰهِ الْعَلِىِّ الْعَظِيْم",
      islamicKalmaEnglishLanguageText:
          "Glory is to Allah, and all praise is to Allah, and there is none worthy of worship but Allah, and Allah is great, and power and strength are from Allah alone. (Who) is the owner of great glory and majesty.",
      islamicKalmaUrduLanguageText:
          "اللہ کی ذات پاک ہے اور سب تعریفے اللہ کیلئے ہے اور اللہ کے سوا کوئی معبود نہیں اور اللہ بہت بڑا ہے گناہو سے بچنے کی طاقت اور نیک کام کرنے کی توفیق نہیں مگر کی جانب سے جو بہت بلند اور عظمت والا ہے۔",
      islamicKalmaAudioUrlPath: "assets/third_kalma.mp3"),
  IslamicKalmaModel(
      islamicKalmaEnglishName: "Word of Oneness",
      islamicKalmaUrduName: "كَلِمَةُ اَلتَّوْحِيدْ",
      islamicKalmaArabicLanguageText:
          "لَآ اِلٰهَ اِلَّا اللّٰهُ وَحْدَهٗ لَا شَرِيْكَ لَهٗ لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ يُحْىٖ وَيُمِيْتُ وَهُوَ حَئٌّ لَّا يَمُوْتُ اَبَدًا اَبَدًاؕ ذُوالْجَلَالِ وَالْاِكْرَامِؕ بِيَدِهِ الْخَيْرُ وَهُوَ عَلٰى كُلِّ شَىْءٍ قَدِیْرٌ ؕ",
      islamicKalmaEnglishLanguageText:
          "(There is) none worthy of worship except Allah. He is only One. (There is) no partners for Him. For Him (is) the Kingdom. And for Him (is) the Praise. He gives life and causes death. And He (is) Alive. He will not die, never, ever. Possessor of Majesty and Reverence. In His hand (is) the goodness. And He (is) the goodness. And He (is) on everything powerful.",
      islamicKalmaUrduLanguageText:
          "اللہ کے سوا کوئی معبود نہیں وہ اکیلا ہے اسکا کوئی شریک نہیں، اسی کی بادشاہی ہے اور اس کے لیے تمام تعریفے ہے۔ وہ زندہ کرتا ہے اور وہ مرواتا ہے۔ اور وہ ہمیشہ کیلئے زندہ ہے وہ مرے گا نہیں عظمت اور بزرگی والا ہے ، بہتری اسی کے ہاتھ میں ہے اور ہر چیز پر قادر ہے۔",
      islamicKalmaAudioUrlPath: "assets/forth_kalma.mp3"),
  IslamicKalmaModel(
      islamicKalmaEnglishName: "Word of Penitence",
      islamicKalmaUrduName: "كَلِمَةُ إِسْتِغْفَارْ",
      islamicKalmaArabicLanguageText:
          "اَسْتَغْفِرُ اللّٰهَ رَبِّىْ مِنْ كُلِّ ذَنْۢبٍ اَذْنَبْتُهٗ عَمَدًا اَوْ خَطَاءً سِرًّا اَوْعَلَانِيَةً وَّاَتُوْبُ اِلَيْهِ مِنَ الذَّنْۢبِ الَّذِیْٓ اَعْلَمُ وَمِنَ الذَّنْۢبِ الَّذِىْ لَآ اَعْلَمُ اِنَّكَ اَنْتَ عَلَّامُ الْغُيُوْبِ وَسَتَّارُ الْعُيُوْبِ وَغَفَّارُ الذُّنُوْبِ وَلَا حَوْلَ وَلَا قُوَّةَ اِلَّا بِاللّٰهِ الْعَلِىِّ الْعَظِيْم ؕ",
      islamicKalmaEnglishLanguageText:
          "I seek forgiveness from Allah, who is my lord, from every guilt I committed knowingly or unknowingly, secretly or confidentially, and I repent in him court from the sin which I know and the sin which i don’t know, Certainly You (O Allah!), You (are) the knower of the hidden things and concealer (of) the mistakes and the Forgiver (of) the sins. And no power and no strength except from ALLAH, the Most High, the most Great.",
      islamicKalmaUrduLanguageText:
          "معافی مانگتا ہو اے میرے اللہ ہر گناہ سے جو میں نے جان بوجھ کر کی ہے یا بھول کر کی ہے ،در پردہ یا کھلم کھلا اور میں توبہ کرتا ہو اسکے حضور میں اس گناہ سے جو مجھے معلوم ہے اور اس گناہ سے جو مجھے معلوم نہیں،بے شک تو عیبوں کو جاننے والے اور عیبوں کو چھپانے والا ہے، اور گناہوں سے بخشنے والا ہے اور گناہوں سے بچنے کی طاقت اور نیک کام کرنے کی طاقت اللہ ہی کی طرف سے ہے۔ جو عالی شان اور عظمت والا ہے۔",
      islamicKalmaAudioUrlPath: "assets/fifth_kalma.mp3"),
  IslamicKalmaModel(
      islamicKalmaEnglishName: "Word of Rejection of Disbelief",
      islamicKalmaUrduName: "كَلِمَةُ رَدّْ اَلْكُفْرْ",
      islamicKalmaArabicLanguageText:
          "اَللّٰهُمَّ اِنّىِ اَعُوْذُبِكَ مِنْ اَنْ اُشْرِكَ بِكَ شَيْئًا وَّاَنَآ اَعْلَمُ بِهٖ وَاَسْتَغْفِرُكَ لِمَا لَآ اَعْلَمُ بِهٖ تُبْتُ عَنْهُ وَتَبَرَّأْتُ مِنَ الْكُفْرِ وَالشِّرْكِ وَالْكِذْبِ وَالْغِيْبَةِ وَالْبِدْعَةِ وَالنَّمِيْمَةِ وَالْفَوَاحِشِ وَالْبُهْتَانِ وَالْمَعَاصِىْ كُلِّهَا وَاَسْلَمْتُ وَاَقُوْلُ لَآ اِلٰهَ اِلَّا اللّٰهُ مُحَمَّدٌ رَّسُوْلُ اللّٰهِ ؕ",
      islamicKalmaEnglishLanguageText:
          "O, Allah! I seek refuge in You from that should ascribe any partner with You knowingly. Seek Your forgiveness for the sin of which I have no knowledge. I repent from it. And becoming disgusted by disbelief and idolatry, lying and backbiting, innovation and slander, lewdness and abomination, and all other acts of disobedience, I submit to Your will. I believe and declare that there is none worthy of worship except Allah and Muhammad is the Messenger of Allah",
      islamicKalmaUrduLanguageText:
          "آے اللہ میں پناہ مانگتا ہو اس بات سے کہ میں کسی شے کو تیرا شریک بناو جان بوجھ کر،اور بخشش مانگتاہو میں تم سے اس کام کی جو میں جانتا نہیں ہواور میں نے اس سے توبہ کیا اور بیزار ہوا کفر سے، شرک سے، اور جھوٹ سے، اور غیبت سے، اور بدعت سے ، اور چغلی سے ، اور بے حیائی سے، اور بہتان سے اور تمام گناہو سے اور میں اسلام لایا اور میں کہتا ہوکہ اللہ کے سوا کوئی معبود نہیں اور محمد ﷺ اللہ کے رسول ہے۔",
      islamicKalmaAudioUrlPath: "assets/sixth_kalma.mp3")
];

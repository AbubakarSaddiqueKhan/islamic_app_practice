// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PropheticWayOfPrayerModel {
  int id;
  String arabicText;
  String urduText;
  String englishText;
  String reference;
  PropheticWayOfPrayerModel({
    required this.id,
    required this.arabicText,
    required this.urduText,
    required this.englishText,
    required this.reference,
  });

  PropheticWayOfPrayerModel copyWith({
    int? id,
    String? arabicText,
    String? urduText,
    String? englishText,
    String? reference,
  }) {
    return PropheticWayOfPrayerModel(
      id: id ?? this.id,
      arabicText: arabicText ?? this.arabicText,
      urduText: urduText ?? this.urduText,
      englishText: englishText ?? this.englishText,
      reference: reference ?? this.reference,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'arabicText': arabicText,
      'urduText': urduText,
      'englishText': englishText,
      'reference': reference,
    };
  }

  factory PropheticWayOfPrayerModel.fromMap(Map<String, dynamic> map) {
    return PropheticWayOfPrayerModel(
      id: map['id'] as int,
      arabicText: map['arabicText'] as String,
      urduText: map['urduText'] as String,
      englishText: map['englishText'] as String,
      reference: map['reference'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PropheticWayOfPrayerModel.fromJson(String source) =>
      PropheticWayOfPrayerModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PropheticWayOfHadithModel(id: $id, arabicText: $arabicText, urduText: $urduText, englishText: $englishText, reference: $reference)';
  }

  @override
  bool operator ==(covariant PropheticWayOfPrayerModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.arabicText == arabicText &&
        other.urduText == urduText &&
        other.englishText == englishText &&
        other.reference == reference;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        arabicText.hashCode ^
        urduText.hashCode ^
        englishText.hashCode ^
        reference.hashCode;
  }
}

List<PropheticWayOfPrayerModel> takbirETahreemaHadithList =
    <PropheticWayOfPrayerModel>[
  PropheticWayOfPrayerModel(
      id: 1,
      arabicText:
          "حَدَّثَنِي مُحَمَّدُ بْنُ رَافِعٍ، حَدَّثَنَا حُجَيْنٌ، - وَهُوَ ابْنُ الْمُثَنَّى - حَدَّثَنَا اللَّيْثُ، عَنْ عُقَيْلٍ، ح وَحَدَّثَنِي مُحَمَّدُ بْنُ عَبْدِ اللَّهِ بْنِ قُهْزَاذَ، حَدَّثَنَا سَلَمَةُ بْنُ سُلَيْمَانَ، أَخْبَرَنَا يُونُسُ، كِلاَهُمَا عَنِ الزُّهْرِيِّ، بِهَذَا الإِسْنَادِ كَمَا قَالَ ابْنُ جُرَيْجٍ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ لِلصَّلاَةِ رَفَعَ يَدَيْهِ حَتَّى تَكُونَا حَذْوَ مَنْكِبَيْهِ ثُمَّ كَبَّرَ ",
      urduText:
          "یہ حدیث اسی سلسلہ کی سند کے ساتھ ال نے نقل کی ہے۔ زہری جیسا کہ ابن جریج نے روایت کیا ہے۔ رسول اللہ صلی اللہ علیہ وسلم جب نماز کے لیے کھڑے ہوتے تو دونوں ہاتھ کندھوں پر اٹھاتے اور پھر تکبیر پڑھتے۔",
      englishText:
          "This hadith has been transmitted with the same chain of transmitters by al. Zuhri as narrated by Ibn Juraij (who) said. When the Messenger of Allah (ﷺ) stood up for prayer, he raised hands (to the height) apposite the shoulders and then recited takbir.",
      reference: "Sahih Muslim 390 - C"),
  PropheticWayOfPrayerModel(
      id: 2,
      arabicText:
          "وَحَدَّثَنَاهُ مُحَمَّدُ بْنُ الْمُثَنَّى، حَدَّثَنَا ابْنُ أَبِي عَدِيٍّ، عَنْ سَعِيدٍ، عَنْ قَتَادَةَ، بِهَذَا الإِسْنَادِ أَنَّهُ رَأَى نَبِيَّ اللَّهِ صلى الله عليه وسلم وَقَالَ حَتَّى يُحَاذِيَ بِهِمَا فُرُوعَ أُذُنَيْهِ ",
      urduText:
          "اس حدیث کو قتادہ نے اسی سلسلہ سے روایت کیا ہے کہ انہوں نے رسول اللہ صلی اللہ علیہ وسلم کو ایسا کرتے ہوئے دیکھا (یعنی ہاتھ اٹھائے) یہاں تک کہ وہ کانوں کی لو کے مخالف تھے۔",
      englishText:
          "This hadith has been transmitted by Qatada with the same chain of transmitters that he saw the Messenger of Allah (ﷺ) doing this (i.e. raising his hands) till they were opposite the lobes of ears",
      reference: "Sahih Muslim 391 - C"),
  PropheticWayOfPrayerModel(
      id: 3,
      arabicText:
          "حَدَّثَنَا عَلِيُّ بْنُ مُحَمَّدٍ الطَّنَافِسِيُّ، حَدَّثَنَا أَبُو أُسَامَةَ، حَدَّثَنِي عَبْدُ الْحَمِيدِ بْنُ جَعْفَرٍ، حَدَّثَنَا مُحَمَّدُ بْنُ عَمْرِو بْنِ عَطَاءٍ، قَالَ سَمِعْتُ أَبَا حُمَيْدٍ السَّاعِدِيَّ، يَقُولُ كَانَ رَسُولُ اللَّهِ ـ صلى الله عليه وسلم ـ إِذَا قَامَ إِلَى الصَّلَاةِ اسْتَقْبَلَ الْقِبْلَةَ وَرَفَعَ يَدَيْهِ وَقَالَ \" اللَّهُ أَكْبَرُ \"",
      urduText:
          "محمد بن عمرو بن عطاء نے کہا:میں نے ابوحمید السعدی رضی اللہ عنہ کو کہتے سنا: جب رسول اللہ صلی اللہ علیہ وسلم نماز کے لیے کھڑے ہوتے تو نماز کی طرف منہ کرتے، ہاتھ اٹھاتے اور کہتے: اللہ اکبر (اللہ اکبر)۔ \"",
      englishText:
          "Muhammad bin ‘Amr bin ‘Ata’ said:“I heard Abu Humaid As-Sa’idi say: ‘When the Messenger of Allah (ﷺ) stood up for prayer, he would face the prayer direction, raise his hands, and say: “Allahu Akbar (Allah is Most Great).”",
      reference: "Sunan Ibn Majah 803"),
  PropheticWayOfPrayerModel(
      id: 4,
      arabicText:
          "حَدَّثَنَا ابْنُ مُعَاذٍ، حَدَّثَنَا خَالِدُ بْنُ الْحَارِثِ، حَدَّثَنَا حَاتِمٌ، - يَعْنِي ابْنَ أَبِي صَغِيرَةَ - عَنْ سِمَاكٍ، قَالَ سَمِعْتُ النُّعْمَانَ بْنَ بَشِيرٍ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم يُسَوِّي صُفُوفَنَا إِذَا قُمْنَا لِلصَّلاَةِ فَإِذَا اسْتَوَيْنَا كَبَّرَ ‏.‏",
      urduText:
          "نعمان بن بشیر رضی اللہ عنہ روایت کرتے ہیں:رسول اللہ صلی اللہ علیہ وسلم جب ہم نماز کے لیے کھڑے ہوتے تو ہماری صفیں سیدھی کرتے، اور جب ہم سیدھے ہوتے تو فرماتے: اللہ سب سے بڑا (تکبیر) ہے۔",
      englishText:
          "Narrated An-Nu'man ibn Bashir:The Messenger of Allah (ﷺ) used to straighten our rows when we stood up to pray, and when we were straight, he said: Allah is most great (takbir).",
      reference: "Sunan Abi Dawud 665"),
  PropheticWayOfPrayerModel(
      id: 5,
      arabicText:
          "حَدَّثَنَا مُسَدَّدٌ، حَدَّثَنَا يَزِيدُ، - يَعْنِي ابْنَ زُرَيْعٍ - حَدَّثَنَا الْمَسْعُودِيُّ، حَدَّثَنِي عَبْدُ الْجَبَّارِ بْنُ وَائِلٍ، حَدَّثَنِي أَهْلُ، بَيْتِي عَنْ أَبِي أَنَّهُ، حَدَّثَهُمْ أَنَّهُ، رَأَى رَسُولَ اللَّهِ صلى الله عليه وسلم يَرْفَعُ يَدَيْهِ مَعَ التَّكْبِيرَةِ ",
      urduText:
          "وائل بن حجر رضی اللہ عنہ کہتے ہیں کہ میں نے رسول اللہ صلی اللہ علیہ وسلم کو تکبیر کہتے وقت اپنے ہاتھ اٹھاتے دیکھا۔",
      englishText:
          "Wa’il b.Hujr said that he saw the Messenger of Allah(ﷺ) raise his hands when he uttered the takbir (Allah is most great).",
      reference: " Sunan Abi Dawud 725"),
  PropheticWayOfPrayerModel(
      id: 6,
      arabicText:
          "حَدَّثَنَا مُسَدَّدٌ، حَدَّثَنَا يَحْيَى، عَنِ ابْنِ أَبِي ذِئْبٍ، عَنْ سَعِيدِ بْنِ سَمْعَانَ، عَنْ أَبِي هُرَيْرَةَ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا دَخَلَ فِي الصَّلاَةِ رَفَعَ يَدَيْهِ مَدًّا ‏.‏",
      urduText:
          "ابوہریرہ رضی اللہ عنہ روایت کرتے ہیں:جب رسول اللہ صلی اللہ علیہ وسلم نے نماز شروع کی تو اپنے دونوں ہاتھ بڑے زور سے اٹھائے۔",
      englishText:
          "Narrated AbuHurayrah:When the Messenger of Allah (ﷺ) began his prayer, he raised his hands extensively.",
      reference: "Sunan Abi Dawud 753"),
  PropheticWayOfPrayerModel(
      id: 7,
      arabicText:
          "حَدَّثَنِي مُحَمَّدُ بْنُ رَافِعٍ، حَدَّثَنَا عَبْدُ الرَّزَّاقِ، أَخْبَرَنَا ابْنُ جُرَيْجٍ، حَدَّثَنِي ابْنُ شِهَابٍ، عَنْ سَالِمِ بْنِ عَبْدِ اللَّهِ، أَنَّ ابْنَ عُمَرَ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ لِلصَّلاَةِ رَفَعَ يَدَيْهِ حَتَّى تَكُونَا حَذْوَ مَنْكِبَيْهِ ثُمَّ كَبَّرَ فَإِذَا أَرَادَ أَنْ يَرْكَعَ فَعَلَ مِثْلَ ذَلِكَ وَإِذَا رَفَعَ مِنَ الرُّكُوعِ فَعَلَ مِثْلَ ذَلِكَ وَلاَ يَفْعَلُهُ حِينَ يَرْفَعُ رَأْسَهُ مِنَ السُّجُودِ ‏.‏",
      urduText:
          "ابن عمر رضی اللہ عنہما کہتے ہیں کہ رسول اللہ صلی اللہ علیہ وسلم جب نماز کے لیے کھڑے ہوتے تو اپنے دونوں ہاتھ کندھوں پر اٹھاتے، پھر تکبیر کہتے، اور جب رکوع کرنے لگتے تو پھر اسی طرح کرتے۔ اور جب رکوع سے اٹھے تو پھر اسے پسند کیا لیکن سجدے سے سر اٹھاتے وقت ایسا نہیں کیا۔",
      englishText:
          "Ibn Umar reported that the Messenger of Allah (ﷺ), when he stood up for prayer, used to raise his hands apposite the shoulders and then recited takbir (Allah-o-Akbar), and when he was about to bow he again did like it and when he raised himself from the ruku' (bowing posture) he again did like it, but he did not do it at the time of raising his head from prostration.",
      reference: "Sahih Muslim 390 - B"),
  PropheticWayOfPrayerModel(
      id: 8,
      arabicText:
          "وَحَدَّثَنَا يَحْيَى بْنُ يَحْيَى، قَالَ قَرَأْتُ عَلَى مَالِكٍ عَنِ ابْنِ شِهَابٍ، عَنْ أَبِي سَلَمَةَ بْنِ عَبْدِ الرَّحْمَنِ، أَنَّ أَبَا هُرَيْرَةَ، كَانَ يُصَلِّي لَهُمْ فَيُكَبِّرُ كُلَّمَا خَفَضَ وَرَفَعَ فَلَمَّا انْصَرَفَ قَالَ وَاللَّهِ إِنِّي لأَشْبَهُكُمْ صَلاَةً بِرَسُولِ اللَّهِ صلى الله عليه وسلم ",
      urduText:
          "ابو سلمہ نے بیان کیا:ابوہریرہ رضی اللہ عنہ نے ان کے لیے نماز پڑھائی اور رکوع و سجود میں جھکتے اور کھڑے ہونے پر تکبیر پڑھی اور نماز سے فارغ ہونے کے بعد فرمایا: اللہ کی قسم میں نماز کہتا ہوں جو رسول اللہ صلی اللہ علیہ وسلم کی نماز کے ساتھ بہترین مشابہت رکھتی ہے۔ ) آپ کے درمیان۔",
      englishText:
          "Abu Salama reported:Abu Huraira led prayer for them and recited takbir when he bent and raised himself (in ruku' and sujud) and after completing (the prayer) he said: By Allah I say prayer which has the best resemblance with the prayer of the Prophet (ﷺ) amongst you.",
      reference: "Sahih Muslim 392 - A"),
  PropheticWayOfPrayerModel(
      id: 9,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ مِهْرَانَ الرَّازِيُّ، حَدَّثَنَا الْوَلِيدُ بْنُ مُسْلِمٍ، حَدَّثَنَا الأَوْزَاعِيُّ، عَنْ يَحْيَى بْنِ أَبِي كَثِيرٍ، عَنْ أَبِي سَلَمَةَ، أَنَّ أَبَا هُرَيْرَةَ، كَانَ يُكَبِّرُ فِي الصَّلاَةِ كُلَّمَا رَفَعَ وَوَضَعَ . فَقُلْنَا يَا أَبَا هُرَيْرَةَ مَا هَذَا التَّكْبِيرُ قَالَ إِنَّهَا لَصَلاَةُ رَسُولِ اللَّهِ صلى الله عليه وسلم ",
      urduText:
          "ابو سلمہ رضی اللہ عنہ سے روایت ہے کہ ابوہریرہ رضی اللہ عنہ نماز میں اٹھنے اور گھٹنے کے تمام مواقع پر تکبیر پڑھتے تھے۔ ہم نے کہا:اے ابوہریرہ یہ تکبیر کیا ہے؟ اس نے کہا: بے شک یہ رسول اللہ صلی اللہ علیہ وسلم کی دعا ہے۔",
      englishText:
          "Abu Salama reported that Abu Huraira recited takbir in prayer on all occasions of rising and kneeling. We said:O Abu Huraira, what is this takbir? He said: Verily it is the prayer of the Messenger of Allah (ﷺ).",
      reference: "Sahih Muslim 392 - E"),
  PropheticWayOfPrayerModel(
      id: 10,
      arabicText:
          "حَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ، حَدَّثَنَا يَعْقُوبُ، - يَعْنِي ابْنَ عَبْدِ الرَّحْمَنِ - عَنْ سُهَيْلٍ، عَنْ أَبِيهِ، عَنْ أَبِي هُرَيْرَةَ، أَنَّهُ كَانَ يُكَبِّرُ كُلَّمَا خَفَضَ وَرَفَعَ وَيُحَدِّثُ أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم كَانَ يَفْعَلُ ذَلِكَ ‏.‏",
      urduText:
          "سہیل نے اپنے والد سے روایت کی ہے کہ ابوہریرہ رضی اللہ عنہ (نماز میں) اٹھنے اور جھکنے کے تمام مواقع پر تکبیر کہتے تھے اور بیان کیا کہ رسول اللہ صلی اللہ علیہ وسلم ایسا کیا کرتے تھے۔",
      englishText:
          "Suhail reported on the authority of his father that Abu Huraira used to recite takbir on all occasions of rising and bending (in prayer) and narrated that the Messenger of Allah (ﷺ) used to do like that.",
      reference: "Sahih Muslim 392 - F"),
  PropheticWayOfPrayerModel(
      id: 11,
      arabicText:
          "حَدَّثَنَا عُثْمَانُ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا شَرِيكٌ، عَنْ عَاصِمِ بْنِ كُلَيْبٍ، عَنْ أَبِيهِ، عَنْ وَائِلِ بْنِ حُجْرٍ، قَالَ رَأَيْتُ النَّبِيَّ صلى الله عليه وسلم حِينَ افْتَتَحَ الصَّلاَةَ رَفَعَ يَدَيْهِ حِيَالَ أُذُنَيْهِ - قَالَ - ثُمَّ أَتَيْتُهُمْ فَرَأَيْتُهُمْ يَرْفَعُونَ أَيْدِيَهُمْ إِلَى صُدُورِهُمْ فِي افْتِتَاحِ الصَّلاَةِ وَعَلَيْهِمْ بَرَانِسُ وَأَكْسِيَةٌ ",
      urduText:
          "وائل بن حجر کہتے ہیں:میں نے دیکھا کہ رسول اللہ صلی اللہ علیہ وسلم جب نماز شروع کرتے تو اپنے ہاتھ کانوں کے سامنے اٹھاتے۔ میں پھر واپس آیا اور دیکھا کہ جب وہ نماز پڑھنے لگے تو اپنے ہاتھ اپنے سینے تک اٹھائے ہوئے ہیں۔ انہوں نے لمبی ٹوپیاں اور کمبل پہن رکھے تھے۔",
      englishText:
          "Narrated Wa'il ibn Hujr:I witnessed the Prophet (ﷺ) raise his hands in front of his ears when he began to pray. I then came back and saw them (the people) raising their hands up to their chest when they began to pray. They wore long caps and blankets.",
      reference: " Sunan Abi Dawud 728"),
  PropheticWayOfPrayerModel(
      id: 12,
      arabicText:
          "حَدَّثَنَا يَحْيَى بْنُ يَحْيَى، وَخَلَفُ بْنُ هِشَامٍ، جَمِيعًا عَنْ حَمَّادٍ، - قَالَ يَحْيَى أَخْبَرَنَا حَمَّادُ بْنُ زَيْدٍ، - عَنْ غَيْلاَنَ، عَنْ مُطَرِّفٍ، قَالَ صَلَّيْتُ أَنَا وَعِمْرَانُ بْنُ حُصَيْنٍ، خَلْفَ عَلِيِّ بْنِ أَبِي طَالِبٍ فَكَانَ إِذَا سَجَدَ كَبَّرَ وَإِذَا رَفَعَ رَأْسَهُ كَبَّرَ وَإِذَا نَهَضَ مِنَ الرَّكْعَتَيْنِ كَبَّرَ فَلَمَّا انْصَرَفْنَا مِنَ الصَّلاَةِ - قَالَ - أَخَذَ عِمْرَانُ بِيَدِي ثُمَّ قَالَ لَقَدْ صَلَّى بِنَا هَذَا صَلاَةَ مُحَمَّدٍ صلى الله عليه وسلم . أَوْ قَالَ قَدْ ذَكَّرَنِي هَذَا صَلاَةَ مُحَمَّدٍ صلى الله عليه وسلم ",
      urduText:
          "Mutarrif نے رپورٹ کیا:میں اور عمران بی۔ حسین نے علی کے پیچھے نماز پڑھی۔ ابو، طالب۔ اس نے سجدہ کرتے وقت تکبیر کہی اور جب سر اٹھایا تو تکبیر کہی اور (دو رکعت کے آخر میں بیٹھنے کی جگہ سے) اٹھتے ہوئے تکبیر کہی۔ جب ہم نماز سے فارغ ہوئے تو عمران نے میرا ہاتھ پکڑ کر کہا: اس نے (حضرت علی) نے محمد (صلی اللہ علیہ وآلہ وسلم) کی طرح نماز پڑھائی ہے یا فرمایا: درحقیقت اس نے میرے ذہن میں محمد (صلی اللہ علیہ وآلہ وسلم) کی نماز یاد کرائی ہے۔ وہ۔)",
      englishText:
          "Mutarrif reported:I and 'Imran b. Husain said prayer behind 'Ali b. Abu, Talib. He recited takbir when he prostrated, and he recited takbir when he raised his head and he recited takbir while rising up (from the sitting position at the end of two rak'ahs). When we had finished our prayer, 'Imran caught hold of my hand and said: He (Hadrat Ali) has led prayer like Muhammad (ﷺ) or he said: He in fact recalled to my mind the prayer of Muhammad (may peace be upon him.)",
      reference: " Sahih Muslim 393 , Sunan Abi Dawud 835"),
  PropheticWayOfPrayerModel(
      id: 13,
      arabicText:
          "حَدَّثَنَا عَمْرُو بْنُ عُثْمَانَ، حَدَّثَنَا أَبِي وَبَقِيَّةُ، عَنْ شُعَيْبٍ، عَنِ الزُّهْرِيِّ، قَالَ أَخْبَرَنِي أَبُو بَكْرِ بْنُ عَبْدِ الرَّحْمَنِ، وَأَبُو سَلَمَةَ أَنَّ أَبَا هُرَيْرَةَ، كَانَ يُكَبِّرُ فِي كُلِّ صَلاَةٍ مِنَ الْمَكْتُوبَةِ وَغَيْرِهَا يُكَبِّرُ حِينَ يَقُومُ ثُمَّ يُكَبِّرُ حِينَ يَرْكَعُ ثُمَّ يَقُولُ سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ ثُمَّ يَقُولُ رَبَّنَا وَلَكَ الْحَمْدُ قَبْلَ أَنْ يَسْجُدَ ثُمَّ يَقُولُ اللَّهُ أَكْبَرُ حِينَ يَهْوِي سَاجِدًا ثُمَّ يُكَبِّرُ حِينَ يَرْفَعُ رَأْسَهُ ثُمَّ يُكَبِّرُ حِينَ يَسْجُدُ ثُمَّ يُكَبِّرُ حِينَ يَرْفَعُ رَأْسَهُ ثُمَّ يُكَبِّرُ حِينَ يَقُومُ مِنَ الْجُلُوسِ فِي اثْنَتَيْنِ فَيَفْعَلُ ذَلِكَ فِي كُلِّ رَكْعَةٍ حَتَّى يَفْرُغَ مِنَ الصَّلاَةِ ثُمَّ يَقُولُ حِينَ يَنْصَرِفُ وَالَّذِي نَفْسِي بِيَدِهِ إِنِّي لأَقْرَبُكُمْ شَبَهًا بِصَلاَةِ رَسُولِ اللَّهِ صلى الله عليه وسلم إِنْ كَانَتْ هَذِهِ لَصَلاَتُهُ حَتَّى فَارَقَ الدُّنْيَا ‏.‏ قَالَ أَبُو دَاوُدَ هَذَا الْكَلاَمُ الأَخِيرُ يَجْعَلُهُ مَالِكٌ وَالزُّبَيْدِيُّ وَغَيْرُهُمَا عَنِ الزُّهْرِيِّ عَنْ عَلِيِّ بْنِ حُسَيْنٍ وَوَافَقَ عَبْدُ الأَعْلَى عَنْ مَعْمَرٍ شُعَيْبَ بْنَ أَبِي حَمْزَةَ عَنِ الزُّهْرِيِّ ‏.‏",
      urduText:
          "ابوبکر ب۔ عبدالرحمٰن اور ابو سلمہ نے کہا:ابوہریرہ رضی اللہ عنہ ہر نماز میں تکبیر کہتے، خواہ فرض ہو یا غیر فرض، جب کھڑے ہوتے تو تکبیر کہتے، اور رکوع کرتے وقت تکبیر کہتے، پھر کہتے: اللہ اس کی سنتا ہے جو اس کی حمد کرتا ہے۔ ; پھر سجدہ کرنے سے پہلے کہتا۔ \"اے ہمارے رب، تیری حمد ہو\"؛ پھر سجدے میں گرتے ہوئے کہتا: \"اللہ سب سے بڑا ہے\"۔ پھر جب سجدہ کے بعد سر اٹھاتا تو تکبیر کہتا، پھر سجدہ کرتے وقت تکبیر کہتا، اور جب بیٹھنے کے بعد دو رکعت کے آخر میں کھڑا ہوتا تو تکبیر کہتا۔ آپ صلی اللہ علیہ وسلم نماز سے فارغ ہونے تک ہر رکعت میں ایسا کرتے تھے۔ پھر نماز کے آخر میں کہتے: اس ذات کی قسم جس کے ہاتھ میں میری جان ہے، میں ان کی نماز کے معاملے میں رسول اللہ صلی اللہ علیہ وسلم سے زیادہ قریب ہوں۔ ایسی ہی نماز وہ ادا کرتے تھے یہاں تک کہ دنیا سے رخصت ہو گئے۔ابوداؤد کہتے ہیں: مالک، الزبیدی اور دیگر نے روایت کی ہے کہ وہ علی بن حسین رضی اللہ عنہ سے زہری کے آخری الفاظ بناتے ہیں۔ اور اس کی تائید معمر اور شعیب بن عبد العلا کے بیان کردہ ورژن سے ہوتی ہے۔ ابی حمزہ الزہری کی سند پر۔",
      englishText:
          "Abu bakr b. ‘Abd al-Rahman and abu Salamah said:Abu Hurairah would utter the takbir in every prayer, whether obligatory or non-obligatory, He would utter the takbir when he stood, and he would utter the takbir when he bowed, then he would say: “Allah listens to him who praises Him”; he then would say before prostrating himself; “ Our Lord, to Thee be praise”; then he would say while falling in prostration: “Allah is most great”; he then would utter the takbir when he raised his head after prostration, and then utter the takbir when he prostrated, and then utter takbir the takbir when he stood up at the end of two rak’ahs after sitting down. He used to do so in every rak’ah until he finished his prayer. Then he would say at the end of the prayer: By Him in Whose hands lies my life, I am closer to the Messenger of Allah(ﷺ) in respect of his prayer. Such was the prayer he used to offer until he departed from the world.Abu Dawud said: Malik, al-Zubaidi and others have narrated so that they form the last words from al-Zuhri on the authority of ‘Ali b, Husain. And this is supported by the version reported by ‘Abd al-A’la from Ma’mar and SHu’aib b. Abi Hamzah on the authority of Al-Zuhri.",
      reference: "Sunan Abi Dawud 836"),
];

//////////////////
////
///
///
/////
////
///
///
////
////
////
////
///
////
////
////
////
////
////
/////
///
////
///
////
////
////
////
////
///
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////
////
///
///
/////
////
///
///
////
////
////
////
///
////
////
////
////
////
////
/////
///
////
///
////
////
////
////
////
List<PropheticWayOfPrayerModel> propheticWayOfPrayerDataList =
    <PropheticWayOfPrayerModel>[
  PropheticWayOfPrayerModel(
      id: 1,
      arabicText:
          "فَإِذَا قَضَيْتُمُ ٱلصَّلَوٰةَ فَٱذْكُرُوا۟ ٱللَّهَ قِيَـٰمًۭا وَقُعُودًۭا وَعَلَىٰ جُنُوبِكُمْ ۚ فَإِذَا ٱطْمَأْنَنتُمْ فَأَقِيمُوا۟ ٱلصَّلَوٰةَ ۚ إِنَّ ٱلصَّلَوٰةَ كَانَتْ عَلَى ٱلْمُؤْمِنِينَ كِتَـٰبًۭا مَّوْقُوتًۭا ١٠٣",
      urduText:
          "پھر جب تم نماز ادا کر چکو تو اٹھتے بیٹھتے اور لیٹے اللہ تعالیٰ کا ذکر کرتے رہو اور جب اطمینان پاؤ تو نماز قائم کرو! یقیناً نماز مومنوں پر مقرره وقتوں پر فرض ہے",
      englishText:
          "And when you have completed the prayer, remember Allah standing, sitting, or [lying] on your sides. But when you become secure, re-establish [regular] prayer. Indeed, prayer has been decreed upon the believers a decree of specified times",
      reference: "Surah Nisa [4 - 103]"),
  PropheticWayOfPrayerModel(
      id: 2,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ الْمُثَنَّى، قَالَ حَدَّثَنَا عَبْدُ الْوَهَّابِ، قَالَ حَدَّثَنَا أَيُّوبُ، عَنْ أَبِي قِلاَبَةَ، قَالَ حَدَّثَنَا مَالِكٌ، أَتَيْنَا إِلَى النَّبِيِّ صلى الله عليه وسلم وَنَحْنُ شَبَبَةٌ مُتَقَارِبُونَ، فَأَقَمْنَا عِنْدَهُ عِشْرِينَ يَوْمًا وَلَيْلَةً، وَكَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم رَحِيمًا رَفِيقًا، فَلَمَّا ظَنَّ أَنَّا قَدِ اشْتَهَيْنَا أَهْلَنَا أَوْ قَدِ اشْتَقْنَا سَأَلَنَا عَمَّنْ تَرَكْنَا بَعْدَنَا فَأَخْبَرْنَاهُ قَالَ \" ارْجِعُوا إِلَى أَهْلِيكُمْ فَأَقِيمُوا فِيهِمْ وَعَلِّمُوهُمْ وَمُرُوهُمْ ـ وَذَكَرَ أَشْيَاءَ أَحْفَظُهَا أَوْ لاَ أَحْفَظُهَا ـ وَصَلُّوا كَمَا رَأَيْتُمُونِي أُصَلِّي، فَإِذَا حَضَرَتِ الصَّلاَةُ فَلْيُؤَذِّنْ لَكُمْ أَحَدُكُمْ وَلْيَؤُمَّكُمْ أَكْبَرُكُمْ \"",
      urduText:
          " ہم سے محمد بن مثنیٰ نے بیان کیا، کہا کہ ہمیں عبدالوہاب نے خبر دی، کہا کہ ہمیں ابوایوب سختیانی نے ابوقلابہ سے خبر دی، انہوں نے کہا کہ ہم سے مالک بن حویرث نے بیان کیا، کہا کہ   ہم نبی کریم صلی اللہ علیہ وسلم کی خدمت اقدس میں حاضر ہوئے۔ ہم سب ہم عمر اور نوجوان ہی تھے۔ آپ صلی اللہ علیہ وسلم کی خدمت مبارک میں ہمارا بیس دن و رات قیام رہا۔ آپ صلی اللہ علیہ وسلم بڑے ہی رحم دل اور ملنسار تھے۔ جب آپ صلی اللہ علیہ وسلم نے دیکھا کہ ہمیں اپنے وطن واپس جانے کا شوق ہے تو آپ صلی اللہ علیہ وسلم نے پوچھا کہ تم لوگ اپنے گھر کسے چھوڑ کر آئے ہو۔ ہم نے بتایا۔ پھر آپ صلی اللہ علیہ وسلم نے فرمایا کہ اچھا اب تم اپنے گھر جاؤ اور ان گھر والوں کے ساتھ رہو اور انہیں بھی دین سکھاؤ اور دین کی باتوں پر عمل کرنے کا حکم کرو۔ مالک نے بہت سی چیزوں کا ذکر کیا جن کے متعلق ابوایوب نے کہا کہ ابوقلابہ نے یوں کہا وہ باتیں مجھ کو یاد ہیں یا یوں کہا مجھ کو یاد نہیں۔ اور نبی کریم صلی اللہ علیہ وسلم نے فرمایا کہ اسی طرح نماز پڑھنا جیسے تم نے مجھے نماز پڑھتے ہوئے دیکھا ہے اور جب نماز کا وقت آ جائے تو کوئی ایک اذان دے اور جو تم میں سب سے بڑا ہو وہ نماز پڑھائے۔ ",
      englishText:
          "Narrated Malik:We came to the Prophet (ﷺ) and stayed with him for twenty days and nights. We were all young and of about the same age. The Prophet (ﷺ) was very kind and merciful. When he realized our longing for our families, he asked about our homes and the people there and we told him. Then he asked us to go back to our families and stay with them and teach them (the religion) and to order them to do good things. He also mentioned some other things which I have (remembered or [??] ) forgotten. The Prophet (ﷺ) then added, \"Pray as you have seen me praying and when it is the time for the prayer one of you should pronounce the Adhan and the oldest of you should lead the prayer.",
      reference: " Sahih al-Bukhari 631"),

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  ///////////////////////////////////////////////////// Takbeer e tahreema .  ////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  ////////////////////////////////////////////////////////////// Muslim  ////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 3,
      arabicText:
          "حَدَّثَنِي مُحَمَّدُ بْنُ رَافِعٍ، حَدَّثَنَا حُجَيْنٌ، - وَهُوَ ابْنُ الْمُثَنَّى - حَدَّثَنَا اللَّيْثُ، عَنْ عُقَيْلٍ، ح وَحَدَّثَنِي مُحَمَّدُ بْنُ عَبْدِ اللَّهِ بْنِ قُهْزَاذَ، حَدَّثَنَا سَلَمَةُ بْنُ سُلَيْمَانَ، أَخْبَرَنَا يُونُسُ، كِلاَهُمَا عَنِ الزُّهْرِيِّ، بِهَذَا الإِسْنَادِ كَمَا قَالَ ابْنُ جُرَيْجٍ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ لِلصَّلاَةِ رَفَعَ يَدَيْهِ حَتَّى تَكُونَا حَذْوَ مَنْكِبَيْهِ ثُمَّ كَبَّرَ ",
      urduText:
          "یہ حدیث اسی سلسلہ کی سند کے ساتھ ال نے نقل کی ہے۔ زہری جیسا کہ ابن جریج نے روایت کیا ہے۔ رسول اللہ صلی اللہ علیہ وسلم جب نماز کے لیے کھڑے ہوتے تو دونوں ہاتھ کندھوں پر اٹھاتے اور پھر تکبیر پڑھتے۔",
      englishText:
          "This hadith has been transmitted with the same chain of transmitters by al. Zuhri as narrated by Ibn Juraij (who) said. When the Messenger of Allah (ﷺ) stood up for prayer, he raised hands (to the height) apposite the shoulders and then recited takbir.",
      reference: "Sahih Muslim 390 - C"),

  PropheticWayOfPrayerModel(
      id: 2,
      arabicText:
          "حَدَّثَنِي مُحَمَّدُ بْنُ رَافِعٍ، حَدَّثَنَا عَبْدُ الرَّزَّاقِ، أَخْبَرَنَا ابْنُ جُرَيْجٍ، حَدَّثَنِي ابْنُ شِهَابٍ، عَنْ سَالِمِ بْنِ عَبْدِ اللَّهِ، أَنَّ ابْنَ عُمَرَ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ لِلصَّلاَةِ رَفَعَ يَدَيْهِ حَتَّى تَكُونَا حَذْوَ مَنْكِبَيْهِ ثُمَّ كَبَّرَ فَإِذَا أَرَادَ أَنْ يَرْكَعَ فَعَلَ مِثْلَ ذَلِكَ وَإِذَا رَفَعَ مِنَ الرُّكُوعِ فَعَلَ مِثْلَ ذَلِكَ وَلاَ يَفْعَلُهُ حِينَ يَرْفَعُ رَأْسَهُ مِنَ السُّجُودِ ‏.‏",
      urduText:
          "ابن عمر رضی اللہ عنہما کہتے ہیں کہ رسول اللہ صلی اللہ علیہ وسلم جب نماز کے لیے کھڑے ہوتے تو اپنے دونوں ہاتھ کندھوں پر اٹھاتے، پھر تکبیر کہتے، اور جب رکوع کرنے لگتے تو پھر اسی طرح کرتے۔ اور جب رکوع سے اٹھے تو پھر اسے پسند کیا لیکن سجدے سے سر اٹھاتے وقت ایسا نہیں کیا۔",
      englishText:
          "Ibn Umar reported that the Messenger of Allah (ﷺ), when he stood up for prayer, used to raise his hands apposite the shoulders and then recited takbir (Allah-o-Akbar), and when he was about to bow he again did like it and when he raised himself from the ruku' (bowing posture) he again did like it, but he did not do it at the time of raising his head from prostration.",
      reference: "Sahih Muslim 390 - B"),

  PropheticWayOfPrayerModel(
      id: 5,
      arabicText:
          "وَحَدَّثَنَاهُ مُحَمَّدُ بْنُ الْمُثَنَّى، حَدَّثَنَا ابْنُ أَبِي عَدِيٍّ، عَنْ سَعِيدٍ، عَنْ قَتَادَةَ، بِهَذَا الإِسْنَادِ أَنَّهُ رَأَى نَبِيَّ اللَّهِ صلى الله عليه وسلم وَقَالَ حَتَّى يُحَاذِيَ بِهِمَا فُرُوعَ أُذُنَيْهِ ",
      urduText:
          "اس حدیث کو قتادہ نے اسی سلسلہ سے روایت کیا ہے کہ انہوں نے رسول اللہ صلی اللہ علیہ وسلم کو ایسا کرتے ہوئے دیکھا (یعنی ہاتھ اٹھائے) یہاں تک کہ وہ کانوں کی لو کے مخالف تھے۔",
      englishText:
          "This hadith has been transmitted by Qatada with the same chain of transmitters that he saw the Messenger of Allah (ﷺ) doing this (i.e. raising his hands) till they were opposite the lobes of ears",
      reference: "Sahih Muslim 391 - C"),

  PropheticWayOfPrayerModel(
      id: 6,
      arabicText:
          "وَحَدَّثَنَا يَحْيَى بْنُ يَحْيَى، قَالَ قَرَأْتُ عَلَى مَالِكٍ عَنِ ابْنِ شِهَابٍ، عَنْ أَبِي سَلَمَةَ بْنِ عَبْدِ الرَّحْمَنِ، أَنَّ أَبَا هُرَيْرَةَ، كَانَ يُصَلِّي لَهُمْ فَيُكَبِّرُ كُلَّمَا خَفَضَ وَرَفَعَ فَلَمَّا انْصَرَفَ قَالَ وَاللَّهِ إِنِّي لأَشْبَهُكُمْ صَلاَةً بِرَسُولِ اللَّهِ صلى الله عليه وسلم ",
      urduText:
          "ابو سلمہ نے بیان کیا:ابوہریرہ رضی اللہ عنہ نے ان کے لیے نماز پڑھائی اور رکوع و سجود میں جھکتے اور کھڑے ہونے پر تکبیر پڑھی اور نماز سے فارغ ہونے کے بعد فرمایا: اللہ کی قسم میں نماز کہتا ہوں جو رسول اللہ صلی اللہ علیہ وسلم کی نماز کے ساتھ بہترین مشابہت رکھتی ہے۔ ) آپ کے درمیان۔",
      englishText:
          "Abu Salama reported:Abu Huraira led prayer for them and recited takbir when he bent and raised himself (in ruku' and sujud) and after completing (the prayer) he said: By Allah I say prayer which has the best resemblance with the prayer of the Prophet (ﷺ) amongst you.",
      reference: "Sahih Muslim 392 - A"),

  PropheticWayOfPrayerModel(
      id: 7,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ رَافِعٍ، حَدَّثَنَا عَبْدُ الرَّزَّاقِ، أَخْبَرَنَا ابْنُ جُرَيْجٍ، أَخْبَرَنِي ابْنُ شِهَابٍ، عَنْ أَبِي بَكْرِ بْنِ عَبْدِ الرَّحْمَنِ، أَنَّهُ سَمِعَ أَبَا هُرَيْرَةَ، يَقُولُ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ إِلَى الصَّلاَةِ يُكَبِّرُ حِينَ يَقُومُ ثُمَّ يُكَبِّرُ حِينَ يَرْكَعُ ثُمَّ يَقُولُ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" حِينَ يَرْفَعُ صُلْبَهُ مِنَ الرُّكُوعِ ثُمَّ يَقُولُ وَهُوَ قَائِمٌ \" رَبَّنَا وَلَكَ الْحَمْدُ \" ثُمَّ يُكَبِّرُ حِينَ يَهْوِي سَاجِدًا ثُمَّ يُكَبِّرُ حِينَ يَرْفَعُ رَأْسَهُ ثُمَّ يُكَبِّرُ حِينَ يَسْجُدُ ثُمَّ يُكَبِّرُ حِينَ يَرْفَعُ رَأْسَهُ ثُمَّ يَفْعَلُ مِثْلَ ذَلِكَ فِي الصَّلاَةِ كُلِّهَا حَتَّى يَقْضِيَهَا وَيُكَبِّرُ حِينَ يَقُومُ مِنَ الْمَثْنَى بَعْدَ الْجُلُوسِ ثُمَّ يَقُولُ أَبُو هُرَيْرَةَ إِنِّي لأَشْبَهُكُمْ صَلاَةً بِرَسُولِ اللَّهِ صلى الله عليه وسلم ‏.‏",
      urduText:
          "ابوہریرہ نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم جب نماز کے لیے اٹھتے تو کھڑے ہوتے وقت اللہ اکبر کہتے، پھر رکوع کرتے وقت تکبیر کہتے۔ پھر کہو: \"اللہ نے اس کی سن لی جس نے اس کی تعریف کی\" جب رکوع کے بعد کھڑے ہو جاؤ، پھر کھڑے ہو کر کہو: \"اے ہمارے رب، تیری حمد ہے\"، پھر سجدے کے لیے اترتے وقت تکبیر کہے۔ سر اٹھانے پر تکبیر کہے، پھر سجدہ کرتے وقت تکبیر کہے، پھر سر اٹھانے پر تکبیر کہے۔ وہ پوری نماز میں اس طرح کرتے یہاں تک کہ اسے مکمل کر لیتے، اور جب بیٹھنے کی حالت اختیار کر کے دو رکعت کے آخر میں اٹھتے تو تکبیر کہتے۔ ابوہریرہ رضی اللہ عنہ نے کہا: میری نماز تم میں رسول اللہ صلی اللہ علیہ وسلم کی نماز کے ساتھ بہترین مشابہت رکھتی ہے۔",
      englishText:
          "Abu Huraira reported:When the Messenger of Allah (ﷺ) got up for prayer, he would say the takbir (Allah-o-Akbar) when standing, then say the takbir when bowing. then say:\" Allah listened to him who praised him,\" when coming to the erect position after bowing, then say while standing:\" To Thee, our Lord, be the praise\", then recite the takbir when getting down for prostration, then say the takbir on raising his head, then say the takbir on prostrating himself, then say the takbir on raising his head. He would do that throughout the whole prayer till he would complete it, and he would say the takbir when he would get up at the end of two rak'as after adopting the sitting posture. Abu Huraira said: My prayer has the best resemblance amongst you with the prayer of the Messenger of Allah (ﷺ).",
      reference: "Sahih Muslim 392 - B / C"),
  PropheticWayOfPrayerModel(
      id: 8,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ مِهْرَانَ الرَّازِيُّ، حَدَّثَنَا الْوَلِيدُ بْنُ مُسْلِمٍ، حَدَّثَنَا الأَوْزَاعِيُّ، عَنْ يَحْيَى بْنِ أَبِي كَثِيرٍ، عَنْ أَبِي سَلَمَةَ، أَنَّ أَبَا هُرَيْرَةَ، كَانَ يُكَبِّرُ فِي الصَّلاَةِ كُلَّمَا رَفَعَ وَوَضَعَ . فَقُلْنَا يَا أَبَا هُرَيْرَةَ مَا هَذَا التَّكْبِيرُ قَالَ إِنَّهَا لَصَلاَةُ رَسُولِ اللَّهِ صلى الله عليه وسلم ",
      urduText:
          "ابو سلمہ رضی اللہ عنہ سے روایت ہے کہ ابوہریرہ رضی اللہ عنہ نماز میں اٹھنے اور گھٹنے کے تمام مواقع پر تکبیر پڑھتے تھے۔ ہم نے کہا:اے ابوہریرہ یہ تکبیر کیا ہے؟ اس نے کہا: بے شک یہ رسول اللہ صلی اللہ علیہ وسلم کی دعا ہے۔",
      englishText:
          "Abu Salama reported that Abu Huraira recited takbir in prayer on all occasions of rising and kneeling. We said:O Abu Huraira, what is this takbir? He said: Verily it is the prayer of the Messenger of Allah (ﷺ).",
      reference: "Sahih Muslim 392 - E"),

  PropheticWayOfPrayerModel(
      id: 9,
      arabicText:
          "حَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ، حَدَّثَنَا يَعْقُوبُ، - يَعْنِي ابْنَ عَبْدِ الرَّحْمَنِ - عَنْ سُهَيْلٍ، عَنْ أَبِيهِ، عَنْ أَبِي هُرَيْرَةَ، أَنَّهُ كَانَ يُكَبِّرُ كُلَّمَا خَفَضَ وَرَفَعَ وَيُحَدِّثُ أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم كَانَ يَفْعَلُ ذَلِكَ ‏.‏",
      urduText:
          "سہیل نے اپنے والد سے روایت کی ہے کہ ابوہریرہ رضی اللہ عنہ (نماز میں) اٹھنے اور جھکنے کے تمام مواقع پر تکبیر کہتے تھے اور بیان کیا کہ رسول اللہ صلی اللہ علیہ وسلم ایسا کیا کرتے تھے۔",
      englishText:
          "Suhail reported on the authority of his father that Abu Huraira used to recite takbir on all occasions of rising and bending (in prayer) and narrated that the Messenger of Allah (ﷺ) used to do like that.",
      reference: "Sahih Muslim 392 - F"),

  PropheticWayOfPrayerModel(
      id: 10,
      arabicText:
          "حَدَّثَنَا يَحْيَى بْنُ يَحْيَى، وَخَلَفُ بْنُ هِشَامٍ، جَمِيعًا عَنْ حَمَّادٍ، - قَالَ يَحْيَى أَخْبَرَنَا حَمَّادُ بْنُ زَيْدٍ، - عَنْ غَيْلاَنَ، عَنْ مُطَرِّفٍ، قَالَ صَلَّيْتُ أَنَا وَعِمْرَانُ بْنُ حُصَيْنٍ، خَلْفَ عَلِيِّ بْنِ أَبِي طَالِبٍ فَكَانَ إِذَا سَجَدَ كَبَّرَ وَإِذَا رَفَعَ رَأْسَهُ كَبَّرَ وَإِذَا نَهَضَ مِنَ الرَّكْعَتَيْنِ كَبَّرَ فَلَمَّا انْصَرَفْنَا مِنَ الصَّلاَةِ - قَالَ - أَخَذَ عِمْرَانُ بِيَدِي ثُمَّ قَالَ لَقَدْ صَلَّى بِنَا هَذَا صَلاَةَ مُحَمَّدٍ صلى الله عليه وسلم . أَوْ قَالَ قَدْ ذَكَّرَنِي هَذَا صَلاَةَ مُحَمَّدٍ صلى الله عليه وسلم ",
      urduText:
          "Mutarrif نے رپورٹ کیا:میں اور عمران بی۔ حسین نے علی کے پیچھے نماز پڑھی۔ ابو، طالب۔ اس نے سجدہ کرتے وقت تکبیر کہی اور جب سر اٹھایا تو تکبیر کہی اور (دو رکعت کے آخر میں بیٹھنے کی جگہ سے) اٹھتے ہوئے تکبیر کہی۔ جب ہم نماز سے فارغ ہوئے تو عمران نے میرا ہاتھ پکڑ کر کہا: اس نے (حضرت علی) نے محمد (صلی اللہ علیہ وآلہ وسلم) کی طرح نماز پڑھائی ہے یا فرمایا: درحقیقت اس نے میرے ذہن میں محمد (صلی اللہ علیہ وآلہ وسلم) کی نماز یاد کرائی ہے۔ وہ۔)",
      englishText:
          "Mutarrif reported:I and 'Imran b. Husain said prayer behind 'Ali b. Abu, Talib. He recited takbir when he prostrated, and he recited takbir when he raised his head and he recited takbir while rising up (from the sitting position at the end of two rak'ahs). When we had finished our prayer, 'Imran caught hold of my hand and said: He (Hadrat Ali) has led prayer like Muhammad (ﷺ) or he said: He in fact recalled to my mind the prayer of Muhammad (may peace be upon him.)",
      reference: " Sahih Muslim 393"),

  ////////////////////////////////////////////////////////////// Bukhari  ////////////////////////////////////////////////////

//              there is no hadith on takbir in bukhari .

  ////////////////////////////////////////////////////////////// ibn Majah  ////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 11,
      arabicText:
          "حَدَّثَنَا عَلِيُّ بْنُ مُحَمَّدٍ الطَّنَافِسِيُّ، حَدَّثَنَا أَبُو أُسَامَةَ، حَدَّثَنِي عَبْدُ الْحَمِيدِ بْنُ جَعْفَرٍ، حَدَّثَنَا مُحَمَّدُ بْنُ عَمْرِو بْنِ عَطَاءٍ، قَالَ سَمِعْتُ أَبَا حُمَيْدٍ السَّاعِدِيَّ، يَقُولُ كَانَ رَسُولُ اللَّهِ ـ صلى الله عليه وسلم ـ إِذَا قَامَ إِلَى الصَّلَاةِ اسْتَقْبَلَ الْقِبْلَةَ وَرَفَعَ يَدَيْهِ وَقَالَ \" اللَّهُ أَكْبَرُ \"",
      urduText:
          "محمد بن عمرو بن عطاء نے کہا:میں نے ابوحمید السعدی رضی اللہ عنہ کو کہتے سنا: جب رسول اللہ صلی اللہ علیہ وسلم نماز کے لیے کھڑے ہوتے تو نماز کی طرف منہ کرتے، ہاتھ اٹھاتے اور کہتے: اللہ اکبر (اللہ اکبر)۔ \"",
      englishText:
          "Muhammad bin ‘Amr bin ‘Ata’ said:“I heard Abu Humaid As-Sa’idi say: ‘When the Messenger of Allah (ﷺ) stood up for prayer, he would face the prayer direction, raise his hands, and say: “Allahu Akbar (Allah is Most Great).”",
      reference: "Sunan Ibn Majah 803"),

  //////////////////////////////////////////////////// Abu dawood  /////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 12,
      arabicText:
          "حَدَّثَنَا ابْنُ مُعَاذٍ، حَدَّثَنَا خَالِدُ بْنُ الْحَارِثِ، حَدَّثَنَا حَاتِمٌ، - يَعْنِي ابْنَ أَبِي صَغِيرَةَ - عَنْ سِمَاكٍ، قَالَ سَمِعْتُ النُّعْمَانَ بْنَ بَشِيرٍ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم يُسَوِّي صُفُوفَنَا إِذَا قُمْنَا لِلصَّلاَةِ فَإِذَا اسْتَوَيْنَا كَبَّرَ ‏.‏",
      urduText:
          "نعمان بن بشیر رضی اللہ عنہ روایت کرتے ہیں:رسول اللہ صلی اللہ علیہ وسلم جب ہم نماز کے لیے کھڑے ہوتے تو ہماری صفیں سیدھی کرتے، اور جب ہم سیدھے ہوتے تو فرماتے: اللہ سب سے بڑا (تکبیر) ہے۔",
      englishText:
          "Narrated An-Nu'man ibn Bashir:The Messenger of Allah (ﷺ) used to straighten our rows when we stood up to pray, and when we were straight, he said: Allah is most great (takbir).",
      reference: "Sunan Abi Dawud 665"),
  PropheticWayOfPrayerModel(
      id: 13,
      arabicText:
          "حَدَّثَنَا مُسَدَّدٌ، حَدَّثَنَا يَزِيدُ، - يَعْنِي ابْنَ زُرَيْعٍ - حَدَّثَنَا الْمَسْعُودِيُّ، حَدَّثَنِي عَبْدُ الْجَبَّارِ بْنُ وَائِلٍ، حَدَّثَنِي أَهْلُ، بَيْتِي عَنْ أَبِي أَنَّهُ، حَدَّثَهُمْ أَنَّهُ، رَأَى رَسُولَ اللَّهِ صلى الله عليه وسلم يَرْفَعُ يَدَيْهِ مَعَ التَّكْبِيرَةِ ",
      urduText:
          "وائل بن حجر رضی اللہ عنہ کہتے ہیں کہ میں نے رسول اللہ صلی اللہ علیہ وسلم کو تکبیر کہتے وقت اپنے ہاتھ اٹھاتے دیکھا۔",
      englishText:
          "Wa’il b.Hujr said that he saw the Messenger of Allah(ﷺ) raise his hands when he uttered the takbir (Allah is most great).",
      reference: " Sunan Abi Dawud 725"),
  PropheticWayOfPrayerModel(
      id: 14,
      arabicText:
          "حَدَّثَنَا عُثْمَانُ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا شَرِيكٌ، عَنْ عَاصِمِ بْنِ كُلَيْبٍ، عَنْ أَبِيهِ، عَنْ وَائِلِ بْنِ حُجْرٍ، قَالَ رَأَيْتُ النَّبِيَّ صلى الله عليه وسلم حِينَ افْتَتَحَ الصَّلاَةَ رَفَعَ يَدَيْهِ حِيَالَ أُذُنَيْهِ - قَالَ - ثُمَّ أَتَيْتُهُمْ فَرَأَيْتُهُمْ يَرْفَعُونَ أَيْدِيَهُمْ إِلَى صُدُورِهُمْ فِي افْتِتَاحِ الصَّلاَةِ وَعَلَيْهِمْ بَرَانِسُ وَأَكْسِيَةٌ ",
      urduText:
          "وائل بن حجر کہتے ہیں:میں نے دیکھا کہ رسول اللہ صلی اللہ علیہ وسلم جب نماز شروع کرتے تو اپنے ہاتھ کانوں کے سامنے اٹھاتے۔ میں پھر واپس آیا اور دیکھا کہ جب وہ نماز پڑھنے لگے تو اپنے ہاتھ اپنے سینے تک اٹھائے ہوئے ہیں۔ انہوں نے لمبی ٹوپیاں اور کمبل پہن رکھے تھے۔",
      englishText:
          "Narrated Wa'il ibn Hujr:I witnessed the Prophet (ﷺ) raise his hands in front of his ears when he began to pray. I then came back and saw them (the people) raising their hands up to their chest when they began to pray. They wore long caps and blankets.",
      reference: " Sunan Abi Dawud 728"),

  PropheticWayOfPrayerModel(
      id: 16,
      arabicText:
          "حَدَّثَنَا مُسَدَّدٌ، حَدَّثَنَا يَحْيَى، عَنِ ابْنِ أَبِي ذِئْبٍ، عَنْ سَعِيدِ بْنِ سَمْعَانَ، عَنْ أَبِي هُرَيْرَةَ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا دَخَلَ فِي الصَّلاَةِ رَفَعَ يَدَيْهِ مَدًّا ‏.‏",
      urduText:
          "ابوہریرہ رضی اللہ عنہ روایت کرتے ہیں:جب رسول اللہ صلی اللہ علیہ وسلم نے نماز شروع کی تو اپنے دونوں ہاتھ بڑے زور سے اٹھائے۔",
      englishText:
          "Narrated AbuHurayrah:When the Messenger of Allah (ﷺ) began his prayer, he raised his hands extensively.",
      reference: "Sunan Abi Dawud 753"),

  PropheticWayOfPrayerModel(
      id: 17,
      arabicText:
          "حَدَّثَنَا سُلَيْمَانُ بْنُ حَرْبٍ، حَدَّثَنَا حَمَّادٌ، عَنْ غَيْلاَنَ بْنِ جَرِيرٍ، عَنْ مُطَرِّفٍ، قَالَ صَلَّيْتُ أَنَا وَعِمْرَانُ بْنُ حُصَيْنٍ، خَلْفَ عَلِيِّ بْنِ أَبِي طَالِبٍ - رضى الله عنه - فَكَانَ إِذَا سَجَدَ كَبَّرَ وَإِذَا رَكَعَ كَبَّرَ وَإِذَا نَهَضَ مِنَ الرَّكْعَتَيْنِ كَبَّرَ فَلَمَّا انْصَرَفْنَا أَخَذَ عِمْرَانُ بِيَدِي وَقَالَ لَقَدْ صَلَّى هَذَا قِبَلَ أَوْ قَالَ لَقَدْ صَلَّى بِنَا هَذَا قِبَلَ صَلاَةِ مُحَمَّدٍ صلى الله عليه وسلم ‏.‏",
      urduText:
          "مطرف نے کہا:میں اور عمران بی۔ حسین نے سب کے پیچھے نماز پڑھی۔ ابی طالب رضی اللہ عنہ۔ جب سجدہ کیا تو تکبیر کہی (اللہ سب سے بڑا ہے) اور جب رکوع کیا تو تکبیر کہی اور جب دو رکعتوں کے آخر میں کھڑے ہوئے تو تکبیر کہی۔ جب ہم اپنی نماز سے فارغ ہوئے تو عمران نے میرا ہاتھ پکڑا اور کہا: اس نے ابھی ہماری نماز اسی طرح پڑھائی ہے جس طرح محمد صلی اللہ علیہ وسلم نے پڑھی تھی۔",
      englishText:
          "Mutarrif said:I and ‘Imran b. Husain offered prayer behind ‘All b. AbI Talib(may Allah be pleased with him). When he prostrated, he uttered the takbir (Allah is most great) and when he bowed, he uttered the takbir and when he stood up at the end of two rak’ahs, he uttered the takbir. When we finished our prayer, ‘Imran caught hold of my hand, and said: He has led us in prayer just now like the prayer offered by Muhammed(may peace by upon him).",
      reference: "Sunan Abi Dawud 835"),

  PropheticWayOfPrayerModel(
      id: 18,
      arabicText:
          "حَدَّثَنَا عَمْرُو بْنُ عُثْمَانَ، حَدَّثَنَا أَبِي وَبَقِيَّةُ، عَنْ شُعَيْبٍ، عَنِ الزُّهْرِيِّ، قَالَ أَخْبَرَنِي أَبُو بَكْرِ بْنُ عَبْدِ الرَّحْمَنِ، وَأَبُو سَلَمَةَ أَنَّ أَبَا هُرَيْرَةَ، كَانَ يُكَبِّرُ فِي كُلِّ صَلاَةٍ مِنَ الْمَكْتُوبَةِ وَغَيْرِهَا يُكَبِّرُ حِينَ يَقُومُ ثُمَّ يُكَبِّرُ حِينَ يَرْكَعُ ثُمَّ يَقُولُ سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ ثُمَّ يَقُولُ رَبَّنَا وَلَكَ الْحَمْدُ قَبْلَ أَنْ يَسْجُدَ ثُمَّ يَقُولُ اللَّهُ أَكْبَرُ حِينَ يَهْوِي سَاجِدًا ثُمَّ يُكَبِّرُ حِينَ يَرْفَعُ رَأْسَهُ ثُمَّ يُكَبِّرُ حِينَ يَسْجُدُ ثُمَّ يُكَبِّرُ حِينَ يَرْفَعُ رَأْسَهُ ثُمَّ يُكَبِّرُ حِينَ يَقُومُ مِنَ الْجُلُوسِ فِي اثْنَتَيْنِ فَيَفْعَلُ ذَلِكَ فِي كُلِّ رَكْعَةٍ حَتَّى يَفْرُغَ مِنَ الصَّلاَةِ ثُمَّ يَقُولُ حِينَ يَنْصَرِفُ وَالَّذِي نَفْسِي بِيَدِهِ إِنِّي لأَقْرَبُكُمْ شَبَهًا بِصَلاَةِ رَسُولِ اللَّهِ صلى الله عليه وسلم إِنْ كَانَتْ هَذِهِ لَصَلاَتُهُ حَتَّى فَارَقَ الدُّنْيَا ‏.‏ قَالَ أَبُو دَاوُدَ هَذَا الْكَلاَمُ الأَخِيرُ يَجْعَلُهُ مَالِكٌ وَالزُّبَيْدِيُّ وَغَيْرُهُمَا عَنِ الزُّهْرِيِّ عَنْ عَلِيِّ بْنِ حُسَيْنٍ وَوَافَقَ عَبْدُ الأَعْلَى عَنْ مَعْمَرٍ شُعَيْبَ بْنَ أَبِي حَمْزَةَ عَنِ الزُّهْرِيِّ ‏.‏",
      urduText:
          "ابوبکر ب۔ عبدالرحمٰن اور ابو سلمہ نے کہا:ابوہریرہ رضی اللہ عنہ ہر نماز میں تکبیر کہتے، خواہ فرض ہو یا غیر فرض، جب کھڑے ہوتے تو تکبیر کہتے، اور رکوع کرتے وقت تکبیر کہتے، پھر کہتے: اللہ اس کی سنتا ہے جو اس کی حمد کرتا ہے۔ ; پھر سجدہ کرنے سے پہلے کہتا۔ \"اے ہمارے رب، تیری حمد ہو\"؛ پھر سجدے میں گرتے ہوئے کہتا: \"اللہ سب سے بڑا ہے\"۔ پھر جب سجدہ کے بعد سر اٹھاتا تو تکبیر کہتا، پھر سجدہ کرتے وقت تکبیر کہتا، اور جب بیٹھنے کے بعد دو رکعت کے آخر میں کھڑا ہوتا تو تکبیر کہتا۔ آپ صلی اللہ علیہ وسلم نماز سے فارغ ہونے تک ہر رکعت میں ایسا کرتے تھے۔ پھر نماز کے آخر میں کہتے: اس ذات کی قسم جس کے ہاتھ میں میری جان ہے، میں ان کی نماز کے معاملے میں رسول اللہ صلی اللہ علیہ وسلم سے زیادہ قریب ہوں۔ ایسی ہی نماز وہ ادا کرتے تھے یہاں تک کہ دنیا سے رخصت ہو گئے۔ابوداؤد کہتے ہیں: مالک، الزبیدی اور دیگر نے روایت کی ہے کہ وہ علی بن حسین رضی اللہ عنہ سے زہری کے آخری الفاظ بناتے ہیں۔ اور اس کی تائید معمر اور شعیب بن عبد العلا کے بیان کردہ ورژن سے ہوتی ہے۔ ابی حمزہ الزہری کی سند پر۔",
      englishText:
          "Abu bakr b. ‘Abd al-Rahman and abu Salamah said:Abu Hurairah would utter the takbir in every prayer, whether obligatory or non-obligatory, He would utter the takbir when he stood, and he would utter the takbir when he bowed, then he would say: “Allah listens to him who praises Him”; he then would say before prostrating himself; “ Our Lord, to Thee be praise”; then he would say while falling in prostration: “Allah is most great”; he then would utter the takbir when he raised his head after prostration, and then utter the takbir when he prostrated, and then utter takbir the takbir when he stood up at the end of two rak’ahs after sitting down. He used to do so in every rak’ah until he finished his prayer. Then he would say at the end of the prayer: By Him in Whose hands lies my life, I am closer to the Messenger of Allah(ﷺ) in respect of his prayer. Such was the prayer he used to offer until he departed from the world.Abu Dawud said: Malik, al-Zubaidi and others have narrated so that they form the last words from al-Zuhri on the authority of ‘Ali b, Husain. And this is supported by the version reported by ‘Abd al-A’la from Ma’mar and SHu’aib b. Abi Hamzah on the authority of Al-Zuhri.",
      reference: "Sunan Abi Dawud 836"),

/////////////////////////////////////////////////// Trimizi    ///////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 19,
      arabicText:
          "حَدَّثَنَا قُتَيْبَةُ، حَدَّثَنَا أَبُو الأَحْوَصِ، عَنْ أَبِي إِسْحَاقَ، عَنْ عَبْدِ الرَّحْمَنِ بْنِ الأَسْوَدِ، عَنْ عَلْقَمَةَ، وَالأَسْوَدِ، عَنْ عَبْدِ اللَّهِ بْنِ مَسْعُودٍ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم يُكَبِّرُ فِي كُلِّ خَفْضٍ وَرَفْعٍ وَقِيَامٍ وَقُعُودٍ وَأَبُو بَكْرٍ وَعُمَرُ ‏.‏ قَالَ وَفِي الْبَابِ عَنْ أَبِي هُرَيْرَةَ وَأَنَسٍ وَابْنِ عُمَرَ وَأَبِي مَالِكٍ الأَشْعَرِيِّ وَأَبِي مُوسَى وَعِمْرَانَ بْنِ حُصَيْنٍ وَوَائِلِ بْنِ حُجْرٍ وَابْنِ عَبَّاسٍ ‏.‏ قَالَ أَبُو عِيسَى حَدِيثُ عَبْدِ اللَّهِ بْنِ مَسْعُودٍ حَدِيثٌ حَسَنٌ صَحِيحٌ ‏.‏ وَالْعَمَلُ عَلَيْهِ عِنْدَ أَصْحَابِ النَّبِيِّ صلى الله عليه وسلم مِنْهُمْ أَبُو بَكْرٍ وَعُمَرُ وَعُثْمَانُ وَعَلِيٌّ وَغَيْرُهُمْ وَمَنْ بَعْدَهُمْ مِنَ التَّابِعِينَ وَعَلَيْهِ عَامَّةُ الْفُقَهَاءِ وَالْعُلَمَاءِ ‏.‏",
      urduText:
          "عبداللہ بن مسعود رضی اللہ عنہ نے بیان کیا:\"رسول اللہ صلی اللہ علیہ وسلم ہر نیچے کرنے، اٹھانے، کھڑے ہونے اور بیٹھنے کے لیے تکبیر کہتے، اور (اسی طرح) ابوبکر اور عمر رضی اللہ عنہما بھی۔\"",
      englishText:
          "Abdullah bin Mas'ud narrated:\"Allah's Messenger would say the Takbir for every lowering and raising, standing and sitting, and (so did) Abu Bakr and Umar.\"",
      reference: "Jami` at-Tirmidhi 253"),

  ////
  ////
  /////
  ////
  ////
  //////
  /////
  ////
  ///
  ////
  //////////////////////////////////////////////////////////// Nasai . /////////////////////////////////////////////////////

  ///  There is no hadith in nasiai on takbir .
  ///

  // /            Last length is 2 + 19 = 21  .

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  /////////////////////////////////////////////////////// Hath baandhana  ////////////////////////////////////////////////

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  ////////////////////////////////////////////////////////// Muslim /////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 1,
      arabicText:
          "حَدَّثَنَا زُهَيْرُ بْنُ حَرْبٍ، حَدَّثَنَا عَفَّانُ، حَدَّثَنَا هَمَّامٌ، حَدَّثَنَا مُحَمَّدُ بْنُ جُحَادَةَ، حَدَّثَنِي عَبْدُ الْجَبَّارِ بْنُ وَائِلٍ، عَنْ عَلْقَمَةَ بْنِ وَائِلٍ، وَمَوْلًى، لَهُمْ أَنَّهُمَا حَدَّثَاهُ عَنْ أَبِيهِ، وَائِلِ بْنِ حُجْرٍ، أَنَّهُ رَأَى النَّبِيَّ صلى الله عليه وسلم رَفَعَ يَدَيْهِ حِينَ دَخَلَ فِي الصَّلاَةِ كَبَّرَ - وَصَفَ هَمَّامٌ حِيَالَ أُذُنَيْهِ - ثُمَّ الْتَحَفَ بِثَوْبِهِ ثُمَّ وَضَعَ يَدَهُ الْيُمْنَى عَلَى الْيُسْرَى فَلَمَّا أَرَادَ أَنْ يَرْكَعَ أَخْرَجَ يَدَيْهِ مِنَ الثَّوْبِ ثُمَّ رَفَعَهُمَا ثُمَّ كَبَّرَ فَرَكَعَ فَلَمَّا قَالَ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" رَفَعَ يَدَيْهِ فَلَمَّا سَجَدَ سَجَدَ بَيْنَ كَفَّيْهِ ‏.‏",
      urduText:
          " وائل ب۔ حجر نے بیان کیا:اس نے رسول اللہ صلی اللہ علیہ وسلم کو دیکھا کہ نماز شروع کرتے وقت ہاتھ اٹھاتے اور تکبیر کہتے اور حمام (راوی) کے مطابق ہاتھ کانوں کے بالمقابل اٹھاتے۔ اس کے بعد آپ صلی اللہ علیہ وسلم نے اپنے دونوں ہاتھ اپنے کپڑے میں لپیٹ لیے اور اپنا دایاں ہاتھ بائیں ہاتھ پر رکھا۔ اور جب رکوع کرنے لگے تو اپنے ہاتھ کپڑے سے نکالے، پھر انہیں اٹھائے، پھر تکبیر کہی اور رکوع کیا، پھر جب (وہ کھڑا ہوا) تو یہ پڑھا: اللہ نے اس کی سن لی۔ جس نے اس کی تعریف کی۔ \" اور جب سجدہ کیا تو اپنی دونوں ہتھیلیوں کے درمیان سجدہ کیا۔",
      englishText:
          "Wa'il b. Hujr reported:He saw the Messenger of Allah (ﷺ) raising his hands at the time of beginning the prayer and reciting takbir, and according to Hammam (the narrator), the hands were lifted opposite to ears. He (the Holy Prophet) then wrapped his hands in his cloth and placed his right hand over his left hand. And when he was about to bow down, he brought out his hands from the cloth, and then lifted them, and then recited takbir and bowed down, and when (he came back to the erect position) he recited:\" Allah listened to him who praised Him.\" And when he prostrated, he prostrated between his two palms.",
      reference: "Sahih Muslim 401"),

  //
  ///
  ////
  ////
  ////
  //
//
  //
  //
  //
  //
  //
  ////
  ///
  ///

  //

  //////////////////////////////////////////////////////// Bukhari  /////////////////////////////////////////////////////

  ///////////////////////////////////////////////////////// Ibn Majah   ////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 2,
      arabicText:
          "حَدَّثَنَا عَلِيُّ بْنُ مُحَمَّدٍ، حَدَّثَنَا عَبْدُ اللَّهِ بْنُ إِدْرِيسَ، ح وَحَدَّثَنَا بِشْرُ بْنُ مُعَاذٍ الضَّرِيرُ، حَدَّثَنَا بِشْرُ بْنُ الْمُفَضَّلِ، قَالاَ حَدَّثَنَا عَاصِمُ بْنُ كُلَيْبٍ، عَنْ أَبِيهِ، عَنْ وَائِلِ بْنِ حُجْرٍ، قَالَ رَأَيْتُ النَّبِيَّ ـ صلى الله عليه وسلم ـ يُصَلِّي فَأَخَذَ شِمَالَهُ بِيَمِينِهِ ‏.‏",
      urduText:
          "روایت ہے کہ وائل بن حجر نے کہا:میں نے رسول اللہ صلی اللہ علیہ وسلم کو نماز پڑھتے ہوئے دیکھا تو آپ نے اپنے بائیں ہاتھ کو دائیں سے پکڑ لیا۔",
      englishText:
          "It was narrated that Wa’il bin Hujr said:“I saw the Prophet (ﷺ) performing prayer, and he took hold of his left hand with his right.”",
      reference: " Sunan Ibn Majah 810"),

  PropheticWayOfPrayerModel(
      id: 3,
      arabicText:
          "حَدَّثَنَا عَلِيُّ بْنُ مُحَمَّدٍ، حَدَّثَنَا عَبْدُ اللَّهِ بْنُ إِدْرِيسَ، ح وَحَدَّثَنَا بِشْرُ بْنُ مُعَاذٍ الضَّرِيرُ، حَدَّثَنَا بِشْرُ بْنُ الْمُفَضَّلِ، قَالاَ حَدَّثَنَا عَاصِمُ بْنُ كُلَيْبٍ، عَنْ أَبِيهِ، عَنْ وَائِلِ بْنِ حُجْرٍ، قَالَ رَأَيْتُ النَّبِيَّ ـ صلى الله عليه وسلم ـ يُصَلِّي فَأَخَذَ شِمَالَهُ بِيَمِينِهِ ",
      urduText:
          "روایت ہے کہ وائل بن حجر نے کہا:میں نے رسول اللہ صلی اللہ علیہ وسلم کو نماز پڑھتے ہوئے دیکھا تو آپ نے اپنے بائیں ہاتھ کو دائیں سے پکڑ لیا۔",
      englishText:
          "“I saw the Prophet (ﷺ) performing prayer, and he took hold of his left hand with his right.”",
      reference: "Sunan Ibn Majah 810"),

  /////////////////////////////////////////////////////////// Nasai   ////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 4,
      arabicText:
          "أَخْبَرَنَا سُوَيْدُ بْنُ نَصْرٍ، قَالَ أَنْبَأَنَا عَبْدُ اللَّهِ بْنُ الْمُبَارَكِ، عَنْ زَائِدَةَ، قَالَ حَدَّثَنَا عَاصِمُ بْنُ كُلَيْبٍ، قَالَ حَدَّثَنِي أَبِي أَنَّ وَائِلَ بْنَ حُجْرٍ، أَخْبَرَهُ قَالَ قُلْتُ لأَنْظُرَنَّ إِلَى صَلاَةِ رَسُولِ اللَّهِ صلى الله عليه وسلم كَيْفَ يُصَلِّي فَنَظَرْتُ إِلَيْهِ فَقَامَ فَكَبَّرَ وَرَفَعَ يَدَيْهِ حَتَّى حَاذَتَا بِأُذُنَيْهِ ثُمَّ وَضَعَ يَدَهُ الْيُمْنَى عَلَى كَفِّهِ الْيُسْرَى وَالرُّسْغِ وَالسَّاعِدِ فَلَمَّا أَرَادَ أَنْ يَرْكَعَ رَفَعَ يَدَيْهِ مِثْلَهَا - قَالَ - وَوَضَعَ يَدَيْهِ عَلَى رُكْبَتَيْهِ ثُمَّ لَمَّا رَفَعَ رَأْسَهُ رَفَعَ يَدَيْهِ مِثْلَهَا ثُمَّ سَجَدَ فَجَعَلَ كَفَّيْهِ بِحِذَاءِ أُذُنَيْهِ ثُمَّ قَعَدَ وَافْتَرَشَ رِجْلَهُ الْيُسْرَى وَوَضَعَ كَفَّهُ الْيُسْرَى عَلَى فَخِذِهِ وَرُكْبَتِهِ الْيُسْرَى وَجَعَلَ حَدَّ مِرْفَقِهِ الأَيْمَنِ عَلَى فَخِذِهِ الْيُمْنَى ثُمَّ قَبَضَ اثْنَتَيْنِ مِنْ أَصَابِعِهِ وَحَلَّقَ حَلْقَةً ثُمَّ رَفَعَ إِصْبَعَهُ فَرَأَيْتُهُ يُحَرِّكُهَا يَدْعُو بِهَا ",
      urduText:
          "وائل بن حجر نے کہا:میں نے کہا: میں دیکھوں گا کہ رسول اللہ صلی اللہ علیہ وسلم کیسی نماز پڑھتے ہیں۔ میں نے اسے دیکھا تو اس نے کھڑے ہو کر تکبیر کہی اور اپنے دونوں ہاتھ اٹھائے یہاں تک کہ وہ کانوں کے برابر ہو گئے، پھر آپ نے اپنا دایاں ہاتھ اپنے بائیں ہاتھ، کلائی اور نچلے بازو پر رکھا، جب آپ نے رکوع کرنا چاہا تو اس نے اپنا ہاتھ اٹھایا۔ پھر آپ صلی اللہ علیہ وسلم نے سجدہ کیا اور اپنے دونوں ہاتھ اپنے کانوں کے برابر کیے، پھر آپ صلی اللہ علیہ وسلم اٹھے اور اپنی بائیں ٹانگ کو اپنے نیچے رکھا، آپ صلی اللہ علیہ وسلم نے اپنا بایاں ہاتھ اپنی بائیں ران اور گھٹنے پر رکھا، اور آپ صلی اللہ علیہ وسلم نے اپنی دائیں کہنی کا کنارہ رکھا۔ اس کی داہنی ران، پھر اس نے اپنی دو انگلیاں پکڑ کر ایک دائرہ بنایا اور اپنی شہادت کی انگلی اٹھائی، میں نے دیکھا کہ وہ اسے حرکت دے رہے ہیں اور اس سے دعا مانگ رہے ہیں۔",
      englishText:
          "Wa'il bin Hujr said:\"I said: 'I am going to watch how the Messenger of Allah (ﷺ) prays.' So I watched him and he stood and said the takbir, and raised his hands until they were in the level with his ears, then he placed his right hand over his left hand, wrist and lower forearm. When he wanted to bow he raised his hands likewise. Then he prostrated and placed his hands in level with his ears. Then he sat up and placed his left leg under him; he put his left hand on his left thigh and knee, and he put the edge of his right elbow on his right thigh, then he held two of his fingers together and made a circle, and raised his forefinger, and I saw him moving it and supplicating with it.\"",
      reference: "Abu Dawood 726 , Nisaai 889"),

  ///////////////////////////////////////////////////////// Tirimzi  ///////////////////////////////////////////////////////

  ////////////////////////////////////////////////////////// Abu dawood  //////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 5,
      arabicText:
          "حَدَّثَنَا أَبُو تَوْبَةَ، حَدَّثَنَا الْهَيْثَمُ، - يَعْنِي ابْنَ حُمَيْدٍ - عَنْ ثَوْرٍ، عَنْ سُلَيْمَانَ بْنِ مُوسَى، عَنْ طَاوُسٍ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم يَضَعُ يَدَهُ الْيُمْنَى عَلَى يَدِهِ الْيُسْرَى ثُمَّ يَشُدُّ بَيْنَهُمَا عَلَى صَدْرِهِ وَهُوَ فِي الصَّلاَةِ ‏.‏",
      urduText:
          "طاؤس نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم نماز میں اپنا دایاں ہاتھ اپنے بائیں ہاتھ پر رکھتے تھے، پھر انہیں اپنے سینے پر باندھ لیتے تھے۔",
      englishText:
          "Narrated Tawus:The Messenger of Allah (ﷺ) used to place his right hand on his left hand, then he folded them strictly on his chest in prayer.",
      reference: "Sunan Abi Dawud 759"),

  PropheticWayOfPrayerModel(
      id: 6,
      arabicText:
          "حَدَّثَنَا عُبَيْدُ اللَّهِ بْنُ عُمَرَ بْنِ مَيْسَرَةَ الْجُشَمِيُّ، حَدَّثَنَا عَبْدُ الْوَارِثِ بْنُ سَعِيدٍ، قَالَ حَدَّثَنَا مُحَمَّدُ بْنُ جُحَادَةَ، حَدَّثَنِي عَبْدُ الْجَبَّارِ بْنُ وَائِلِ بْنِ حُجْرٍ، قَالَ كُنْتُ غُلاَمًا لاَ أَعْقِلُ صَلاَةَ أَبِي قَالَ فَحَدَّثَنِي وَائِلُ بْنُ عَلْقَمَةَ عَنْ أَبِي وَائِلِ بْنِ حُجْرٍ قَالَ صَلَّيْتُ مَعَ رَسُولِ اللَّهِ صلى الله عليه وسلم فَكَانَ إِذَا كَبَّرَ رَفَعَ يَدَيْهِ - قَالَ - ثُمَّ الْتَحَفَ ثُمَّ أَخَذَ شِمَالَهُ بِيَمِينِهِ وَأَدْخَلَ يَدَيْهِ فِي ثَوْبِهِ قَالَ فَإِذَا أَرَادَ أَنْ يَرْكَعَ أَخْرَجَ يَدَيْهِ ثُمَّ رَفَعَهُمَا وَإِذَا أَرَادَ أَنْ يَرْفَعَ رَأْسَهُ مِنَ الرُّكُوعِ رَفَعَ يَدَيْهِ ثُمَّ سَجَدَ وَوَضَعَ وَجْهَهُ بَيْنَ كَفَّيْهِ وَإِذَا رَفَعَ رَأْسَهُ مِنَ السُّجُودِ أَيْضًا رَفَعَ يَدَيْهِ حَتَّى فَرَغَ مِنْ صَلاَتِهِ . قَالَ مُحَمَّدٌ فَذَكَرْتُ ذَلِكَ لِلْحَسَنِ بْنِ أَبِي الْحَسَنِ فَقَالَ هِيَ صَلاَةُ رَسُولِ اللَّهِ صلى الله عليه وسلم فَعَلَهُ مَنْ فَعَلَهُ وَتَرَكَهُ مَنْ تَرَكَهُ . قَالَ أَبُو دَاوُدَ رَوَى هَذَا الْحَدِيثَ هَمَّامٌ عَنِ ابْنِ جُحَادَةَ لَمْ يَذْكُرِ الرَّفْعَ مَعَ الرَّفْعِ مِنَ السُّجُودِ .",
      urduText:
          "عبد الجبار ب۔ وائل (ب۔ حجر) نے کہا:میں چھوٹا لڑکا تھا اور مجھے اپنے والد کی دعا سمجھ نہیں آتی تھی۔ تو وائل ب۔ علقمہ نے وائل بن کو رپورٹ کیا۔ حجر کہتے ہیں کہ میں نے رسول اللہ صلی اللہ علیہ وسلم کے ساتھ نماز پڑھی۔ آپ جب تکبیر کہتے تھے تو اپنے ہاتھ اٹھاتے تھے، پھر اپنی چادر کو اپنے گرد کھینچتے تھے، پھر اپنا دایاں ہاتھ اپنے بائیں طرف رکھتے تھے، اور اپنے ہاتھ اپنے کپڑے میں داخل کرتے تھے۔ جب وہ رکوع کرنے والا تھا تو اس نے اپنے ہاتھ اپنے کپڑوں سے نکالے اور پھر اٹھائے۔ اور جب رکوع کے بعد سر اٹھایا تو دونوں ہاتھ اٹھائے۔ پھر آپ صلی اللہ علیہ وسلم نے سجدہ کیا اور اپنا چہرہ ( پیشانی) اپنے ہاتھوں کے درمیان رکھا۔ اور جب سجدہ کے بعد سر اٹھایا تو اپنے ہاتھ بھی اٹھائے یہاں تک کہ نماز سے فارغ ہو گئے۔ محمد (ایک راوی) نے کہا: میں نے اس کا ذکر حسن بن عبداللہ سے کیا۔ ابوالحسن کہتے ہیں کہ رسول اللہ صلی اللہ علیہ وسلم نے اس طرح نماز پڑھی تھی۔ کچھ نے کیا اور دوسروں نے اسے چھوڑ دیا۔ابوداؤد کہتے ہیں: اس روایت کو ہمام نے ابن جوہدہ سے روایت کیا ہے، لیکن انہوں نے سجدے کے آخر میں سر اٹھانے کے بعد ہاتھ اٹھانے کا ذکر نہیں کیا۔",
      englishText:
          "‘Abd al-Jabbar b. Wa’il (b.Hujr) said:I was a small boy and I did not understand the prayer of my father. So Wa’Il b. ‘Alqamah reported Wa’il b. Hujr as saying: I offered prayer along with the Messenger of Allah (ﷺ). He used to raise his hands when he pronounced the takbir (Allah is most great), then pulled his garment around him, then placed his right hand on his left, and entered his hands in his garment. When he was about to bow he took his hands out of his garment, and then raised them. And when he raised his head after bowing, he raised his hands. He then prostrated himself and placed his face (forehead on the ground) between his hands. And when he raised his head after prostration, he also raised his hands until he finished his prayer. Muhammad (a narrator) said: I mentioned it to al-Hasan b. Abu al-Hasan who said: This is how the Messenger of Allah(ﷺ) offered prayer; some did it and others abandoned it.Abu Dawud said: This tradition has been narrated by Hammam from ibn Juhadah, but he did not mention the raising of hands after he raised his head at the end of the prostration.",
      reference: " Sunan Abi Dawud 723"),

//
//
//////////
////
  ///
  ///
////
  ///
  ///
  ///
  ///
  ///
  ///

  //   till length is 2 + 19 + 6  = 27

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //////////////////////////////////////////////// Reciting Dua at the start of salah .   //////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  ///////////////////////////////////////////////////////// Muslim  ///////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 1,
      arabicText:
          "وَحَدَّثَنِي زُهَيْرُ بْنُ حَرْبٍ، حَدَّثَنَا عَفَّانُ، حَدَّثَنَا حَمَّادٌ، أَخْبَرَنَا قَتَادَةُ، وَثَابِتٌ، وَحُمَيْدٌ، عَنْ أَنَسٍ، أَنَّ رَجُلاً، جَاءَ فَدَخَلَ الصَّفَّ وَقَدْ حَفَزَهُ النَّفَسُ فَقَالَ الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ . فَلَمَّا قَضَى رَسُولُ اللَّهِ صلى الله عليه وسلم صَلاَتَهُ قَالَ \" أَيُّكُمُ الْمُتَكَلِّمُ بِالْكَلِمَاتِ \" فَأَرَمَّ الْقَوْمُ فَقَالَ \" أَيُّكُمُ الْمُتَكَلِّمُ بِهَا فَإِنَّهُ لَمْ يَقُلْ بَأْسًا \" فَقَالَ رَجُلٌ جِئْتُ وَقَدْ حَفَزَنِي النَّفَسُ فَقُلْتُهَا . فَقَالَ \" لَقَدْ رَأَيْتُ اثْنَىْ عَشَرَ مَلَكًا يَبْتَدِرُونَهَا أَيُّهُمْ يَرْفَعُهَا ",
      urduText:
          "انس نے بیان کیا:ایک شخص ہانپتا ہوا آیا اور نمازیوں کی صف میں داخل ہوا اور کہنے لگا: الحمد للہ بہت زیادہ حمد و ثنا ہے۔ جب رسول اللہ صلی اللہ علیہ وسلم نماز سے فارغ ہوئے تو آپ نے فرمایا: تم میں سے یہ کلمات کس نے کہے؟ لوگ خاموش رہے۔ آپ صلی اللہ علیہ وسلم نے پھر فرمایا: تم میں سے یہ کلمات کس نے کہے؟ اس نے کچھ غلط نہیں کہا۔ پھر ایک آدمی نے کہا: میں آیا اور مجھے سانس لینے میں دشواری ہوئی تو میں نے ان سے کہا۔ اس نے جواب دیا: میں نے بارہ فرشتوں کو ایک دوسرے کے آمنے سامنے دیکھا کہ انہیں کون اٹھائے گا؟",
      englishText:
          "Anas reported:A man came panting and entered the row of worshippers and said: Praise be to Allah, much praised and blessed. When the Messenger of Allah (ﷺ) finished the prayer he said: Who amongst you uttered these words? The people remained silent. He (the Prophet again said) -: Who amongst you uttered these words? He said nothing wrong. Then a man said: I came and had a difficulty in breathing, so I uttered them. He replied: I saw twelve angels facing one another as to who will take them up (to Allah).",
      reference: "Sunan an-Nasa'i 901 , Muslim 600"),

  PropheticWayOfPrayerModel(
      id: 2,
      arabicText:
          "حَدَّثَنَا زُهَيْرُ بْنُ حَرْبٍ، حَدَّثَنَا إِسْمَاعِيلُ ابْنُ عُلَيَّةَ، أَخْبَرَنِي الْحَجَّاجُ بْنُ أَبِي عُثْمَانَ، عَنْ أَبِي الزُّبَيْرِ، عَنْ عَوْنِ بْنِ عَبْدِ اللَّهِ بْنِ عُتْبَةَ، عَنِ ابْنِ عُمَرَ، قَالَ بَيْنَمَا نَحْنُ نُصَلِّي مَعَ رَسُولِ اللَّهِ صلى الله عليه وسلم إِذْ قَالَ رَجُلٌ مِنَ الْقَوْمِ اللَّهُ أَكْبَرُ كَبِيرًا وَالْحَمْدُ لِلَّهِ كَثِيرًا وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلاً . فَقَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" مَنِ الْقَائِلُ كَلِمَةَ كَذَا وَكَذَا \" قَالَ رَجُلٌ مِنَ الْقَوْمِ أَنَا يَا رَسُولَ اللَّهِ . قَالَ \" عَجِبْتُ لَهَا فُتِحَتْ لَهَا أَبْوَابُ السَّمَاءِ \" قَالَ ابْنُ عُمَرَ فَمَا تَرَكْتُهُنَّ مُنْذُ سَمِعْتُ رَسُولَ اللَّهِ صلى الله عليه وسلم يَقُولُ ذَلِكَ ",
      urduText:
          "ابن عمر نے بیان کیا:جب ہم نے رسول اللہ صلی اللہ علیہ وسلم کے ساتھ نماز پڑھی تو لوگوں میں سے ایک نے کہا: اللہ تعالیٰ بہت بڑا ہے، اللہ کی حمد و ثنا بہت زیادہ ہے۔ صبح و شام اللہ کی تسبیح کرو۔ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: فلاں فلاں کلمہ کس نے کہا؟ لوگوں میں سے ایک شخص نے کہا: یہ میں نے رسول اللہ صلی اللہ علیہ وسلم کو پڑھا ہے۔ آپ (صلی اللہ علیہ وآلہ وسلم) نے فرمایا: مجھے اس (کلام) نے تعجب کیا، کیونکہ اس کے لیے آسمان کے دروازے کھول دیے گئے تھے۔ ابن عمر رضی اللہ عنہما نے کہا: جب سے میں نے رسول اللہ صلی اللہ علیہ وسلم کو یہ فرماتے ہوئے سنا ہے، میں نے ان (کلمات) کو نہیں چھوڑا۔",
      englishText:
          "Ibn 'Umar reported:While we said prayer with the Messenger of Allah (ﷺ), one among the people said: Allah is truly Great, praise be to Allah in abundance. Glory be to Allah in the morning and the evening. The Messenger of Allah (may peace be upon, him) said: Who uttered such and such a word? A person among the people said: It is I, Messenger of Allah (who have recited these words). He (the Holy Prophet) said: It (its utterance) surprised me, for the doors of heaven were opened for It. Ibn 'Umar said: I have not abandoned them (these words) since I heard the Messenger of Allah (ﷺ) saying this.",
      reference: "Sahih Muslim 601"),

  ////////////////////////////////////////////////////////// Bukhari  //////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 3,
      arabicText:
          "حَدَّثَنَا مُوسَى بْنُ إِسْمَاعِيلَ، قَالَ حَدَّثَنَا عَبْدُ الْوَاحِدِ بْنُ زِيَادٍ، قَالَ حَدَّثَنَا عُمَارَةُ بْنُ الْقَعْقَاعِ، قَالَ حَدَّثَنَا أَبُو زُرْعَةَ، قَالَ حَدَّثَنَا أَبُو هُرَيْرَةَ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم يَسْكُتُ بَيْنَ التَّكْبِيرِ وَبَيْنَ الْقِرَاءَةِ إِسْكَاتَةً ـ قَالَ أَحْسِبُهُ قَالَ هُنَيَّةً ـ فَقُلْتُ بِأَبِي وَأُمِّي يَا رَسُولَ اللَّهِ، إِسْكَاتُكَ بَيْنَ التَّكْبِيرِ وَالْقِرَاءَةِ مَا تَقُولُ قَالَ \" أَقُولُ اللَّهُمَّ بَاعِدْ بَيْنِي وَبَيْنَ خَطَايَاىَ كَمَا بَاعَدْتَ بَيْنَ الْمَشْرِقِ وَالْمَغْرِبِ، اللَّهُمَّ نَقِّنِي مِنَ الْخَطَايَا كَمَا يُنَقَّى الثَّوْبُ الأَبْيَضُ مِنَ الدَّنَسِ، اللَّهُمَّ اغْسِلْ خَطَايَاىَ بِالْمَاءِ وَالثَّلْجِ وَالْبَرَدِ \"",
      urduText:
          "ہم سے موسیٰ بن اسماعیل نے بیان کیا ، انھوں نے کہا کہ ہم سے عبدالواحد بن زیاد نے بیان کیا ، انھوں نے کہا کہ ہم سے عمارہ بن قعقاع نے بیان کیا ، انھوں نے کہا کہ ہم سے ابوزرعہ نے بیان کیا ، انھوں نے کہا کہ ہم سے ابوہریرہ رضی اللہ عنہ نے بیان کیا ، انھوں نے فرمایا کہ رسول اللہ صلی اللہ علیہ وسلم تکبیر تحریمہ اور قرآت کے درمیان تھوڑی دیر چپ رہتے تھے ۔ ابوزرعہ نے کہا میں سمجھتا ہوں ابوہریرہ رضی اللہ عنہ نے یوں کہا یا رسول اللہ ! آپ پر میرے ماں باپ فدا ہوں ۔ آپ اس تکبیر اور قرآت کے درمیان کی خاموشی کے بیچ میں کیا پڑھتے ہیں ؟ آپ صلی اللہ علیہ وسلم نے فرمایا کہ میں پڑھتا ہوں «اللهم باعد بيني وبين خطاياى كما باعدت بين المشرق والمغرب ،اللهم نقني من الخطايا كما ينقى الثوب الأبيض من الدنس اللهم اغسل خطاياى بالماء والثلج والبرد» اے اللہ ! میرے اور میرے گناہوں کے درمیان اتنی دوری کر جتنی مشرق اور مغرب میں ہے ۔ اے اللہ ! مجھے گناہوں سے اس طرح پاک کر جیسے سفید کپڑا میل سے پاک ہوتا ہے ۔ اے اللہ ! میرے گناہوں کو پانی ، برف اور اولے سے دھو ڈال ۔",
      englishText:
          "Narrated Abu Huraira:Allah's Messenger (ﷺ) used to keep silent between the Takbir and the recitation of Qur'an and that interval of silence used to be a short one. I said to the Prophet (ﷺ) \"May my parents be sacrificed for you! What do you say in the pause between Takbir and recitation?\" The Prophet (ﷺ) said, \"I say, 'Allahumma, baa`id baini wa baina khatayaya kama baa`adta baina l-mashriqi wa l-maghrib. Allahumma, naqqini min khatayaya kama yunaqqa th-thawbu l-abyadu mina d-danas. Allahumma, ighsil khatayaya bi l-maa'i wa th-thalji wa l-barad (O Allah! Set me apart from my sins (faults) as the East and West are set apart from each other and clean me from sins as a white garment is cleaned of dirt (after thorough washing). O Allah! Wash off my sins with water, snow and hail.)\"",
      reference: "Sahih al-Bukhari 744 , Sahih Muslim 598"),

  PropheticWayOfPrayerModel(
      id: 4,
      arabicText:
          "حَدَّثَنَا مَحْمُودٌ، حَدَّثَنَا عَبْدُ الرَّزَّاقِ، أَخْبَرَنَا ابْنُ جُرَيْجٍ، أَخْبَرَنِي سُلَيْمَانُ الأَحْوَلُ، أَنَّ طَاوُسًا، أَخْبَرَهُ أَنَّهُ، سَمِعَ ابْنَ عَبَّاسٍ، يَقُولُ كَانَ النَّبِيُّ صلى الله عليه وسلم إِذَا تَهَجَّدَ مِنَ اللَّيْلِ قَالَ \" اللَّهُمَّ لَكَ الْحَمْدُ أَنْتَ نُورُ السَّمَوَاتِ وَالأَرْضِ، وَلَكَ الْحَمْدُ أَنْتَ قَيِّمُ السَّمَوَاتِ وَالأَرْضِ، وَلَكَ الْحَمْدُ أَنْتَ رَبُّ السَّمَوَاتِ وَالأَرْضِ، وَمَنْ فِيهِنَّ أَنْتَ الْحَقُّ، وَوَعْدُكَ الْحَقُّ وَقَوْلُكَ الْحَقُّ، وَلِقَاؤُكَ الْحَقُّ، وَالْجَنَّةُ حَقٌّ، وَالنَّارُ حَقٌّ، وَالنَّبِيُّونَ حَقٌّ، وَالسَّاعَةُ حَقٌّ، اللَّهُمَّ لَكَ أَسْلَمْتُ، وَبِكَ آمَنْتُ، وَعَلَيْكَ تَوَكَّلْتُ، وَإِلَيْكَ أَنَبْتُ، وَبِكَ خَاصَمْتُ، وَإِلَيْكَ حَاكَمْتُ، فَاغْفِرْ لِي مَا قَدَّمْتُ وَمَا أَخَّرْتُ، وَمَا أَسْرَرْتُ وَمَا أَعْلَنْتُ، أَنْتَ إِلَهِي، لاَ إِلَهَ إِلاَّ أَنْتَ \"",
      urduText:
          "ہم سے محمود بن غیلان نے بیان کیا ‘ انہوں نے کہا ہم سے عبدالرزاق نے بیان کیا ‘ کہا ہم کو ابن جریج نے خبر دی ‘ انہوں نے مجھ کو سلیمان احول نے خبر دی ‘ انہیں طاؤس یمانی نے خبر دی ‘ انہوں نے حضرت عبداللہ بن عباس رضی اللہ عنہما سے سنا ‘ انہوں نے بیان کیا کہ نبی کریم صلی اللہ علیہ وسلم جب رات میں تہجد پڑھنے اٹھتے تو کہتے اللهم لك الحمد أنت نور السموات والأرض ، ولك الحمد أنت قيم السموات والأرض ، ولك الحمد أنت رب السموات والأرض ، ومن فيهن أنت الحق ، ووعدك الحق وقولك الحق ، ولقاؤك الحق ، والجنۃ حق ، والنار حق ، والنبيون حق ، والساعۃ حق ، اللهم لك أسلمت ، وبك آمنت ، وعليك توكلت ، وإليك أنبت ، وبك خاصمت ، وإليك حاكمت ، فاغفر لي ما قدمت وما أخرت ، وما أسررت وما أعلنت ، أنت إلهي ، لا إله إلا أنت اے اللہ ! حمد تیرے ہی لیے ہے کہ تو آسمان و زمین کا نور ہے ۔ حمد تیرے ہی لیے ہے کہ تو آسمان و زمین کا تھامنے والا ہے ۔ حمد تیرے ہی لیے ہے کہ تو آسمان و زمین کا اور کچھ اس میں ہے سب کا رب ہے ۔ تو سچ ہے ‘ تیرا وعدہ سچا ہے اور تیرا قول سچا ہے ۔ تیری ملاقات سچی ہے ‘ جنت سچ ہے اور دوزخ سچ ہے ۔ سارے انبیاء سچے ہیں اور قیامت سچ ہے ۔ اے اللہ ! میں تیرے سامنے ہی جھکا ‘ تجھ پر ایمان لایا ‘ تجھ پر بھروسہ کیا ‘ تیری ہی طرف رجوع کیا ‘ تیرے ہی سامنے اپنا جھگڑا پیش کرتا اور تجھ ہی سے اپنا فیصلہ چاہتا ہوں پس تو میری مغفرت کر دے اگلے پچھلے تمام گناہوں کی جو میں نے چھپا کر کئے اور جو ظاہر کئے ۔ تو ہی میرا معبود ہے ‘ تیرے سوا اور کوئی معبود نہیں ۔",
      englishText:
          "Narrated Ibn `Abbas:Whenever the Prophet (ﷺ) offered the night (Tahajjud) prayer, he used to say, \"O Allah! All the Praises are for You; You are the Light of the Heavens and the Earth. And all the Praises are for You; You are the Keeper of the Heavens and the Earth. All the Praises are for You; You are the Lord of the Heavens and the Earth and whatever is therein. You are the Truth, and Your Promise is the Truth, and Your Speech is the Truth, and meeting You is the Truth, and Paradise is the Truth and Hell (Fire) is the Truth and all the prophets are the Truth and the Hour is the Truth. O Allah! I surrender to You, and believe in You, and depend upon You, and repent to You, and in Your cause I fight and with Your orders I rule. So please forgive my past and future sins and those sins which I did in secret or in public. It is You Whom I worship, None has the right to be worshipped except You .\"",
      reference: "Sahih al-Bukhari 7499"),
  ///////////////////////////////////////////////////////// Ibn Majah  ///////////////////////////////////////////////////////

  ////////////////////////////////////////////////////////// Nasai ///////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 26,
      arabicText:
          "أَخْبَرَنَا عَمْرُو بْنُ عَلِيٍّ، قَالَ حَدَّثَنَا عَبْدُ الرَّحْمَنِ بْنُ مَهْدِيٍّ، قَالَ حَدَّثَنَا عَبْدُ الْعَزِيزِ بْنُ أَبِي سَلَمَةَ، قَالَ حَدَّثَنِي عَمِّي الْمَاجِشُونُ بْنُ أَبِي سَلَمَةَ، عَنْ عَبْدِ الرَّحْمَنِ الأَعْرَجِ، عَنْ عُبَيْدِ اللَّهِ بْنِ أَبِي رَافِعٍ، عَنْ عَلِيٍّ، رضى الله عنه أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم كَانَ إِذَا اسْتَفْتَحَ الصَّلاَةَ كَبَّرَ ثُمَّ قَالَ \" وَجَّهْتُ وَجْهِيَ لِلَّذِي فَطَرَ السَّمَوَاتِ وَالأَرْضَ حَنِيفًا وَمَا أَنَا مِنَ الْمُشْرِكِينَ إِنَّ صَلاَتِي وَنُسُكِي وَمَحْيَاىَ وَمَمَاتِي لِلَّهِ رَبِّ الْعَالَمِينَ لاَ شَرِيكَ لَهُ وَبِذَلِكَ أُمِرْتُ وَأَنَا مِنَ الْمُسْلِمِينَ اللَّهُمَّ أَنْتَ الْمَلِكُ لاَ إِلَهَ إِلاَّ أَنْتَ أَنَا عَبْدُكَ ظَلَمْتُ نَفْسِي وَاعْتَرَفْتُ بِذَنْبِي فَاغْفِرْ لِي ذُنُوبِي جَمِيعًا لاَ يَغْفِرُ الذُّنُوبَ إِلاَّ أَنْتَ وَاهْدِنِي لأَحْسَنِ الأَخْلاَقِ لاَ يَهْدِي لأَحْسَنِهَا إِلاَّ أَنْتَ وَاصْرِفْ عَنِّي سَيِّئَهَا لاَ يَصْرِفُ عَنِّي سَيِّئَهَا إِلاَّ أَنْتَ لَبَّيْكَ وَسَعْدَيْكَ وَالْخَيْرُ كُلُّهُ فِي يَدَيْكَ وَالشَّرُّ لَيْسَ إِلَيْكَ أَنَا بِكَ وَإِلَيْكَ تَبَارَكْتَ وَتَعَالَيْتَ أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكَ \"",
      urduText:
          "حضرت علی رضی اللہ عنہ سے روایت ہے کہ:رسول اللہ صلی اللہ علیہ وسلم جب نماز پڑھنا شروع کرتے تو تکبیر کہتے، پھر کہتے: وَجَحْتُ وَجَهِی لِلّٰہِ فَطَرَسُ سماوَتیُالِرْدَ حَنِفَانَ وَما انا من المشرکین، انا صلاۃ و نسوکی و ماحیا و ممتی للہ رب العالمین۔ لا شریک لہو، و بِدَالِکُ عَمِرْتُ وَعَنَا مِن المسلمین، اللّٰہُمَّا! انتمالِکُ لا اِلٰہَ اِلَّا اِنَّا عبدُکا ظلمتُ نفسی وطرفطو بِذنبی فغفرلی ذنبی جمیّعان، لا یغفیرُدُنُبَا لِیَا لَیْلَہُ الدِّیْنِ۔ لَا اَحْسَانِہَ اِلَّا انت واصفِ عَنِّی صَیْعَا لا یَسْرَفُ عَنِی صَیْعَا اِلٰہَ اِنَّتَ لَبِیْکَ وَ سَدَائِکَ وَالْخَیْرُ کُلُّوْھُ فِی یدَائِکَ وَشَرُوْ لَیْسَ الْاِلَیْکَ عَنْ بِکَ وَاِلَیْکَ عَنْ بِکَ وَ اِلَیْکَ تَبَرکَتَوْا (بے شک میں نے اپنا رخ اس کی طرف پھیر لیا ہے جس نے آسمانوں اور زمین کو حنفیہ بنایا) اور میں مشرکوں میں سے نہیں ہوں۔ مرنا اللہ کے لیے ہے جو تمام موجودات کا رب ہے، اس کا کوئی شریک نہیں اور مجھے اسی کا حکم دیا گیا ہے اور میں مسلمانوں میں سے ہوں۔ اے اللہ تو بادشاہ ہے اور تیرے سوا کوئی عبادت کے لائق نہیں۔ میں تیرا بندہ ہوں، میں نے اپنے آپ پر ظلم کیا ہے اور میں اپنے گناہ کا اعتراف کرتا ہوں۔ میرے تمام گناہوں کو بخش دے کیونکہ تیرے سوا کوئی گناہوں کو معاف نہیں کرتا۔ مجھے بہترین اخلاق کی رہنمائی فرما کیونکہ تیرے سوا کوئی ان میں سے بہترین کی رہنمائی نہیں کر سکتا۔ مجھے برے اخلاق سے بچا کیونکہ تیرے سوا ان سے کوئی نہیں بچا سکتا۔ میں تیری خدمت میں حاضر ہوں، تمام بھلائیاں تیرے ہاتھ میں ہیں، اور بدی تیری طرف منسوب نہیں ہے۔ میں تجھ پر بھروسہ کرتا ہوں اور تیری طرف رجوع کرتا ہوں، تو بابرکت اور بلند ہے، میں تیری بخشش چاہتا ہوں اور تجھ سے توبہ کرتا ہوں۔\"",
      englishText:
          "It was narrated from Ali, may Allah be pleased with him, that:When the Messenger of Allah (ﷺ) started to pray, he would say Takbir, then say: \"Wajahtu wajhi lilladhi fataras-samawatiwal-arda hanifan wa ma ana minal-mushrikin. Inna salati wa nusuki wa mahyaya wa mamati lillahi rabbil-alamin, la sharika lahu, wa bidhalika umirtu wa ana min al-muslimin. Allahumma! Antal-maliku la ilaha illa ant, ana abduka zalamtu nafsi wa'taraftu bidhanbi faghfirli dhunubi jami'an, la yaghfirudhunuba illa anta, wahdini lihasanil-ahklaqi, la yahdi li ahsaniha illa anta wasrif anni sayy'aha la yasrifu anni sayy'aha illa anta, labaika wa sa'daika, wal-khairu kulluhu fi yadaika wash-sharru laisa ilaika ana bika wa ilaika ana bika wa ilaika tabarkta wa ta'alaita astaghfiruka wa atubu ilaik. (Verily, I have turned my face toward Him who created the Heavens and the Earth hanifa (worhsipping none but Allah Alone), and I am not of the idolaters. Verily, my salah, my sacrifice, my living, and my dying are for Allah, the Lord of the all that exists. He has no partner. And of this I have been commanded, and I am one of the Muslims. O Allah, You are the Sovereign and there is none worthy of worship but You. I am Your slave, I have wronged myself and I acknowledge my sin. Forgive me all my sins for no one forgives sins but You. Guide me to the best of manners for none can guide to the best of them but You. Protect me from bad manners for none can protect against them but You. I am at Your service, all goodness is in Your hands, and evil is not attributed to You. I rely on You and turn to You, blessed and exalted are You, I seek Your forgiveness and repent to You.\"",
      reference: "Sunan an-Nasa'i 897"),

  ///////////////////////////////////////////////////////// Tirimzi  ///////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا قُتَيْبَةُ، حَدَّثَنَا اللَّيْثُ، عَنِ ابْنِ شِهَابٍ، عَنْ أَنَسِ بْنِ مَالِكٍ، أَنَّهُ قَالَ خَرَّ رَسُولُ اللَّهِ صلى الله عليه وسلم عَنْ فَرَسٍ فَجُحِشَ فَصَلَّى بِنَا قَاعِدًا فَصَلَّيْنَا مَعَهُ قُعُودًا ثُمَّ انْصَرَفَ فَقَالَ \" إِنَّمَا الإِمَامُ أَوْ إِنَّمَا جُعِلَ الإِمَامُ لِيُؤْتَمَّ بِهِ فَإِذَا كَبَّرَ فَكَبِّرُوا وَإِذَا رَكَعَ فَارْكَعُوا وَإِذَا رَفَعَ فَارْفَعُوا وَإِذَا قَالَ سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ فَقُولُوا رَبَّنَا وَلَكَ الْحَمْدُ وَإِذَا سَجَدَ فَاسْجُدُوا وَإِذَا صَلَّى قَاعِدًا فَصَلُّوا قُعُودًا أَجْمَعُونَ \" قَالَ وَفِي الْبَابِ عَنْ عَائِشَةَ وَأَبِي هُرَيْرَةَ وَجَابِرٍ وَابْنِ عُمَرَ وَمُعَاوِيَةَ ‏.‏ قَالَ أَبُو عِيسَى وَحَدِيثُ أَنَسٍ أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم خَرَّ عَنْ فَرَسٍ فَجُحِشَ حَدِيثٌ حَسَنٌ صَحِيحٌ ‏.‏ وَقَدْ ذَهَبَ بَعْضُ أَصْحَابِ النَّبِيِّ صلى الله عليه وسلم إِلَى هَذَا الْحَدِيثِ مِنْهُمْ جَابِرُ بْنُ عَبْدِ اللَّهِ وَأُسَيْدُ بْنُ حُضَيْرٍ وَأَبُو هُرَيْرَةَ وَغَيْرُهُمْ ‏.‏ وَبِهَذَا الْحَدِيثِ يَقُولُ أَحْمَدُ وَإِسْحَاقُ ‏.‏ وَقَالَ بَعْضُ أَهْلِ الْعِلْمِ إِذَا صَلَّى الإِمَامُ جَالِسًا لَمْ يُصَلِّ مَنْ خَلْفَهُ إِلاَّ قِيَامًا فَإِنْ صَلَّوْا قُعُودًا لَمْ تُجْزِهِمْ ‏.‏ وَهُوَ قَوْلُ سُفْيَانَ الثَّوْرِيِّ وَمَالِكِ بْنِ أَنَسٍ وَابْنِ الْمُبَارَكِ وَالشَّافِعِيِّ ‏.‏",
      urduText:
          "انس بن مالک نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم گھوڑے سے گر کر زخمی ہو گئے، تو آپ صلی اللہ علیہ وسلم نے بیٹھ کر نماز پڑھائی اور ہم نے بھی بیٹھ کر نماز پڑھی۔ جب وہ تکبیر کہے تو تکبیر کہو، جب رکوع کرو تو رکوع کرو اور جب وہ اپنا سر اٹھائے تو اپنے سر اٹھاؤ۔ جب وہ کہے: \"سمع اللہ لمن حمدہ\" تو کہو: ربنا و لکل حمد (اے ہمارے رب! اور تمام تعریفیں تیرے لیے ہیں۔) اور جب وہ سجدہ کرے تو سجدہ کرے۔ اور جب وہ بیٹھ کر نماز پڑھے تو پھر بیٹھ کر نماز پڑھے۔\"",
      englishText:
          "Anas bin Malik narrated:\"Allah's Messenger fell from a horse and got injured, so he led Salat sitting and we also offered Salat sitting. When he completed the Salat he said: \"The Imam is appointed to be followed; when he says the Takbir then say the Takbir, when he bows, then bow, and when he raises his head, then raise your heads. When he says: \"Sami' Allahu liman hamidah (Allah listens to those who praise him)\" then say: \"Rabbana wa lakal-hamd. (O our Lord! And all praise is Yours.)\" and when he prostrates, then prostrate, and when he performs Salat sitting, then pray sitting altogether.'\"",
      reference: "Jami` at-Tirmidhi 361"),

  ////////////////////////////////////////////////////////// Abu dawood  //////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 18,
      arabicText:
          "حَدَّثَنَا عُبَيْدُ اللَّهِ بْنُ مُعَاذٍ، حَدَّثَنَا أَبِي، حَدَّثَنَا عَبْدُ الْعَزِيزِ بْنُ أَبِي سَلَمَةَ، عَنْ عَمِّهِ الْمَاجِشُونِ بْنِ أَبِي سَلَمَةَ، عَنْ عَبْدِ الرَّحْمَنِ الأَعْرَجِ، عَنْ عُبَيْدِ اللَّهِ بْنِ أَبِي رَافِعٍ، عَنْ عَلِيِّ بْنِ أَبِي طَالِبٍ، - رضى الله عنه - قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ إِلَى الصَّلاَةِ كَبَّرَ ثُمَّ قَالَ \" وَجَّهْتُ وَجْهِيَ لِلَّذِي فَطَرَ السَّمَوَاتِ وَالأَرْضَ حَنِيفًا مُسْلِمًا وَمَا أَنَا مِنَ الْمُشْرِكِينَ إِنَّ صَلاَتِي وَنُسُكِي وَمَحْيَاىَ وَمَمَاتِي لِلَّهِ رَبِّ الْعَالَمِينَ لاَ شَرِيكَ لَهُ وَبِذَلِكَ أُمِرْتُ وَأَنَا أَوَّلُ الْمُسْلِمِينَ اللَّهُمَّ أَنْتَ الْمَلِكُ لاَ إِلَهَ لِي إِلاَّ أَنْتَ أَنْتَ رَبِّي وَأَنَا عَبْدُكَ ظَلَمْتُ نَفْسِي وَاعْتَرَفْتُ بِذَنْبِي فَاغْفِرْ لِي ذُنُوبِي جَمِيعًا إِنَّهُ لاَ يَغْفِرُ الذُّنُوبَ إِلاَّ أَنْتَ وَاهْدِنِي لأَحْسَنِ الأَخْلاَقِ لاَ يَهْدِي لأَحْسَنِهَا إِلاَّ أَنْتَ وَاصْرِفْ عَنِّي سَيِّئَهَا لاَ يَصْرِفُ سَيِّئَهَا إِلاَّ أَنْتَ لَبَّيْكَ وَسَعْدَيْكَ وَالْخَيْرُ كُلُّهُ فِي يَدَيْكَ وَالشَّرُّ لَيْسَ إِلَيْكَ أَنَا بِكَ وَإِلَيْكَ تَبَارَكْتَ وَتَعَالَيْتَ أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكَ \" وَإِذَا رَكَعَ قَالَ \" اللَّهُمَّ لَكَ رَكَعْتُ وَبِكَ آمَنْتُ وَلَكَ أَسْلَمْتُ خَشَعَ لَكَ سَمْعِي وَبَصَرِي وَمُخِّي وَعِظَامِي وَعَصَبِي \" وَإِذَا رَفَعَ قَالَ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ رَبَّنَا وَلَكَ الْحَمْدُ مِلْءَ السَّمَوَاتِ وَالأَرْضِ وَمِلْءَ مَا بَيْنَهُمَا وَمِلْءَ مَا شِئْتَ مِنْ شَىْءٍ بَعْدُ \" وَإِذَا سَجَدَ قَالَ \" اللَّهُمَّ لَكَ سَجَدْتُ وَبِكَ آمَنْتُ وَلَكَ أَسْلَمْتُ سَجَدَ وَجْهِي لِلَّذِي خَلَقَهُ وَصَوَّرَهُ فَأَحْسَنَ صُورَتَهُ وَشَقَّ سَمْعَهُ وَبَصَرَهُ وَتَبَارَكَ اللَّهُ أَحْسَنُ الْخَالِقِينَ \" وَإِذَا سَلَّمَ مِنَ الصَّلاَةِ قَالَ \" اللَّهُمَّ اغْفِرْ لِي مَا قَدَّمْتُ وَمَا أَخَّرْتُ وَمَا أَسْرَرْتُ وَمَا أَعْلَنْتُ وَمَا أَسْرَفْتُ وَمَا أَنْتَ أَعْلَمُ بِهِ مِنِّي أَنْتَ الْمُقَدِّمُ وَالْمُؤَخِّرُ لاَ إِلَهَ إِلاَّ أَنْتَ \"",
      urduText:
          "علی بی۔ علی طالب نے کہا:جب رسول اللہ صلی اللہ علیہ وسلم نماز کے لیے کھڑے ہوئے تو تکبیر کہی، پھر فرمایا: میں نے اپنا منہ اس کی طرف پھیر لیا ہے جس نے آسمانوں اور زمین کو پیدا کیا ہے، میں مشرک نہیں ہوں۔ میری نماز اور میری عبادت، میرا جینا اور میرا مرنا اللہ رب العالمین کے لیے ہے جس کا کوئی شریک نہیں۔ مجھے یہی حکم دیا گیا ہے اور میں سب سے پہلے مسلمانوں میں سے ہوں اے اللہ تو بادشاہ ہے۔ تیرے سوا کوئی معبود نہیں۔ تو میرا رب ہے اور میں تیرا بندہ ہوں۔ میں نے اپنے آپ پر ظلم کیا ہے، لیکن میں اپنے گناہ کا اقرار کرتا ہوں، لہٰذا میرے تمام گناہوں کو معاف فرما۔ تو ہی گناہوں کو معاف کر سکتا ہے۔ اور بہترین صفات کی طرف میری رہنمائی فرما۔ تو ہی ان میں سے بہترین کی رہنمائی کر سکتا ہے۔ اور مجھے برے لوگوں سے دور کر۔ تو ہی برائیوں سے باز آسکتا ہے۔ میں آپ کی خدمت کرنے اور آپ کو خوش کرنے آیا ہوں۔ تمام بھلائیاں تیرے ہاتھ میں ہیں، اور برائی کا تیرا کوئی تعلق نہیں۔ میں تجھ سے پناہ مانگتا ہوں اور تیری طرف رجوع کرتا ہوں، جو بابرکت اور بلند ہے۔ میں تجھ سے بخشش مانگتا ہوں اور تیری طرف توبہ کرتا ہوں۔ جب اس نے رکوع کیا تو اس نے کہا: اے اللہ میں تیرے سامنے جھکتا ہوں، تجھ پر توکل کرتا ہوں اور تیرے ہی حضور میں سر تسلیم خم کرتا ہوں۔ میری سماعت، میری بصارت، میرا دماغ، میری ہڈی اور میری نالی تیرے حضور عاجزی کرتے ہیں۔ جب آپ نے اپنا سر اٹھایا تو فرمایا: اللہ اس کی سنتا ہے جو اس کی تعریف کرتا ہے۔ اے ہمارے رب اور تمام تعریفیں تیرے لیے ہیں تمام آسمانوں اور زمین میں اور جو کچھ ان کے درمیان ہے اور جو کچھ تو نے بعد میں پیدا کیا ہے۔ جب آپ نے سجدہ کیا تو فرمایا: اے اللہ میں تجھے سجدہ کرتا ہوں، تجھ پر توکل کرتا ہوں اور تیرے ہی حضور میں سر تسلیم خم کرتا ہوں۔ میرا چہرہ اس کے سامنے سجدہ ریز ہو گیا جس نے اسے پیدا کیا، اس کی تشکیل کی، اسے بہترین شکل میں بنایا، اور اس کی سماعت اور بصارت کو ظاہر کیا۔ بابرکت ہے اللہ جو بہترین تخلیق کرنے والا ہے۔ جب نماز کے آخر میں سلام پھیرا تو فرمایا: اے اللہ میرے اگلے اور پچھلے گناہ بخش دے، میرے کھلے اور پوشیدہ گناہ، میرے حد سے گزرنے والے گناہ اور جو تو مجھ سے بہتر جانتا ہے، تو ہی وہ ہے۔ آگے رکھتا ہے اور پیچھے رکھتا ہے۔ تیرے سوا کوئی معبود ہے۔",
      englishText:
          "‘Ali b. Ali Talib said:When the Messenger of Allah (ﷺ) stood up for prayer, he uttered the takbir (Allah is most great), then said: I have turned my face, breaking with all others, towards Him Who created the heavens and the earth, and I am not a polytheist. My prayer and my devotion, my life and my death belong to Allah, the Lord of the Universe, Who has no partner. That is what I have been commanded, and I am first of Muslims (those who surrender themselves). O Allah, Thou art the King. There is no God but Thee. Thou art my Lord and I am Thy servant. I have wronged myself, but I acknowledge my sin, so forgive me all my sins; Thou Who alone canst forgive sins; and guide me to the best qualities. Thou Who alone canst guide to the best of them; and turn me from evil ones. Thou who alone canst turn from evil qualities. I come to serve and please Thee. All good is in Thy Hands, and evil does not pertain to Thee. I seek refuge in Thee and turn to Thee, Who art blessed and exalted. I ask Thy forgiveness and turn to thee in repentance. When he bowed, he said: O Allah, to Thee I bow, in Thee I trust, and to Thee I submit myself. My hearing, my sight, my brain, my bone and my sinews humble themselves before Thee. When he raised his head, he said: Allah listens to him who praises Him. O our lord, and all praises be to Thee in the whole of the heavens and the earth, and what is between them, and in whatever Thou creates afterwards. When he prostrated himself, he said: O Allah, to Thee I prostrate myself, to Thee I trust, and to Thee I submit myself. My face prostrated itself before Him Who created it, fashioned it, and fashioned it in the best shape, and brought forth its hearing and seeing. Blessed is Allah, the best of creators. When he saluted at the end of the prayer, he said: O Allah, forgive me my former and my latter sins, my open and secret sins, my sins in exceeding the limits, and what Thou knowest better than I. Thou art He Who puts forward and puts back. There is a deity but Thee.",
      reference: " Sunan Abi Dawud 760"),

  PropheticWayOfPrayerModel(
      id: 19,
      arabicText:
          "حَدَّثَنَا مُوسَى بْنُ إِسْمَاعِيلَ، أَخْبَرَنَا حَمَّادٌ، عَنْ قَتَادَةَ، وَثَابِتٍ، وَحُمَيْدٍ، عَنْ أَنَسِ بْنِ مَالِكٍ، أَنَّ رَجُلاً، جَاءَ إِلَى الصَّلاَةِ وَقَدْ حَفَزَهُ النَّفَسُ فَقَالَ اللَّهُ أَكْبَرُ الْحَمْدُ لِلَّهِ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ فَلَمَّا قَضَى رَسُولُ اللَّهِ صلى الله عليه وسلم صَلاَتَهُ قَالَ \" أَيُّكُمُ الْمُتَكَلِّمُ بِالْكَلِمَاتِ فَإِنَّهُ لَمْ يَقُلْ بَأْسًا \" فَقَالَ الرَّجُلُ أَنَا يَا رَسُولَ اللَّهِ جِئْتُ وَقَدْ حَفَزَنِي النَّفَسُ فَقُلْتُهَا ‏.‏ فَقَالَ \" لَقَدْ رَأَيْتُ اثْنَىْ عَشَرَ مَلَكًا يَبْتَدِرُونَهَا أَيُّهُمْ يَرْفَعُهَا \" وَزَادَ حُمَيْدٌ فِيهِ \" وَإِذَا جَاءَ أَحَدُكُمْ فَلْيَمْشِ نَحْوَ مَا كَانَ يَمْشِي فَلْيُصَلِّ مَا أَدْرَكَهُ وَلْيَقْضِ مَا سَبَقَهُ \"",
      urduText:
          "انس بی مالک نے کہا:ایک آدمی ہانپتا ہوا نمازیوں کی صف میں شامل ہوا اور کہنے لگا: اللہ سب سے بڑا ہے۔ الحمد للہ، بہت تعریف، اچھی اور بابرکت۔ جب رسول اللہ صلی اللہ علیہ وسلم نماز سے فارغ ہوئے تو پوچھا: تم میں سے وہ کون ہے جس نے کلمات کہے؟ اس نے کچھ غلط نہیں کہا۔ پھر اس آدمی نے کہا: میں نے (کہا) اللہ کے رسول صلی اللہ علیہ وسلم! میں آیا اور سانس لینے میں دشواری ہوئی تو میں نے ان سے کہا۔ اس نے کہا: میں نے بارہ فرشتوں کو اللہ کے پاس لے جانے کے لیے ایک دوسرے سے مقابلہ کرتے ہوئے دیکھا۔راوی حمید نے مزید کہا: جب تم میں سے کوئی نماز کے لیے آئے تو اسے چاہیے کہ معمول کے مطابق چلے (یعنی جلدی نہ کرے اور جلدی نہ دوڑے۔ پھر جتنی نماز اسے ملے (امام کے ساتھ) پڑھے اور نماز کا وہ حصہ خود پڑھے (نماز ختم ہونے پر) جو امام نے اس سے پہلے پڑھا تھا۔",
      englishText:
          "Anas b. Malik said:A man came panting to join the row of worshippers and said: Allah is most great; praise be to Allah, much praise, good and blessed. When the Messenger of Allah(ﷺ) finished his prayer, he asked: Which of you is the one who spoke the words? He said nothing wrong. Then the man said: I (said), Messenger of Allah (ﷺ); I came and had difficulty in breathing, so I said them. He said: I saw twelve angels racing against one another to be the one to take them to Allah.The narrator Humaid added: When any of you comes for praying, he should walk as usual (i.e. he should not hasten and run quickly); then he should pray as much as he finds it (along with the imam), and should offer the part of the prayer himself (when the prayer is finished) which the Imam had offered before him.",
      reference: " Sunan Abi Dawud 763"),

  PropheticWayOfPrayerModel(
      id: 20,
      arabicText:
          "حَدَّثَنَا عَبْدُ اللَّهِ بْنُ مَسْلَمَةَ، عَنْ مَالِكٍ، عَنْ أَبِي الزُّبَيْرِ، عَنْ طَاوُسٍ، عَنِ ابْنِ عَبَّاسٍ، أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم كَانَ إِذَا قَامَ إِلَى الصَّلاَةِ مِنْ جَوْفِ اللَّيْلِ يَقُولُ \" اللَّهُمَّ لَكَ الْحَمْدُ أَنْتَ نُورُ السَّمَوَاتِ وَالأَرْضِ وَلَكَ الْحَمْدُ أَنْتَ قَيَّامُ السَّمَوَاتِ وَالأَرْضِ وَلَكَ الْحَمْدُ أَنْتَ رَبُّ السَّمَوَاتِ وَالأَرْضِ وَمَنْ فِيهِنَّ أَنْتَ الْحَقُّ وَقَوْلُكَ الْحَقُّ وَوَعْدُكَ الْحَقُّ وَلِقَاؤُكَ حَقٌّ وَالْجَنَّةُ حَقٌّ وَالنَّارُ حَقٌّ وَالسَّاعَةُ حَقٌّ اللَّهُمَّ لَكَ أَسْلَمْتُ وَبِكَ آمَنْتُ وَعَلَيْكَ تَوَكَّلْتُ وَإِلَيْكَ أَنَبْتُ وَبِكَ خَاصَمْتُ وَإِلَيْكَ حَاكَمْتُ فَاغْفِرْ لِي مَا قَدَّمْتُ وَأَخَّرْتُ وَأَسْرَرْتُ وَأَعْلَنْتُ أَنْتَ إِلَهِي لاَ إِلَهَ إِلاَّ أَنْتَ \"",
      urduText:
          "ابن عباس نے کہا:جب رسول اللہ صلی اللہ علیہ وسلم آدھی رات کو نماز کے لیے کھڑے ہوئے تو فرمایا: اے اللہ تیری حمد ہو، تو آسمانوں اور زمین کا نور ہے۔ اور تیری حمد ہو۔ تو آسمانوں اور زمین کا پالنے والا ہے۔ اور تیری حمد ہے، تو ہی ہے آسمان و زمین اور جو کچھ ان کے درمیان ہے۔ تُو ہی حق ہے اور تیرا قول حق ہے۔ اور تیرا وعدہ سچا ہے۔ اور تیری ملاقات برحق ہے۔ اور جنت برحق ہے اور جہنم برحق ہے اور قیامت برحق ہے۔ اے اللہ میں نے تیری طرف توجہ کی اور تیری ہی طرف سے میں نے جھگڑا کیا اور تیرے سامنے اپنا معاملہ پیش کیا تو میرے اگلے اور پچھلے گناہوں کو بخش دے اور میرے پوشیدہ اور کھلے گناہوں کو بخش دے، تو میرا معبود ہے، کوئی معبود نہیں۔ لیکن تم.",
      englishText:
          "Ibn ‘Abbas said:When the Messenger of Allah (ﷺ) stood up for prayer at midnight, he said: o Allah, be praise to Thee, Thou art the light of the heavens and the earth; and to Thee be praise; Thou are the maintainer of the heavens and the earth; and to Thee be praise, Thou art the heavens and the earth and what is between them; Thou art the truth, and Thy statement is truth; and Thy promise is the truth; and the visitation with Thee is true; and the Paradise is true and the Hell-fire is true and the Hour is true; O Allah, to Thee I turned my attention, and by Thee I disputed, and to Thee I brought forth my case, so forgive me my former and latter sins, and my secret and open sins, Thou art my deity, there is no deity but Thou.",
      reference: " Sunan Abi Dawud 771"),

  PropheticWayOfPrayerModel(
      id: 21,
      arabicText:
          "حَدَّثَنَا أَحْمَدُ بْنُ أَبِي شُعَيْبٍ، حَدَّثَنَا مُحَمَّدُ بْنُ فُضَيْلٍ، عَنْ عُمَارَةَ، ح وَحَدَّثَنَا أَبُو كَامِلٍ، حَدَّثَنَا عَبْدُ الْوَاحِدِ، عَنْ عُمَارَةَ، - الْمَعْنَى - عَنْ أَبِي زُرْعَةَ، عَنْ أَبِي هُرَيْرَةَ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا كَبَّرَ فِي الصَّلاَةِ سَكَتَ بَيْنَ التَّكْبِيرِ وَالْقِرَاءَةِ فَقُلْتُ لَهُ بِأَبِي أَنْتَ وَأُمِّي أَرَأَيْتَ سُكُوتَكَ بَيْنَ التَّكْبِيرِ وَالْقِرَاءَةِ أَخْبِرْنِي مَا تَقُولُ ‏.‏ قَالَ \" اللَّهُمَّ بَاعِدْ بَيْنِي وَبَيْنَ خَطَايَاىَ كَمَا بَاعَدْتَ بَيْنَ الْمَشْرِقِ وَالْمَغْرِبِ اللَّهُمَّ أَنْقِنِي مِنْ خَطَايَاىَ كَالثَّوْبِ الأَبْيَضِ مِنَ الدَّنَسِ اللَّهُمَّ اغْسِلْنِي بِالثَّلْجِ وَالْمَاءِ وَالْبَرَدِ \"",
      urduText:
          "ابوہریرہ نے کہا:رسول اللہ صلی اللہ علیہ وسلم تکبیر اور تلاوت قرآن کے درمیان خاموشی اختیار کرتے تھے۔ چنانچہ میں نے اس سے پوچھا کہ میں اپنے والد اور والدہ کو کس کے لیے فدیہ میں دوں گا: تکبیر اور قرأت کے درمیان خاموشی کے دوران آپ کیا کہتے ہیں؟ آپ صلی اللہ علیہ وسلم نے فرمایا: اے اللہ مجھے گناہوں سے اس طرح پاک کر دے جیسے سفید کپڑے کو میل کچیل سے پاک کر دیا جاتا ہے۔ اے اللہ میرے سنگوں کو برف، پانی اور اولوں سے دھو دے۔",
      englishText:
          "Abu Hurairah said:The Messenger of Allah (ﷺ) kept silence between the takbir and the recitation of the Qur’an. So I asked him, for whom I would give my father and mother as ransom: What do you say during you period of silence between the takbir and the recitation? He replied (that he said): O Allah, purify me from sins as a white garment is purified from filth. O Allah, wash away my sings with snow, water and hail.",
      reference: "Sunan Abi Dawud 775 , Sunan Abi Dawud 781"),

  PropheticWayOfPrayerModel(
      id: 22,
      arabicText:
          "حَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ، وَأَحْمَدُ بْنُ مُحَمَّدٍ الْمَرْوَزِيُّ، وَابْنُ السَّرْحِ، قَالُوا حَدَّثَنَا سُفْيَانُ، عَنْ عَمْرٍو، عَنْ سَعِيدِ بْنِ جُبَيْرٍ، - قَالَ قُتَيْبَةُ فِيهِ - عَنِ ابْنِ عَبَّاسٍ، قَالَ كَانَ النَّبِيُّ صلى الله عليه وسلم لاَ يَعْرِفُ فَصْلَ السُّورَةِ حَتَّى تُنَزَّلَ عَلَيْهِ { بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيمِ } وَهَذَا لَفْظُ ابْنِ السَّرْحِ ",
      urduText:
          "ابن عباس نے کہا:نبی اکرم صلی اللہ علیہ وسلم نے ان دونوں سورتوں میں فرق نہیں کیا جب تک کہ آپ صلی اللہ علیہ وسلم پر \"اللہ کے نام سے جو بڑا مہربان، رحم کرنے والا ہے\" کے الفاظ نازل نہ ہوئے۔ یہ ابن سرح کے الفاظ ہیں۔",
      englishText:
          "Ibn Abbas said:The prophet (ﷺ) did not distinguish between the two surahs until the words “In the name of Allah, the Compassionate, the merciful” were revealed to him. These are the words of Ibn al-sarh.",
      reference: " Sunan Abi Dawud 788"),

  PropheticWayOfPrayerModel(
      id: 23,
      arabicText:
          "حَدَّثَنَا عَبْدُ السَّلاَمِ بْنُ مُطَهَّرٍ، حَدَّثَنَا جَعْفَرٌ، عَنْ عَلِيِّ بْنِ عَلِيٍّ الرِّفَاعِيِّ، عَنْ أَبِي الْمُتَوَكِّلِ النَّاجِيِّ، عَنْ أَبِي سَعِيدٍ الْخُدْرِيِّ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ مِنَ اللَّيْلِ كَبَّرَ ثُمَّ يَقُولُ \" سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ وَتَبَارَكَ اسْمُكَ وَتَعَالَى جَدُّكَ وَلاَ إِلَهَ غَيْرُكَ \" ثُمَّ يَقُولُ \" لاَ إِلَهَ إِلاَّ اللَّهُ \" ثَلاَثًا ثُمَّ يَقُولُ \" اللَّهُ أَكْبَرُ كَبِيرًا \" ثَلاَثًا \" أَعُوذُ بِاللَّهِ السَّمِيعِ الْعَلِيمِ مِنَ الشَّيْطَانِ الرَّجِيمِ مِنْ هَمْزِهِ وَنَفْخِهِ وَنَفْثِهِ \" ثُمَّ يَقْرَأُ . قَالَ أَبُو دَاوُدَ وَهَذَا الْحَدِيثُ يَقُولُونَ هُوَ عَنْ عَلِيِّ بْنِ عَلِيٍّ عَنِ الْحَسَنِ مُرْسَلاً الْوَهَمُ مِنْ جَعْفَرٍ ",
      urduText:
          "ابوسعید الخدری بیان کرتے ہیں:جب رسول اللہ صلی اللہ علیہ وسلم رات کو نماز کے لیے اٹھے تو تکبیر کہی، پھر فرمایا: ”پاک ہے تو اے اللہ“ اور ”تجھے حمد ہے“ اور ”تیرا نام بابرکت ہے۔ \"اور تیری عظمت بہت بلند ہے\" اور \"تیرے سوا کوئی معبود نہیں۔\" پھر فرمایا: \"اللہ کے سوا کوئی معبود نہیں\" تین بار فرمایا: \"اللہ سب سے بڑا ہے\" تین بار فرمایا: \"میں تلاش کرتا ہوں۔ اللہ کی پناہ، سب کچھ سننے والا اور سب کچھ جاننے والا شیطان مردود سے، اس کے شر سے، اس کے پھونکنے (نفخ) سے اور اس کے تھوکنے سے۔\"پھر آپ نے (قرآن) تلاوت کی۔ابوداؤد نے کہا: کہا جاتا ہے کہ اس روایت کو علی بن عاص نے روایت کیا ہے۔ صحابی رسول (صلی اللہ علیہ وآلہ وسلم) کے نام کو چھوڑ کر حسن سے علی۔ جعفر کی طرف سے غلط فہمی ہوئی۔",
      englishText:
          "Narrated AbuSa'id al-Khudri:When the Messenger of Allah (ﷺ) got up to pray at night (for tahajjud prayer) he uttered the takbir and then said: \"Glory be to Thee, O Allah,\" and \"Praise be to Thee\" and \"Blessed is Thy name,\" and Exalted is Thy greatness.\" and \"There is no god but Thee.\" He then said: \"There is no god but Allah\" three times; he then said: \"Allah is altogether great\" three times: \"I seek refuge in Allah, All-Hearing and All-Knowing from the accursed devil, from his evil suggestion (hamz), from his puffing up (nafkh), and from his spitting (nafth)\" He then recited (the Qur'an).Abu Dawud said: It is said that this tradition has been narrated by 'Ali b. 'Ali from al-Hasan omitting the name of the Companion of the Prophet (ﷺ). The misunderstanding occurred on the part of Ja'far.",
      reference: "Sunan Abi Dawud 775"),

  PropheticWayOfPrayerModel(
      id: 25,
      arabicText:
          "حَدَّثَنَا حُسَيْنُ بْنُ عِيسَى، حَدَّثَنَا طَلْقُ بْنُ غَنَّامٍ، حَدَّثَنَا عَبْدُ السَّلاَمِ بْنُ حَرْبٍ الْمُلاَئِيُّ، عَنْ بُدَيْلِ بْنِ مَيْسَرَةَ، عَنْ أَبِي الْجَوْزَاءِ، عَنْ عَائِشَةَ، قَالَتْ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا اسْتَفْتَحَ الصَّلاَةَ قَالَ \" سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ وَتَبَارَكَ اسْمُكَ وَتَعَالَى جَدُّكَ وَلاَ إِلَهَ غَيْرُكَ \" قَالَ أَبُو دَاوُدَ وَهَذَا الْحَدِيثُ لَيْسَ بِالْمَشْهُورِ عَنْ عَبْدِ السَّلاَمِ بْنِ حَرْبٍ لَمْ يَرْوِهِ إِلاَّ طَلْقُ بْنُ غَنَّامٍ وَقَدْ رَوَى قِصَّةَ الصَّلاَةِ عَنْ بُدَيْلٍ جَمَاعَةٌ لَمْ يَذْكُرُوا فِيهِ شَيْئًا مِنْ هَذَا ",
      urduText:
          "ام المومنین عائشہ رضی اللہ عنہا بیان کرتی ہیں:جب رسول اللہ صلی اللہ علیہ وسلم نے نماز شروع کی تو فرمایا: ”پاک ہے اے اللہ، تیری حمد ہے“ اور ”تیرا نام مبارک ہے اور تیری عظمت بلند ہے، ریت کا کوئی معبود نہیں۔ لیکن اللہ۔\"ابوداؤد کہتے ہیں: یہ روایت عبد السلام بن عبدالسلام بن علی رضی اللہ عنہ سے معروف نہیں ہے۔ ہارب اسے طلق ب کے علاوہ کسی نے روایت نہیں کیا۔ غنم۔ راویوں کے ایک گروہ نے (راوی) بدیل سے نماز کی تفصیل بیان کی ہے۔ انہوں نے اس دعا میں اس کا ذکر نہیں کیا۔",
      englishText:
          "Narrated Aisha, Ummul Mu'minin:When the Messenger of Allah (ﷺ) began his prayer, he said: \"Glory be to Thee, O Allah,\" and \"Praise be to Thee\" and \"Blessed is Thy name, and Exalted is Thy greatness, sand there is no god but Allah.\"Abu Dawud said: This tradition is not well known from 'Abd al-Salam b. Harb. No one narrated this except Talq b. Ghannam. A group of narrators reported the description of prayer from (the narrator) Budail; they did not mention therein this supplication.",
      reference: "Sunan Abi Dawud 776"),
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //////////////////////////////////////////////////////////// Surah faitha parhana  ///////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////// Muslim //////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////// Bukhari  ///////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////// Ibn Majah //////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 25,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، وَعَلِيُّ بْنُ مُحَمَّدٍ، قَالاَ حَدَّثَنَا مُحَمَّدُ بْنُ فُضَيْلٍ، عَنْ عُمَارَةَ بْنِ الْقَعْقَاعِ، عَنْ أَبِي زُرْعَةَ، عَنْ أَبِي هُرَيْرَةَ، قَالَ كَانَ رَسُولُ اللَّهِ ـ صلى الله عليه وسلم ـ إِذَا كَبَّرَ سَكَتَ بَيْنَ التَّكْبِيرِ وَالْقِرَاءَةِ ‏.‏ قَالَ فَقُلْتُ بِأَبِي أَنْتَ وَأُمِّي أَرَأَيْتَ سُكُوتَكَ بَيْنَ التَّكْبِيرِ وَالْقِرَاءَةِ فَأَخْبِرْنِي مَا تَقُولُ قَالَ \" أَقُولُ اللَّهُمَّ بَاعِدْ بَيْنِي وَبَيْنَ خَطَايَاىَ كَمَا بَاعَدْتَ بَيْنَ الْمَشْرِقِ وَالْمَغْرِبِ اللَّهُمَّ نَقِّنِي مِنْ خَطَايَاىَ كَالثَّوْبِ الأَبْيَضِ مِنَ الدَّنَسِ اللَّهُمَّ اغْسِلْنِي مِنْ خَطَايَاىَ بِالْمَاءِ وَالثَّلْجِ وَالْبَرَدِ \"",
      urduText:
          "ابوہریرہ رضی اللہ عنہ سے روایت ہے کہ:\"رسول اللہ صلی اللہ علیہ وسلم جب تکبیر (اللہ اکبر) کہتے تو تکبیر اور قرأت کے درمیان خاموش رہتے۔ میں نے کہا: 'میرے والد اور والدہ کو آپ کے لیے فدیہ دیا جائے! میں نے دیکھا کہ آپ تکبیر اور قرأت کے درمیان خاموش رہتے ہیں۔ براہِ کرم مجھے بتائیں کہ پھر آپ کیا کہتے ہیں؟‘‘ آپﷺ نے فرمایا: ’’میں کہتا ہوں: اللہُمَّا بَیْدَ بِیْنَ وَبِیْنَہَا قَمَا بَعْدَتَ بِنَالِمَشْرِیْکَ والمغرب۔ اللّٰہُمَّ نقِیْ مِن خطائِی کَتِثُوْبِلِ عَبَیْدِ منَدَنَاس؛ اللہممغسلنی من خطایا بلمعی وثتھلجی والبراد (اے اللہ مجھے میرے گناہوں سے اس طرح دور کر جیسے تو نے مشرق کو مغرب سے دور کیا ہے، اے اللہ مجھے میرے گناہوں سے اس طرح پاک کر دے جیسے سفید کپڑے کو میل سے پاک کر دیا جاتا ہے، اے اللہ! مجھے میرے گناہوں سے پانی اور برف اور اولوں سے پاک کر دے)۔",
      englishText:
          "It was narrated that Abu Hurairah said:“When the Messenger of Allah (ﷺ) said the Takbir (Allah Akbar), he would remain silent between the Takbir and the recitation. I said: ‘May my father and mother be ransomed for you! I noticed that you are silent between the Takbir and the recitation; please tell me what you say then.’ He said: ‘I say: ‘Allahumma ba’id baini wa baina khatayaya kama ba’adta bainal-mashriqi wal-maghrib; Allahumma naqqini min khatayay kath-thawbil abyad minad- danas; Allahummaghsilni min khatayaya bil-ma’i waththalji wal-barad (O Allah, distance me from my sins as You have distanced the east from the west; O Allah purify me of my sins as a white garment is purified of dirt; O Allah, cleanse me of my sins with water and snow and hail).”",
      reference: "Sunan Ibn Majah 805"),
  PropheticWayOfPrayerModel(
      id: 26,
      arabicText:
          "حَدَّثَنَا نَصْرُ بْنُ عَلِيٍّ الْجَهْضَمِيُّ، وَبَكْرُ بْنُ خَلَفٍ، وَعُقْبَةُ بْنُ مُكْرَمٍ، قَالُوا حَدَّثَنَا صَفْوَانُ بْنُ عِيسَى، حَدَّثَنَا بِشْرُ بْنُ رَافِعٍ، عَنْ أَبِي عَبْدِ اللَّهِ ابْنِ عَمِّ أَبِي هُرَيْرَةَ، عَنْ أَبِي هُرَيْرَةَ، أَنَّ النَّبِيَّ ـ صلى الله عليه وسلم ـ كَانَ يَفْتَتِحُ الْقِرَاءَةَ بِـ ‏{الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ}‏ ‏.‏",
      urduText:
          "حضرت ابوہریرہ رضی اللہ عنہ سے روایت ہے کہ رسول اللہ صلی اللہ علیہ وسلم اپنی قراءت کا آغاز ’’تمام حمد و ثنا اللہ کے لیے ہے جو تمام موجودات کا رب ہے‘‘ (الحمد للہ رب العالمین)",
      englishText:
          "It was narrated from Abu Hurairah that the Prophet (ﷺ) used to start his recitation with ‘All the praises and thanks are to Allah, the Lord of all that exists’ (Al-hamdu Lillahi Rabbil-‘Alamin),",
      reference: "Sunan Ibn Majah 814"),

  PropheticWayOfPrayerModel(
      id: 31,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا إِسْمَاعِيلُ ابْنُ عُلَيَّةَ، عَنِ ابْنِ جُرَيْجٍ، عَنِ الْعَلاَءِ بْنِ عَبْدِ الرَّحْمَنِ بْنِ يَعْقُوبَ، أَنَّ أَبَا السَّائِبِ، أَخْبَرَهُ أَنَّهُ، سَمِعَ أَبَا هُرَيْرَةَ، يَقُولُ قَالَ رَسُولُ اللَّهِ ـ صلى الله عليه وسلم ـ \" مَنْ صَلَّى صَلاَةً لَمْ يَقْرَأْ فِيهَا بِأُمِّ الْقُرْآنِ فَهِيَ خِدَاجٌ غَيْرُ تَمَامٍ \" فَقُلْتُ يَا أَبَا هُرَيْرَةَ فَإِنِّي أَكُونُ أَحْيَانًا وَرَاءَ الإِمَامِ . فَغَمَزَ ذِرَاعِي وَقَالَ يَا فَارِسِيُّ اقْرَأْ بِهَا فِي نَفْسِكَ ",
      urduText:
          "ابو سائب رضی اللہ عنہ سے روایت ہے کہ انہوں نے ابوہریرہ رضی اللہ عنہ کو کہتے سنا:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: جس نے کوئی ایسی نماز پڑھی جس میں ام القرآن (یعنی سورۃ الفاتحہ) نہ پڑھے تو وہ ناقص ہے۔ میں نے کہا: اے ابوہریرہ کبھی کبھی میں امام کے پیچھے ہوتا ہوں۔ اس نے میرا بازو دبایا اور کہا: اے فارسی! اسے خود ہی پڑھو۔''",
      englishText:
          "It was narrated from Abu Sa’ib that he heard Abu Hurairah say:“The Messenger of Allah (ﷺ) said: ‘Whoever performs a prayer in which he does not recite Ummul Qur’an (the Mother of the Qur’an, i.e., Al- Fatihah), it is deficient; not complete.’” I said: ‘O Abu Hurairah, sometimes I am behind the Imam. He pressed my forearm and said: ‘O Persian! Recite it to yourself.’”",
      reference: "Sunan Ibn Majah 838"),

  PropheticWayOfPrayerModel(
      id: 28,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، وَهِشَامُ بْنُ عَمَّارٍ، قَالاَ حَدَّثَنَا سُفْيَانُ بْنُ عُيَيْنَةَ، عَنِ الزُّهْرِيِّ، عَنِ ابْنِ أُكَيْمَةَ، قَالَ سَمِعْتُ أَبَا هُرَيْرَةَ، يَقُولُ صَلَّى النَّبِيُّ ـ صلى الله عليه وسلم ـ بِأَصْحَابِهِ صَلاَةً نَظُنُّ أَنَّهَا الصُّبْحُ فَقَالَ \" هَلْ قَرَأَ مِنْكُمْ مِنْ أَحَدٍ \" قَالَ رَجُلٌ أَنَا . قَالَ \" إِنِّي أَقُولُ مَا لِي أُنَازَعُ الْقُرْآنَ \"",
      urduText:
          "ابن عکیمہ سے مروی ہے کہمیں نے ابوہریرہ رضی اللہ عنہ کو کہتے سنا: رسول اللہ صلی اللہ علیہ وسلم نے اپنے صحابہ کو نماز پڑھائی۔ ہمارے خیال میں یہ سبھ تھا۔ آپ نے فرمایا: کیا تم میں سے کسی نے تلاوت کی ہے؟ ایک آدمی نے کہا: میں نے کیا۔ اس نے کہا: میں اپنے آپ سے کہہ رہا تھا کہ مجھ سے کیا حرج ہے کہ کوئی مجھ سے قرآن چھیننے کے لیے لڑ رہا ہے؟",
      englishText:
          "It was narrated that Ibn Ukaimah said:“I heard Abu Hurairah say: ‘The Prophet (ﷺ) led his Companions in a prayer; we think it was the Subh. He said: “Did anyone among you recite?” A man said: “I did.” He said: “I was saying to myself, what is wrong with me that someone is fighting to wrest the Qur’an from me?”",
      reference: "Sunan Ibn Majah 848"),

  PropheticWayOfPrayerModel(
      id: 30,
      arabicText:
          "حَدَّثَنَا عُثْمَانُ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا حُمَيْدُ بْنُ عَبْدِ الرَّحْمَنِ، حَدَّثَنَا ابْنُ أَبِي لَيْلَى، عَنْ سَلَمَةَ بْنِ كُهَيْلٍ، عَنْ حُجَيَّةَ بْنِ عَدِيٍّ، عَنْ عَلِيٍّ، قَالَ سَمِعْتُ رَسُولَ اللَّهِ ـ صلى الله عليه وسلم ـ إِذَا قَالَ ‏{وَلاَ الضَّالِّينَ}‏ قَالَ \" آمِينَ \".",
      urduText:
          "روایت ہے کہ علی نے فرمایا:\"میں نے رسول اللہ صلی اللہ علیہ وسلم کو آمین کہتے ہوئے سنا، آپ صلی اللہ علیہ وسلم نے فرمایا: \"نہ گمراہوں کی\"۔",
      englishText:
          "It was narrated that ‘Ali said:“I heard the Messenger of Allah (ﷺ) saying ‘Amin’ after he said, ‘nor of those who went astray.’[1:7]",
      reference: "Sunan Ibn Majah 854"),

////////////////////////////////////////////////////////////// Abu dawood  ///////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 30,
      arabicText:
          "حَدَّثَنَا أَبُو الْوَلِيدِ الطَّيَالِسِيُّ، حَدَّثَنَا هَمَّامٌ، عَنْ قَتَادَةَ، عَنْ أَبِي نَضْرَةَ، عَنْ أَبِي سَعِيدٍ، قَالَ أُمِرْنَا أَنْ نَقْرَأَ، بِفَاتِحَةِ الْكِتَابِ وَمَا تَيَسَّرَ ‏.‏",
      urduText:
          "ابو سعید نے کہا:ہمیں فاتحہ الکتاب پڑھنے کا حکم دیا گیا تھا اور جو کچھ آسان ہو (نماز کے دوران قرآن سے)۔",
      englishText:
          "Abu Sa’id said:we were commanded to recite Fatihat al-kitab and whatever was convenient (from the Qur’an during the prayer).",
      reference: " Sunan Abi Dawud 818"),

  PropheticWayOfPrayerModel(
      id: 31,
      arabicText:
          "حَدَّثَنَا ابْنُ بَشَّارٍ، حَدَّثَنَا يَحْيَى، حَدَّثَنَا جَعْفَرٌ، عَنْ أَبِي عُثْمَانَ، عَنْ أَبِي هُرَيْرَةَ، قَالَ أَمَرَنِي رَسُولُ اللَّهِ صلى الله عليه وسلم أَنْ أُنَادِيَ أَنَّهُ لاَ صَلاَةَ إِلاَّ بِقِرَاءَةِ فَاتِحَةِ الْكِتَابِ فَمَا زَادَ ‏.‏",
      urduText:
          "ابوہریرہ نے کہا:مجھے رسول اللہ صلی اللہ علیہ وسلم نے حکم دیا کہ میں اعلان کروں کہ نماز صحیح نہیں ہے مگر فاتحہ الکتاب اور اس سے زیادہ کچھ پڑھنا۔",
      englishText:
          "Abu Hurairah said:The Messenger of Allah (ﷺ) commanded me to announce that prayer is not valid but with the recitation of Fatihat al-kitab and something more.",
      reference: " Sunan Abi Dawud 820"),

  PropheticWayOfPrayerModel(
      id: 32,
      arabicText:
          "حَدَّثَنَا الْقَعْنَبِيُّ، عَنْ مَالِكٍ، عَنِ الْعَلاَءِ بْنِ عَبْدِ الرَّحْمَنِ، أَنَّهُ سَمِعَ أَبَا السَّائِبِ، مَوْلَى هِشَامِ بْنِ زُهْرَةَ يَقُولُ سَمِعْتُ أَبَا هُرَيْرَةَ، يَقُولُ قَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" مَنْ صَلَّى صَلاَةً لَمْ يَقْرَأْ فِيهَا بِأُمِّ الْقُرْآنِ فَهِيَ خِدَاجٌ فَهِيَ خِدَاجٌ فَهِيَ خِدَاجٌ غَيْرُ تَمَامٍ \" قَالَ فَقُلْتُ يَا أَبَا هُرَيْرَةَ إِنِّي أَكُونُ أَحْيَانًا وَرَاءَ الإِمَامِ ‏.‏ قَالَ فَغَمَزَ ذِرَاعِي وَقَالَ اقْرَأْ بِهَا يَا فَارِسِيُّ فِي نَفْسِكَ فَإِنِّي سَمِعْتُ رَسُولَ اللَّهِ صلى الله عليه وسلم يَقُولُ \" قَالَ اللَّهُ تَعَالَى قَسَمْتُ الصَّلاَةَ بَيْنِي وَبَيْنَ عَبْدِي نِصْفَيْنِ فَنِصْفُهَا لِي وَنِصْفُهَا لِعَبْدِي وَلِعَبْدِي مَا سَأَلَ \" قَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" اقْرَءُوا يَقُولُ الْعَبْدُ ‏{‏ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ‏}‏ يَقُولُ اللَّهُ عَزَّ وَجَلَّ حَمِدَنِي عَبْدِي يَقُولُ الْعَبْدُ ‏{‏ الرَّحْمَنِ الرَّحِيمِ ‏}‏ يَقُولُ اللَّهُ عَزَّ وَجَلَّ أَثْنَى عَلَىَّ عَبْدِي يَقُولُ الْعَبْدُ ‏{‏ مَالِكِ يَوْمِ الدِّينِ ‏}‏ يَقُولُ اللَّهُ عَزَّ وَجَلَّ مَجَّدَنِي عَبْدِي يَقُولُ الْعَبْدُ ‏{‏ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ‏}‏ يَقُولُ اللَّهُ وَهَذِهِ بَيْنِي وَبَيْنَ عَبْدِي وَلِعَبْدِي مَا سَأَلَ يَقُولُ الْعَبْدُ ‏{‏ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ * صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلاَ الضَّالِّينَ ‏}‏ يَقُولُ اللَّهُ فَهَؤُلاَءِ لِعَبْدِي وَلِعَبْدِي مَا سَأَلَ \"",
      urduText:
          "حضرت ابوہریرہ رضی اللہ عنہ سے روایت ہے کہ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا:اگر کوئی ایسی نماز پڑھے جس میں وہ ام القرآن نہ پڑھے تو وہ نامکمل ہے، نامکمل ہے، نامکمل اور ناقص ہے۔ (راوی نے کہا) میں نے کہا: ابوہریرہ، میں کبھی امام کے پیچھے نماز پڑھتا ہوں (پھر کیا کروں)؟ اس نے میرا ہاتھ دباتے ہوئے جواب دیا: اے فارسی اسے باطن سے پڑھو، کیونکہ میں نے رسول اللہ صلی اللہ علیہ وسلم کو یہ فرماتے ہوئے سنا ہے کہ اللہ تعالیٰ نے فرمایا: میرے پاس میرے بندے کے لیے میں اور نصف ہے اور میرا بندہ وہی پائے گا جو اسے ملے گا۔ پوچھتا ہے رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: پڑھو۔ جب بندہ کہتا ہے: \"الحمد للہ رب العالمین\" تو اللہ تعالیٰ فرماتا ہے: \"میرے بندے نے میری تعریف کی۔\" جب بندہ کہتا ہے: \"رحم کرنے والا، رحم کرنے والا،\" اللہ تعالیٰ فرماتا ہے: \"میرے بندے نے میری تعریف کی \" جب بندہ کہتا ہے: \" روزِ جزا کے مالک \" اللہ تعالیٰ فرماتا ہے: \"میرے بندے نے میری تسبیح کی\" جب بندہ کہتا ہے: \" ہم تیری عبادت کرتے ہیں اور تجھ ہی سے مدد مانگتے ہیں۔ \" (اللہ فرماتا ہے) یہ میرے اور میرے بندے کے درمیان ہے اور میرا بندہ جو مانگے گا اسے ملے گا۔ جب بندہ کہتا ہے: \"ہمیں سیدھا راستہ دکھا، ان لوگوں کا راستہ جن پر تو نے احسان کیا، نہ کہ غصہ کرنے والوں کا اور نہ گمراہوں کا\" (اللہ فرماتا ہے:) میرا بندہ اور میرا بندہ جو مانگے گا وہی ملے گا۔",
      englishText:
          "Abu Hurairah reported the Messenger of Allah (May peace be upon him) as saying:If anyone observes a prayer in which he does not recite Umm al-Qur’an, it is incomplete, it is incomplete, it is incomplete, and deficient. (The narrator said) I said: Abu Hurairah, sometime I pray behind the imam(then what should I do)? Pressing my hand he replied: O Persian, recite it inwardly, for I heard the Messenger of Allah (ﷺ) as saying that Allah, Most High, has said: I have Me and the Half for my servant and My servant will receive what he asks. The Messenger of Allah(ﷺ) said: Recite. When the servant says: “praise be to Allah, the Lord of the Universe,” Allah, Most High says: “My servant has praised me.” When the servant says: “ The Compassionate, the merciful, “Allah Most High says: “My servant has lauded me.” When the servant says: “Owner of the Day of Judgment,” Allah, Most High, says: “My servant has glorified Me” When the servant says: “ Thee do we worship and of thee we ask help. “ (Allah says) “This is between Me and My servant, and My servant will receive what he asks.” When the servant says: “ Guide us to the Straight Path, the path of those whom thou hast favoured, not ( the path) of those who earn thine anger nor of those who go astray,”(Allah says: ) “This is for My servant, and My servant will receive what he asks.”",
      reference: " Sunan Abi Dawud 821"),

  PropheticWayOfPrayerModel(
      id: 33,
      arabicText:
          "حَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ، وَابْنُ السَّرْحِ، قَالاَ حَدَّثَنَا سُفْيَانُ، عَنِ الزُّهْرِيِّ، عَنْ مَحْمُودِ بْنِ الرَّبِيعِ، عَنْ عُبَادَةَ بْنِ الصَّامِتِ، يَبْلُغُ بِهِ النَّبِيَّ صلى الله عليه وسلم قَالَ \" لاَ صَلاَةَ لِمَنْ لَمْ يَقْرَأْ بِفَاتِحَةِ الْكِتَابِ فَصَاعِدًا \" قَالَ سُفْيَانُ لِمَنْ يُصَلِّي وَحْدَهُ ‏.‏",
      urduText:
          "عبادہ بی۔ الصامت نے بیان کیا کہ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا:نماز صحیح نہیں ہے میں فاتحہ الکتاب اور کچھ اور نہیں پڑھتا، سفیان (راوی) نے کہا: یہ اس شخص پر لاگو ہوتا ہے جو تنہا نماز پڑھتا ہے۔",
      englishText:
          "'Ubadah b. al-Samit reported the Messenger of Allah (ﷺ) as saying :The prayer is not valid I one does not recite fatihat al-kitab and something more, sufyan( the narrator) said: This applies to a man who prays alone.",
      reference: " Sunan Abi Dawud 822"),

  PropheticWayOfPrayerModel(
      id: 34,
      arabicText:
          "حَدَّثَنَا الْقَعْنَبِيُّ، عَنْ مَالِكٍ، عَنِ ابْنِ شِهَابٍ، عَنِ ابْنِ أُكَيْمَةَ اللَّيْثِيِّ، عَنْ أَبِي هُرَيْرَةَ، أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم انْصَرَفَ مِنْ صَلاَةٍ جَهَرَ فِيهَا بِالْقِرَاءَةِ فَقَالَ \" هَلْ قَرَأَ مَعِي أَحَدٌ مِنْكُمْ آنِفًا \" فَقَالَ رَجُلٌ نَعَمْ يَا رَسُولَ اللَّهِ ‏.‏ قَالَ \" إِنِّي أَقُولُ مَا لِي أُنَازَعُ الْقُرْآنَ \" قَالَ فَانْتَهَى النَّاسُ عَنِ الْقِرَاءَةِ مَعَ رَسُولِ اللَّهِ صلى الله عليه وسلم فِيمَا جَهَرَ فِيهِ النَّبِيُّ صلى الله عليه وسلم بِالْقِرَاءَةِ مِنَ الصَّلَوَاتِ حِينَ سَمِعُوا ذَلِكَ مِنْ رَسُولِ اللَّهِ صلى الله عليه وسلم ‏.‏ قَالَ أَبُو دَاوُدَ رَوَى حَدِيثَ ابْنِ أُكَيْمَةَ هَذَا مَعْمَرٌ وَيُونُسُ وَأُسَامَةُ بْنُ زَيْدٍ عَنِ الزُّهْرِيِّ عَلَى مَعْنَى مَالِكٍ ‏.‏",
      urduText:
          "ابوہریرہ رضی اللہ عنہ روایت کرتے ہیں:جب رسول اللہ صلی اللہ علیہ وسلم ایک نماز سے فارغ ہوئے جس میں آپ نے بلند آواز سے (قرآن) پڑھا تھا تو آپ صلی اللہ علیہ وسلم نے پوچھا: کیا تم میں سے کسی نے ابھی میرے ساتھ قرأت کی ہے؟ ایک آدمی نے عرض کیا: جی ہاں، اللہ کے رسول۔ اس نے کہا: میں حیران ہوں کہ مجھے کیا ہو گیا ہے کہ مجھ سے قرآن کی تلاوت کی گئی ہے۔ انہوں نے کہا: جب لوگوں نے رسول اللہ صلی اللہ علیہ وسلم سے سنا تو انہوں نے آپ صلی اللہ علیہ وسلم کے ساتھ ان نمازوں میں قرآن پڑھنا چھوڑ دیا جس میں آپ بلند آواز سے پڑھتے تھے۔ابوداؤد کہتے ہیں: ابن عقیمہ کی روایت کردہ اس روایت کو معمر، یونس اور اسامہ نے بھی روایت کیا ہے۔ زید الزہری کی سند پر مالک کی روایت کے مشابہ ہے۔",
      englishText:
          "Narrated AbuHurayrah:When the Messenger of Allah (ﷺ) finished a prayer in which he had recited (the Qur'an) loudly, he asked: Did any of you recite along with me just now? A man replied: Yes, Messenger of Allah. He said: I am wondering what is the matter with me that I have been contended with reciting the Qur'an. He said: When the people heard that from the Messenger of Allah (ﷺ) they ceased reciting (the Qur'an) along with him at the prayers in which he recited aloud.Abu Dawud said: This tradition reported by Ibn Ukaimah has also been narrated by Ma'mar, Yunus, and Usamah b. Zaid on the authority of al-Zuhri similar to the tradition of Malik.",
      reference: " Sunan Abi Dawud 826"),

////////////////////////////////////////////////////////////// Nisai //////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////// Trimirzi  ///////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 27,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ يَحْيَى بْنِ أَبِي عُمَرَ الْمَكِّيُّ أَبُو عَبْدِ اللَّهِ الْعَدَنِيُّ، وَعَلِيُّ بْنُ حُجْرٍ، قَالاَ حَدَّثَنَا سُفْيَانُ بْنُ عُيَيْنَةَ، عَنِ الزُّهْرِيِّ، عَنْ مَحْمُودِ بْنِ الرَّبِيعِ، عَنْ عُبَادَةَ بْنِ الصَّامِتِ، عَنِ النَّبِيِّ صلى الله عليه وسلم قَالَ \" لاَ صَلاَةَ لِمَنْ لَمْ يَقْرَأْ بِفَاتِحَةِ الْكِتَابِ \" قَالَ وَفِي الْبَابِ عَنْ أَبِي هُرَيْرَةَ وَعَائِشَةَ وَأَنَسٍ وَأَبِي قَتَادَةَ وَعَبْدِ اللَّهِ بْنِ عَمْرٍو . قَالَ أَبُو عِيسَى حَدِيثُ عُبَادَةَ حَدِيثٌ حَسَنٌ صَحِيحٌ . وَالْعَمَلُ عَلَيْهِ عِنْدَ أَكْثَرِ أَهْلِ الْعِلْمِ مِنْ أَصْحَابِ النَّبِيِّ صلى الله عليه وسلم مِنْهُمْ عُمَرُ بْنُ الْخَطَّابِ وَعَلِيُّ بْنُ أَبِي طَالِبٍ وَجَابِرُ بْنُ عَبْدِ اللَّهِ وَعِمْرَانُ بْنُ حُصَيْنٍ وَغَيْرُهُمْ قَالُوا لاَ تُجْزِئُ صَلاَةٌ إِلاَّ بِقِرَاءَةِ فَاتِحَةِ الْكِتَابِ . وَقَالَ عَلِيُّ بْنُ أَبِي طَالِبٍ كُلُّ صَلاَةٍ لَمْ يُقْرَأْ فِيهَا بِفَاتِحَةِ الْكِتَابِ فَهِيَ خِدَاجٌ غَيْرُ تَمَامٍ . وَبِهِ يَقُولُ ابْنُ الْمُبَارَكِ وَالشَّافِعِيُّ وَأَحْمَدُ وَإِسْحَاقُ . سَمِعْتُ ابْنَ أَبِي عُمَرَ يَقُولُ اخْتَلَفْتُ إِلَى ابْنِ عُيَيْنَةَ ثَمَانِيَةَ عَشْرَ سَنَةً وَكَانَ الْحُمَيْدِيُّ أَكْبَرَ مِنِّي بِسَنَةٍ . وَسَمِعْتُ ابْنَ أَبِي عُمَرَ يَقُولُ حَجَجْتُ سَبْعِينَ حَجَّةً مَاشِيًا عَلَى قَدَمَىَّ ",
      urduText:
          "عبادہ بن سمیل نے بیان کیا کہ:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: ”جو فاتحہ نہیں پڑھتا اس کی کوئی نماز نہیں۔",
      englishText:
          "Ubadah bin As-Samil narrated that : the Prophet said: \"There is no Salat for the one who does not recite Fatihatil-Kitab.\"",
      reference: " Jami` at-Tirmidhi 247"),

  PropheticWayOfPrayerModel(
      id: 29,
      arabicText:
          "حَدَّثَنَا أَبُو كُرَيْبٍ، مُحَمَّدُ بْنُ الْعَلاَءِ حَدَّثَنَا زَيْدُ بْنُ حُبَابٍ، حَدَّثَنِي مَالِكُ بْنُ أَنَسٍ، حَدَّثَنَا الزُّهْرِيُّ، عَنْ سَعِيدِ بْنِ الْمُسَيَّبِ، وَأَبِي، سَلَمَةَ عَنْ أَبِي هُرَيْرَةَ، عَنِ النَّبِيِّ صلى الله عليه وسلم قَالَ \" إِذَا أَمَّنَ الإِمَامُ فَأَمِّنُوا فَإِنَّهُ مَنْ وَافَقَ تَأْمِينُهُ تَأْمِينَ الْمَلاَئِكَةِ غُفِرَ لَهُ مَا تَقَدَّمَ مِنْ ذَنْبِهِ \" قَالَ أَبُو عِيسَى حَدِيثُ أَبِي هُرَيْرَةَ حَدِيثٌ حَسَنٌ صَحِيحٌ ",
      urduText:
          "ابوہریرہ نے بیان کیا کہ: آپ صلی اللہ علیہ وسلم نے فرمایا جب امام امین کہے تو (تم سب) آمین کہو۔ کیونکہ جس کا 'امین' فرشتوں کے 'امین' کے ساتھ ہو گا تو اس کے پچھلے گناہ معاف کر دیے جائیں گے۔",
      englishText:
          "Abu Hurairah narrated that :the Prophet said \"When the Imam says 'Amin' then (all of you) say 'Amin.' For whoever's 'Amin' concurs with the 'Amin' of the angels, then his past sins will be forgiven.\"",
      reference: "Jami` at-Tirmidhi 250"),

////////////////////////////////////////////////////////////// Bukhari  ///////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  ////////////////////////////////////// Point of view of different imam's on reciing surah fatiha behind imam . //////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  ///////////////////////////////////////////////////////  Imam Shafi //////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 31,
      arabicText:
          "حَدَّثَنَا الْقَعْنَبِيُّ، عَنْ مَالِكٍ، عَنِ الْعَلاَءِ بْنِ عَبْدِ الرَّحْمَنِ، أَنَّهُ سَمِعَ أَبَا السَّائِبِ، مَوْلَى هِشَامِ بْنِ زُهْرَةَ يَقُولُ سَمِعْتُ أَبَا هُرَيْرَةَ، يَقُولُ قَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" مَنْ صَلَّى صَلاَةً لَمْ يَقْرَأْ فِيهَا بِأُمِّ الْقُرْآنِ فَهِيَ خِدَاجٌ فَهِيَ خِدَاجٌ فَهِيَ خِدَاجٌ غَيْرُ تَمَامٍ \" قَالَ فَقُلْتُ يَا أَبَا هُرَيْرَةَ إِنِّي أَكُونُ أَحْيَانًا وَرَاءَ الإِمَامِ . قَالَ فَغَمَزَ ذِرَاعِي وَقَالَ اقْرَأْ بِهَا يَا فَارِسِيُّ فِي نَفْسِكَ فَإِنِّي سَمِعْتُ رَسُولَ اللَّهِ صلى الله عليه وسلم يَقُولُ \" قَالَ اللَّهُ تَعَالَى قَسَمْتُ الصَّلاَةَ بَيْنِي وَبَيْنَ عَبْدِي نِصْفَيْنِ فَنِصْفُهَا لِي وَنِصْفُهَا لِعَبْدِي وَلِعَبْدِي مَا سَأَلَ \" قَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" اقْرَءُوا يَقُولُ الْعَبْدُ { الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ } يَقُولُ اللَّهُ عَزَّ وَجَلَّ حَمِدَنِي عَبْدِي يَقُولُ الْعَبْدُ  الرَّحْمَنِ الرَّحِيمِ  يَقُولُ اللَّهُ عَزَّ وَجَلَّ أَثْنَى عَلَىَّ عَبْدِي يَقُولُ الْعَبْدُ } مَالِكِ يَوْمِ الدِّينِ } يَقُولُ اللَّهُ عَزَّ وَجَلَّ مَجَّدَنِي عَبْدِي يَقُولُ الْعَبْدُ } إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ } يَقُولُ اللَّهُ وَهَذِهِ بَيْنِي وَبَيْنَ عَبْدِي وَلِعَبْدِي مَا سَأَلَ يَقُولُ الْعَبْدُ } اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ * صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلاَ الضَّالِّينَ } يَقُولُ اللَّهُ فَهَؤُلاَءِ لِعَبْدِي وَلِعَبْدِي مَا سَأَلَ \"",
      englishText:
          "Abu Hurairah reported the Messenger of Allah (May peace be upon him) as saying:If anyone observes a prayer in which he does not recite Umm al-Qur’an, it is incomplete, it is incomplete, it is incomplete, and deficient. (The narrator said) I said: Abu Hurairah, sometime I pray behind the imam(then what should I do)? Pressing my hand he replied: O Persian, recite it inwardly, for I heard the Messenger of Allah (ﷺ) as saying that Allah, Most High, has said: I have Me and the Half for my servant and My servant will receive what he asks. The Messenger of Allah(ﷺ) said: Recite. When the servant says: “praise be to Allah, the Lord of the Universe,” Allah, Most High says: “My servant has praised me.” When the servant says: “ The Compassionate, the merciful, “Allah Most High says: “My servant has lauded me.” When the servant says: “Owner of the Day of Judgment,” Allah, Most High, says: “My servant has glorified Me” When the servant says: “ Thee do we worship and of thee we ask help. “ (Allah says) “This is between Me and My servant, and My servant will receive what he asks.” When the servant says: “ Guide us to the Straight Path, the path of those whom thou hast favoured, not ( the path) of those who earn thine anger nor of those who go astray,”(Allah says: ) “This is for My servant, and My servant will receive what he asks.”",
      urduText:
          "حضرت ابوہریرہ رضی اللہ عنہ سے روایت ہے کہ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا:اگر کوئی ایسی نماز پڑھے جس میں وہ ام القرآن نہ پڑھے تو وہ نامکمل ہے، نامکمل ہے، نامکمل ہے اور ناقص ہے۔ (راوی نے کہا) میں نے کہا: ابوہریرہ، میں کبھی امام کے پیچھے نماز پڑھتا ہوں (پھر کیا کروں)؟ اس نے میرا ہاتھ دباتے ہوئے جواب دیا: اے فارسی اسے باطن سے پڑھو، کیونکہ میں نے رسول اللہ صلی اللہ علیہ وسلم کو یہ فرماتے ہوئے سنا ہے کہ اللہ تعالیٰ نے فرمایا: میرے پاس میرے بندے کے لیے میں اور نصف ہے اور میرا بندہ وہی پائے گا جو اسے ملے گا۔ پوچھتا ہے رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: پڑھو۔ جب بندہ کہتا ہے: \" الحمد للہ رب العالمین \" تو اللہ تعالیٰ فرماتا ہے: \" میرے بندے نے میری تعریف کی۔\" جب بندہ کہتا ہے: رحم کرنے والا، رحم کرنے والا، اللہ تعالیٰ فرماتا ہے: میرے بندے نے میری تعریف کی۔ جب بندہ کہتا ہے: \"روزِ جزا کے مالک\" اللہ تعالیٰ فرماتا ہے: \" میرے بندے نے میری تسبیح کی\" جب بندہ کہتا ہے: \"ہم تیری عبادت کرتے ہیں اور تجھ ہی سے مدد مانگتے ہیں۔\" (اللہ فرماتا ہے) یہ میرے اور میرے بندے کے درمیان ہے اور میرا بندہ جو مانگے گا اسے ملے گا۔ جب بندہ کہتا ہے: \"\ میں سیدھا راستہ دکھا، ان لوگوں کا راستہ جن پر تو نے احسان کیا، نہ کہ غصہ کرنے والوں کا اور نہ گمراہوں کا\" (اللہ فرماتا ہے:) میرا بندہ اور میرا بندہ جو مانگے گا وہی ملے گا۔",
      reference: "Sunan Abu Dawud, 821"),
  PropheticWayOfPrayerModel(
      id: 32,
      arabicText:
          "حَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ، وَابْنُ السَّرْحِ، قَالاَ حَدَّثَنَا سُفْيَانُ، عَنِ الزُّهْرِيِّ، عَنْ مَحْمُودِ بْنِ الرَّبِيعِ، عَنْ عُبَادَةَ بْنِ الصَّامِتِ، يَبْلُغُ بِهِ النَّبِيَّ صلى الله عليه وسلم قَالَ \" لاَ صَلاَةَ لِمَنْ لَمْ يَقْرَأْ بِفَاتِحَةِ الْكِتَابِ فَصَاعِدًا \" قَالَ سُفْيَانُ لِمَنْ يُصَلِّي وَحْدَهُ ",
      urduText:
          "عبادہ بی۔ الصامت نے بیان کیا کہ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا:اگر کوئی فاتحہ الکتاب اور کچھ اور نہ پڑھے تو نماز صحیح نہیں ہے، سفیان (راوی) نے کہا: یہ اس شخص پر لاگو ہے جو تنہا نماز پڑھتا ہے۔",
      englishText:
          "Ubadah b. al-Samit reported the Messenger of Allah (ﷺ) as saying :The prayer is not valid I one does not recite fatihat al-kitab and something more, sufyan( the narrator) said: This applies to a man who prays alone.",
      reference: "Sunan Abu Dawud, 822"),

  ////////////////////////////////////////////////// Imam Abu Hanifa /////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 33,
      arabicText:
          "وَإِذَا قُرِئَ ٱلْقُرْءَانُ فَٱسْتَمِعُوا۟ لَهُۥ وَأَنصِتُوا۟ لَعَلَّكُمْ تُرْحَمُونَ ٢٠٤",
      urduText:
          "اور جب قرآن پڑھا جایا کرے تو اس کی طرف کان لگا دیا کرو اور خاموش رہا کرو امید ہے کہ تم پر رحمت ہو",
      englishText:
          "When the Quran is recited, listen to it attentively and be silent, so you may be shown mercy",
      reference: "SURAH AL-A’RAF AYAT 204"),
  PropheticWayOfPrayerModel(
      id: 34,
      arabicText:
          "حَدَّثَنَا مُوسَى بْنُ إِسْمَاعِيلَ، حَدَّثَنَا حَمَّادٌ، أَخْبَرَنَا زِيَادٌ الأَعْلَمُ، عَنِ الْحَسَنِ، أَنَّ أَبَا بَكْرَةَ، جَاءَ وَرَسُولُ اللَّهِ رَاكِعٌ فَرَكَعَ دُونَ الصَّفِّ ثُمَّ مَشَى إِلَى الصَّفِّ فَلَمَّا قَضَى النَّبِيُّ صلى الله عليه وسلم صَلاَتَهُ قَالَ \" أَيُّكُمُ الَّذِي رَكَعَ دُونَ الصَّفِّ ثُمَّ مَشَى إِلَى الصَّفِّ \" فَقَالَ أَبُو بَكْرَةَ أَنَا . فَقَالَ النَّبِيُّ صلى الله عليه وسلم \" زَادَكَ اللَّهُ حِرْصًا وَلاَ تَعُدْ \" قَالَ أَبُو دَاوُدَ زِيَادٌ الأَعْلَمُ زِيَادُ بْنُ فُلاَنِ بْنِ قُرَّةَ وَهُوَ ابْنُ خَالَةِ يُونُسَ بْنِ عُبَيْدِ اللَّهِ ",
      urduText:
          "الحسن نے رپورٹ کیا:ابوبکرہ رضی اللہ عنہ آئے جب رسول اللہ صلی اللہ علیہ وسلم رکوع کر رہے تھے۔ تو اس نے صف کے بغیر (اس میں شامل ہونے سے پہلے) رکوع کیا۔ پھر وہ صف میں چلا گیا۔ جب رسول اللہ صلی اللہ علیہ وسلم نماز سے فارغ ہوئے تو فرمایا: تم میں سے کس نے بغیر صف کے رکوع کیا اور پھر صف میں چلے گئے؟ ابوبکرہ نے کہا؛ یہ میں تھا. آپ صلی اللہ علیہ وسلم نے فرمایا: اللہ تعالیٰ تمہارے شوق میں اضافہ کرے۔ لیکن دوبارہ مت کرو.",
      englishText:
          "Al-Hasan reported :Abu Bakrah came when the apostle of Allah (ﷺ) was bowing. So he bowed without the row (before joining it). He then went to the row. When the prophet (ﷺ) finished his prayer, he said: which of your bowed without the row, and then went to the row? Abu Bakrah said; it was i. the prophet (ﷺ) said: May Allah increase your eagerness ! but do not do it again.",
      reference: "Sunan Abi Dawud 684"),

  /////////////////////////////////////////////////  Imam Malik /////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 35,
      arabicText:
          "حَدَّثَنَا الْقَعْنَبِيُّ، عَنْ مَالِكٍ، عَنِ ابْنِ شِهَابٍ، عَنِ ابْنِ أُكَيْمَةَ اللَّيْثِيِّ، عَنْ أَبِي هُرَيْرَةَ، أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم انْصَرَفَ مِنْ صَلاَةٍ جَهَرَ فِيهَا بِالْقِرَاءَةِ فَقَالَ \" هَلْ قَرَأَ مَعِي أَحَدٌ مِنْكُمْ آنِفًا \" فَقَالَ رَجُلٌ نَعَمْ يَا رَسُولَ اللَّهِ . قَالَ \" إِنِّي أَقُولُ مَا لِي أُنَازَعُ الْقُرْآنَ \" قَالَ فَانْتَهَى النَّاسُ عَنِ الْقِرَاءَةِ مَعَ رَسُولِ اللَّهِ صلى الله عليه وسلم فِيمَا جَهَرَ فِيهِ النَّبِيُّ صلى الله عليه وسلم بِالْقِرَاءَةِ مِنَ الصَّلَوَاتِ حِينَ سَمِعُوا ذَلِكَ مِنْ رَسُولِ اللَّهِ صلى الله عليه وسلم . قَالَ أَبُو دَاوُدَ رَوَى حَدِيثَ ابْنِ أُكَيْمَةَ هَذَا مَعْمَرٌ وَيُونُسُ وَأُسَامَةُ بْنُ زَيْدٍ عَنِ الزُّهْرِيِّ عَلَى مَعْنَى مَالِكٍ ",
      urduText:
          "ابوہریرہ رضی اللہ عنہ روایت کرتے ہیں:جب رسول اللہ صلی اللہ علیہ وسلم ایک نماز سے فارغ ہوئے جس میں آپ نے بلند آواز سے (قرآن) پڑھا تھا تو آپ صلی اللہ علیہ وسلم نے پوچھا: کیا تم میں سے کسی نے ابھی میرے ساتھ قرأت کی ہے؟ ایک آدمی نے عرض کیا: جی ہاں، اللہ کے رسول۔ اس نے کہا: میں حیران ہوں کہ مجھے کیا ہو گیا ہے کہ مجھ سے قرآن کی تلاوت کی گئی ہے۔ انہوں نے کہا: جب لوگوں نے رسول اللہ صلی اللہ علیہ وسلم سے سنا تو انہوں نے آپ صلی اللہ علیہ وسلم کے ساتھ ان نمازوں میں قرآن پڑھنا چھوڑ دیا جس میں آپ بلند آواز سے پڑھتے تھے۔ابوداؤد کہتے ہیں: ابن عقیمہ کی روایت کردہ اس روایت کو معمر، یونس اور اسامہ نے بھی روایت کیا ہے۔ زید الزہری کی سند پر مالک کی روایت کے مشابہ ہے۔",
      englishText:
          "Narrated AbuHurayrah:When the Messenger of Allah (ﷺ) finished a prayer in which he had recited (the Qur'an) loudly, he asked: Did any of you recite along with me just now? A man replied: Yes, Messenger of Allah. He said: I am wondering what is the matter with me that I have been contended with reciting the Qur'an. He said: When the people heard that from the Messenger of Allah (ﷺ) they ceased reciting (the Qur'an) along with him at the prayers in which he recited aloud.Abu Dawud said: This tradition reported by Ibn Ukaimah has also been narrated by Ma'mar, Yunus, and Usamah b. Zaid on the authority of al-Zuhri similar to the tradition of Malik.",
      reference: "Sunan Abi Dawud 826"),

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //////////////////////////////////////////// reading another surah after surah fatiha ////////////////////////////////////////////////

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////// Muslim ///////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 37,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا يَزِيدُ بْنُ هَارُونَ، أَخْبَرَنَا هَمَّامٌ، وَأَبَانُ بْنُ يَزِيدَ، عَنْ يَحْيَى بْنِ أَبِي كَثِيرٍ، عَنْ عَبْدِ اللَّهِ بْنِ أَبِي قَتَادَةَ، عَنْ أَبِيهِ، أَنَّ النَّبِيَّ صلى الله عليه وسلم كَانَ يَقْرَأُ فِي الرَّكْعَتَيْنِ الأُولَيَيْنِ مِنَ الظُّهْرِ وَالْعَصْرِ بِفَاتِحَةِ الْكِتَابِ وَسُورَةٍ وَيُسْمِعُنَا الآيَةَ أَحْيَانًا وَيَقْرَأُ فِي الرَّكْعَتَيْنِ الأُخْرَيَيْنِ بِفَاتِحَةِ الْكِتَابِ ‏.‏",
      urduText:
          "ابو قتادہ نے اپنے والد سے روایت کی ہے:رسول اللہ صلی اللہ علیہ وسلم ظہر اور عصر کی نمازوں کی پہلی دو رکعتوں میں کتاب کی پہلی سورت اور دوسری سورت پڑھا کرتے تھے۔ وہ کبھی کبھی اتنی بلند آواز سے تلاوت کرتے کہ آیت ہمیں سنائی دے اور آخری دو رکعتوں میں سورہ فاتحہ (صرف) پڑھتے۔",
      englishText:
          "Abu Qatada reported it on the authority of his father:The Messenger of Allah (ﷺ) would recite in the first two rak'ahs of the noon and afternoon prayers the opening chapter of the Book and another surah. He would sometimes recite loud enough to make audible to us the verse and would recite in the last two rak'ahs Surat al-Faitiha (only).",
      reference: "Sahih Muslim 451b"),

//////////////////////////////////////////////////// Bukhari ///////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 36,
      arabicText:
          "حَدَّثَنَا الْمَكِّيُّ بْنُ إِبْرَاهِيمَ، عَنْ هِشَامٍ، عَنْ يَحْيَى بْنِ أَبِي كَثِيرٍ، عَنْ عَبْدِ اللَّهِ بْنِ أَبِي قَتَادَةَ، عَنْ أَبِيهِ، قَالَ كَانَ النَّبِيُّ صلى الله عليه وسلم يَقْرَأُ فِي الرَّكْعَتَيْنِ مِنَ الظُّهْرِ وَالْعَصْرِ بِفَاتِحَةِ الْكِتَابِ، وَسُورَةٍ سُورَةٍ، وَيُسْمِعُنَا الآيَةَ أَحْيَانًا‏.‏",
      urduText:
          "عبداللہ بن ابی قتادہ رضی اللہ عنہ روایت کرتے ہیں:میرے والد نے کہا کہ رسول اللہ صلی اللہ علیہ وسلم نماز ظہر اور عصر کی پہلی دو رکعتوں میں سورہ فاتحہ کے ساتھ پڑھا کرتے تھے اور بعض اوقات ہمیں کوئی آیت سنائی دیتی تھی۔",
      englishText:
          "Narrated `Abdullah bin Abi Qatada:My father said, \"The Prophet (ﷺ) used to recite Al-Fatiha along with another Sura in the first two rak`at of the Zuhr and the `Asr prayers and at times a verse or so was audible to us.\"",
      reference: "Sahih al-Bukhari 762"),

//////////////////////////////////////////////////// Abu dawood ///////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 38,
      arabicText:
          "حَدَّثَنَا أَحْمَدُ بْنُ مُحَمَّدِ بْنِ حَنْبَلٍ، حَدَّثَنَا سُفْيَانُ، عَنِ الزُّهْرِيِّ، عَنْ سَالِمٍ، عَنْ أَبِيهِ، قَالَ رَأَيْتُ رَسُولَ اللَّهِ صلى الله عليه وسلم إِذَا اسْتَفْتَحَ الصَّلاَةَ رَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ مَنْكِبَيْهِ وَإِذَا أَرَادَ أَنْ يَرْكَعَ وَبَعْدَ مَا يَرْفَعُ رَأْسَهُ مِنَ الرُّكُوعِ - وَقَالَ سُفْيَانُ مَرَّةً وَإِذَا رَفَعَ رَأْسَهُ ‏.‏ وَأَكْثَرُ مَا كَانَ يَقُولُ وَبَعْدَ مَا يَرْفَعُ رَأْسَهُ مِنَ الرُّكُوعِ - وَلاَ يَرْفَعُ بَيْنَ السَّجْدَتَيْنِ ‏",
      urduText:
          "سالم نے اپنے والد (ابن عمر) سے روایت کی:میں نے رسول اللہ صلی اللہ علیہ وسلم کو دیکھا کہ جب آپ نماز شروع کرتے تو اپنے دونوں ہاتھ اپنے کندھوں کے مقابل اٹھاتے، اور جب آپ رکوع کرتے تو ایسا کرتے اور رکوع کے بعد اپنا سر اٹھاتے۔ سفیان (ایک راوی) نے ایک مرتبہ کہا: جب اس نے اپنا سر اٹھایا: اور اس کے بعد فرماتے تھے: \"جب اس نے رکوع کے بعد اپنا سر اٹھایا۔ وہ دونوں سجدوں کے درمیان ہاتھ نہیں اٹھاتا تھا۔\"",
      englishText:
          "Salim reported on the authority of his father (Ibn ‘Umar):I saw the Messenger of Allah(ﷺ) that when he began prayer, he used to raise his hands opposite his shoulders, and he did so when he bowed, and raised his head after bowing. Sufyan(a narrator) once said: “When he raised his head:; and after he used to say: \“When he raised his head after bowing. He would not raise (his hands) between the two prostrations.\"",
      reference: " Sunan Abi Dawud 721"),
  PropheticWayOfPrayerModel(
      id: 39,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ الْمُصَفَّى الْحِمْصِيُّ، حَدَّثَنَا بَقِيَّةُ، حَدَّثَنَا الزُّبَيْدِيُّ، عَنِ الزُّهْرِيِّ، عَنْ سَالِمٍ، عَنْ عَبْدِ اللَّهِ بْنِ عُمَرَ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ إِلَى الصَّلاَةِ رَفَعَ يَدَيْهِ حَتَّى تَكُونَا حَذْوَ مَنْكِبَيْهِ ثُمَّ كَبَّرَ وَهُمَا كَذَلِكَ فَيَرْكَعُ ثُمَّ إِذَا أَرَادَ أَنْ يَرْفَعَ صُلْبَهُ رَفَعَهُمَا حَتَّى تَكُونَا حَذْوَ مَنْكِبَيْهِ ثُمَّ قَالَ سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ وَلاَ يَرْفَعُ يَدَيْهِ فِي السُّجُودِ وَيَرْفَعُهُمَا فِي كُلِّ تَكْبِيرَةٍ يُكَبِّرُهَا قَبْلَ الرُّكُوعِ حَتَّى تَنْقَضِيَ صَلاَتُهُ ‏.‏",
      urduText:
          "عبداللہ بی۔ عمر نے کہا:رسول اللہ صلی اللہ علیہ وسلم جب نماز شروع کرتے تو اپنے ہاتھ اپنے کندھوں کے مقابل اٹھاتے، پھر اسی حالت میں تکبیر کہتے، پھر رکوع کرتے۔ اور جب رکوع کے بعد اپنی پیٹھ (سر) کو اٹھایا تو انہیں اپنے کندھوں کے مقابل اٹھایا اور فرمایا: اللہ اس کی سنتا ہے جو اس کی حمد کرتا ہے۔ لیکن سجدہ کرتے وقت ہاتھ نہیں اٹھایا۔ بلکہ اس نے رکوع کرنے سے پہلے تکبیر (اللہ سب سے بڑا ہے) کہنے پر انہیں اٹھایا یہاں تک کہ اس کی نماز ختم ہو گئی۔",
      englishText:
          "‘Abd Allah b. Umar said:The Messenger of Allah (ﷺ) used to raise his hands opposite his shoulders when he began prayer, then he uttered takbir (Allah is most great) in the same condition, and then he bowed. And when he raised his back (head) after bowing he raised them opposite his shoulders, and said: “Allah listens to him who praises Him.” But he did not raise his hand when he prostrated himself; he rather raised them when he uttered the takbir (Allah is most great) before bowing until his prayer was finished.",
      reference: "Sunan Abi Dawud 722"),

  PropheticWayOfPrayerModel(
      id: 40,
      arabicText:
          "حَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ، حَدَّثَنَا ابْنُ لَهِيعَةَ، عَنْ أَبِي هُبَيْرَةَ، عَنْ مَيْمُونٍ الْمَكِّيِّ، أَنَّهُ رَأَى عَبْدَ اللَّهِ بْنَ الزُّبَيْرِ وَصَلَّى بِهِمْ يُشِيرُ بِكَفَّيْهِ حِينَ يَقُومُ وَحِينَ يَرْكَعُ وَحِينَ يَسْجُدُ وَحِينَ يَنْهَضُ لِلْقِيَامِ فَيَقُومُ فَيُشِيرُ بِيَدَيْهِ فَانْطَلَقْتُ إِلَى ابْنِ عَبَّاسٍ فَقُلْتُ إِنِّي رَأَيْتُ ابْنَ الزُّبَيْرِ صَلَّى صَلاَةً لَمْ أَرَ أَحَدًا يُصَلِّيهَا فَوَصَفْتُ لَهُ هَذِهِ الإِشَارَةَ فَقَالَ إِنْ أَحْبَبْتَ أَنْ تَنْظُرَ إِلَى صَلاَةِ رَسُولِ اللَّهِ صلى الله عليه وسلم فَاقْتَدِ بِصَلاَةِ عَبْدِ اللَّهِ بْنِ الزُّبَيْرِ ‏.",
      urduText:
          "عبداللہ بن عباس رضی اللہ عنہما کہتے ہیں:میمون مکی کہتے ہیں کہ انہوں نے عبداللہ بن زبیر کو نماز پڑھتے ہوئے دیکھا۔ آپ صلی اللہ علیہ وسلم نے اپنے ہاتھوں سے اشارہ کیا (یعنی اپنے ہاتھ کندھوں کے مقابل اٹھائے) جب آپ کھڑے ہوتے، جب رکوع کرتے اور سجدہ کرتے اور جب سجدہ کے بعد اٹھتے تو اپنے ہاتھوں سے اشارہ کرتے (یعنی ہاتھ اٹھاتے)۔میں ابن عباس رضی اللہ عنہ کے پاس گیا اور کہا کہ میں نے ابن زبیر کو نماز پڑھتے ہوئے دیکھا ہے کہ میں نے کبھی کسی کو نماز پڑھتے نہیں دیکھا۔ پھر میں نے اسے اپنے ہاتھوں سے اشارہ کرنے کے بارے میں بتایا (ہاتھ اٹھا کر)۔ آپ نے فرمایا: اگر تم رسول اللہ صلی اللہ علیہ وسلم کی اقتداء کی نماز دیکھنا پسند کرو جیسا کہ عبداللہ بن زبیر رضی اللہ عنہ نے پڑھی تھی۔",
      englishText:
          "Narrated Abdullah ibn Abbas:Maymun al-Makki said: that he saw Abdullah ibn az-Zubayr leading in prayer. He pointed with his hands (i.e. raised his hands opposite to the shoulders) when he stood up, when he bowed and when he prostrated, and when he got up after prostration, he pointed with his hands (i.e. raised his hands).The I went to Ibn Abbas and said (to him) I saw Ibn az-Zubayr praying that I never saw anyone praying. I then told him about the pointing with his hands (raising his hands). He said: If you like to see the prayer of the Messenger of Allah (ﷺ) follow the prayer as offered by Abdullah ibn az-Zubayr.",
      reference: " Sunan Abi Dawud 739"),

  PropheticWayOfPrayerModel(
      id: 41,
      arabicText:
          "حَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ، وَمُحَمَّدُ بْنُ أَبَانَ، - الْمَعْنَى - قَالاَ حَدَّثَنَا النَّضْرُ بْنُ كَثِيرٍ، - يَعْنِي السَّعْدِيَّ - قَالَ صَلَّى إِلَى جَنْبِي عَبْدُ اللَّهِ بْنُ طَاوُسٍ فِي مَسْجِدِ الْخَيْفِ فَكَانَ إِذَا سَجَدَ السَّجْدَةَ الأُولَى فَرَفَعَ رَأْسَهُ مِنْهَا رَفَعَ يَدَيْهِ تِلْقَاءَ وَجْهِهِ فَأَنْكَرْتُ ذَلِكَ فَقُلْتُ لِوُهَيْبِ بْنِ خَالِدٍ فَقَالَ لَهُ وُهَيْبُ بْنُ خَالِدٍ تَصْنَعُ شَيْئًا لَمْ أَرَ أَحَدًا يَصْنَعُهُ فَقَالَ ابْنُ طَاوُسٍ رَأَيْتُ أَبِي يَصْنَعُهُ وَقَالَ أَبِي رَأَيْتُ ابْنَ عَبَّاسٍ يَصْنَعُهُ وَلاَ أَعْلَمُ إِلاَّ أَنَّهُ قَالَ كَانَ النَّبِيُّ صلى الله عليه وسلم يَصْنَعُهُ ‏.‏",
      urduText:
          "عبداللہ بن عباس رضی اللہ عنہما کہتے ہیں:نضر بن کثیر السعدی کہتے ہیں کہ عبداللہ بن طاؤس نے مسجد خیف میں میرے پہلو میں نماز پڑھی۔ جب آپ صلی اللہ علیہ وسلم نے پہلا سجدہ کیا تو اس کے بعد اپنا سر اٹھایا اور اپنے دونوں ہاتھ اپنے چہرے کے مقابل اٹھائے۔ یہ میرے لیے کچھ عجیب سا آیا۔ چنانچہ میں نے وہیب بن خالد سے کہا۔پھر وہیب بن خالد نے اس سے کہا: تم وہ کام کر رہے ہو جو میں نے کسی کو کرتے نہیں دیکھا۔ ابن طاؤس نے جواب دیا: میں نے اپنے والد کو ایسا کرتے دیکھا ہے، اور میرے والد نے کہا: میں نے ابن عباس کو کرتے دیکھا ہے۔ میں نہیں جانتا لیکن انہوں نے کہا: رسول اللہ صلی اللہ علیہ وسلم ایسا کیا کرتے تھے۔",
      englishText:
          "Narrated Abdullah ibn Abbas:Nadr ibn Kathir as-Sa'di said: Abdullah ibn Tawus prayed at my side in the mosque of al-Khayf. When he made the first prostration, he raised his head after it and raised his hands opposite to his face. This came as something strange to me. I, therefore, said it to Wuhayb ibn Khalid.Then Wuhayb ibn Khalid said to him: You are doing a thing that I did not see anyone do. Ibn Tawus then replied: I saw my father doing it, and my father said: I saw Ibn Abbas doing it. I do not know but he said: The Prophet (ﷺ) used to do it.",
      reference: " Sunan Abi Dawud 740"),

//////////////////////////////////////////////////// Tarimzi  ///////////////////////////////////////////////////////////////

//////////////////////////////////////////////////// Nisai  ///////////////////////////////////////////////////////////////

//////////////////////////////////////////////////// Ibn Majah  ///////////////////////////////////////////////////////////////

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  //////////////////////////////////////////////////// // Rukku ka trika .    /////.//////////////////////////////////////////////////////////////////

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////// Muslim ///////////////////////////////////////////////////////////////

//////////////////////////////////////////////////// Bukhari  ///////////////////////////////////////////////////////////////

////////////////////////////////////////////////////  Ibn Majah  ///////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 34,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا يَزِيدُ بْنُ هَارُونَ، عَنْ حُسَيْنٍ الْمُعَلِّمِ، عَنْ بُدَيْلٍ، عَنْ أَبِي الْجَوْزَاءِ، عَنْ عَائِشَةَ، قَالَتْ كَانَ رَسُولُ اللَّهِ ـ صلى الله عليه وسلم ـ إِذَا رَكَعَ لَمْ يَشْخَصْ رَأْسَهُ وَلَمْ يُصَوِّبْهُ، وَلَكِنْ بَيْنَ ذَلِكَ ‏.‏",
      urduText:
          "حضرت عائشہ رضی اللہ عنہا سے مروی ہے کہ\"رسول اللہ صلی اللہ علیہ وسلم جب رکوع کرتے تو نہ اپنا سر اٹھاتے اور نہ نیچے کرتے، بلکہ اس کے درمیان کچھ کرتے۔\"",
      englishText:
          "It was narrated that ‘Aishah said:“When the Messenger of Allah (ﷺ) bowed, he neither raised his head nor lowered it, rather (he did something) between that.”",
      reference: "Sunan Ibn Majah 869"),
  PropheticWayOfPrayerModel(
      id: 35,
      arabicText:
          "حَدَّثَنَا عَلِيُّ بْنُ مُحَمَّدٍ، وَعَمْرُو بْنُ عَبْدِ اللَّهِ، قَالاَ حَدَّثَنَا وَكِيعٌ، عَنِ الأَعْمَشِ، عَنْ عُمَارَةَ، عَنْ أَبِي مَعْمَرٍ، عَنْ أَبِي مَسْعُودٍ، قَالَ قَالَ رَسُولُ اللَّهِ ـ صلى الله عليه وسلم ـ \" لاَ تُجْزِئُ صَلاَةٌ لاَ يُقِيمُ الرَّجُلُ فِيهَا صُلْبَهُ فِي الرُّكُوعِ وَالسُّجُودِ \"",
      urduText:
          "ابو مسعود رضی اللہ عنہ سے روایت ہے کہ:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: ”کوئی نماز قبول نہیں ہوتی جس میں آدمی رکوع اور سجدہ کرتے وقت اپنی ریڑھ کی ہڈی کو ٹھیک نہ کرتا ہو“۔",
      englishText:
          "It was narrated that Abu Mas’ud said:“The Messenger of Allah (ﷺ) said: ‘No prayer is acceptable in which a man does not settle his spine when bowing and when prostrating.’”",
      reference: "Sunan Ibn Majah 870"),

  PropheticWayOfPrayerModel(
      id: 36,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا مُلاَزِمُ بْنُ عَمْرٍو، عَنْ عَبْدِ اللَّهِ بْنِ بَدْرٍ، أَخْبَرَنِي عَبْدُ الرَّحْمَنِ بْنُ عَلِيِّ بْنِ شَيْبَانَ، عَنْ أَبِيهِ، ‏.‏ عَلِيِّ بْنِ شَيْبَانَ - وَكَانَ مِنَ الْوَفْدِ - قَالَ خَرَجْنَا حَتَّى قَدِمْنَا عَلَى رَسُولِ اللَّهِ ـ صلى الله عليه وسلم ـ فَبَايَعْنَاهُ وَصَلَّيْنَا خَلْفَهُ فَلَمَحَ بِمُؤْخِرِ عَيْنِهِ رَجُلاً لاَ يُقِيمُ صَلاَتَهُ - يَعْنِي صُلْبَهُ - فِي الرُّكُوعِ وَالسُّجُودِ فَلَمَّا قَضَى النَّبِيُّ ـ صلى الله عليه وسلم ـ الصَّلاَةَ قَالَ \" يَا مَعْشَرَ الْمُسْلِمِينَ لاَ صَلاَةَ لِمَنْ لاَ يُقِيمُ صُلْبَهُ فِي الرُّكُوعِ وَالسُّجُودِ \"",
      urduText:
          "حضرت علی بن شیبان رضی اللہ عنہ سے روایت ہے جو ایک وفد میں شامل تھے (رسول اللہ صلی اللہ علیہ وسلم نے) فرمایا:\"ہم روانہ ہوئے یہاں تک کہ ہم رسول اللہ صلی اللہ علیہ وسلم کے پاس پہنچے اور ہم نے آپ سے بیعت کی اور آپ کے پیچھے نماز پڑھی۔ اس نے اپنی آنکھ کے کونے سے ایک ایسے شخص کی طرف دیکھا جو رکوع اور سجدہ کرتے وقت اپنی ریڑھ کی ہڈی کو ٹھیک نہیں کر رہا تھا۔ جب رسول اللہ صلی اللہ علیہ وسلم نماز سے فارغ ہوئے تو آپ صلی اللہ علیہ وسلم نے فرمایا: ’’اے مسلمانو، اس شخص کی نماز نہیں ہے جو رکوع اور سجدہ میں اپنی ریڑھ کی ہڈی کو ٹھیک نہ کرے‘‘۔",
      englishText:
          "It was narrated that ‘Ali bin Shaiban who was part of a delegation (to the Prophet (ﷺ)) said:“We set out until we came to the Messenger of Allah (ﷺ), and we gave him our oath of allegiance and performed prayer behind him. He glanced out of the corner of his eye at a man who was not settling his spine when he bowed and prostrated. When the Prophet (ﷺ) finished the prayer, he said: ‘O Muslims, there is no prayer for the one who does not settle his spine when bowing and prostrating.’”",
      reference: "Sunan Ibn Majah 871"),

  PropheticWayOfPrayerModel(
      id: 31,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا أَبُو خَالِدٍ الأَحْمَرُ، عَنِ ابْنِ عَجْلاَنَ، عَنْ زَيْدِ بْنِ أَسْلَمَ، عَنْ أَبِي صَالِحٍ، عَنْ أَبِي هُرَيْرَةَ، قَالَ قَالَ رَسُولُ اللَّهِ ـ صلى الله عليه وسلم ـ \" إِنَّمَا جُعِلَ الإِمَامُ لِيُؤْتَمَّ بِهِ فَإِذَا كَبَّرَ فَكَبِّرُوا وَإِذَا قَرَأَ فَأَنْصِتُوا وَإِذَا قَالَ ‏{غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلاَ الضَّالِّينَ}‏ فَقُولُوا آمِينَ وَإِذَا رَكَعَ فَارْكَعُوا وَإِذَا قَالَ سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ . فَقُولُوا اللَّهُمَّ رَبَّنَا وَلَكَ الْحَمْدُ وَإِذَا سَجَدَ فَاسْجُدُوا وَإِذَا صَلَّى جَالِسًا فَصَلُّوا جُلُوسًا أَجْمَعِينَ \"",
      urduText:
          "ابوہریرہ رضی اللہ عنہ سے روایت ہے کہ:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: امام اس لیے مقرر کیا گیا ہے کہ اس کی اقتداء کی جائے، پس جب وہ اللہ اکبر کہے تو اللہ اکبر کہے، جب وہ تلاوت کرے تو غور سے سنو۔ جب وہ کہتا ہے: نہ ان لوگوں کا جن پر تیرا غضب ہوا اور نہ ہی گمراہوں کا، [1:7] تو آمین کہو۔ جب وہ جھکتا ہے تو جھک جاتا ہے۔ جب وہ سمیع اللہ لمن حمیدہ کہتا ہے (اللہ ان کی تعریف کرنے والوں کو سنتا ہے) تو کہو اللہم ربنا و لک الحمد (اے اللہ ہمارے رب، تیری ہی حمد ہے)۔ جب وہ سجدہ کرے تو سجدہ کرے۔ اور اگر وہ بیٹھ کر نماز پڑھے تو تم سب بیٹھ کر پڑھو۔‘‘",
      englishText:
          "It was narrated that Abu Hurairah said:“The Messenger of Allah (ﷺ) said: ‘The Imam has been appointed to be followed, so when he says Allahu Akbar, then say Allahu Akbar, when he recites, then listen attentively; when he says: Not (the way) of those who earned Your anger, nor of those who went astray,[1:7] then say Amin; when he bows then bow; when he says Sami’ Allahu liman hamidah (Allah hears those who praise Him), then say Allahumma Rabbana wa lakal-hamd (O Allah, our Lord, to You is the praise);” when he prostrates then prostrate; and if he prays sitting down then all of you pray sitting down.’”",
      reference: "Sunan Ibn Majah 846"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ عَبْدِ اللَّهِ بْنِ نُمَيْرٍ، حَدَّثَنَا مُحَمَّدُ بْنُ بِشْرٍ، حَدَّثَنَا إِسْمَاعِيلُ بْنُ أَبِي خَالِدٍ، عَنِ الزُّبَيْرِ بْنِ عَدِيٍّ، عَنْ مُصْعَبِ بْنِ سَعْدٍ، قَالَ رَكَعْتُ إِلَى جَنْبِ أَبِي فَطَبَّقْتُ فَضَرَبَ يَدِي وَقَالَ قَدْ كُنَّا نَفْعَلُ هَذَا، ثُمَّ أُمِرْنَا أَنْ نَرْفَعَ إِلَى الرُّكَبِ ‏.‏",
      urduText:
          "روایت ہے کہ مصعب بن سعد نے کہا:\"میں نے اپنے والد کے پاس (نماز میں) رکوع کیا، اور میں نے اپنے گھٹنوں کے درمیان اپنے ہاتھ رکھے۔ اس نے میرا ہاتھ مارا اور کہا: ہم ایسا کرتے تھے، پھر ہمیں حکم دیا گیا کہ انہیں گھٹنوں کے بل رکھ دیں۔",
      englishText:
          "It was narrated that Mus’ab bin Sa’d said:“I bowed (in prayer) beside my father, and I put my hands between my knees. He struck my hand and said: ‘We used to do that, then we were commanded to put them on the knees.’”",
      reference: "Sunan Ibn Majah 873"),

//////////////////////////////////////////////////// Abu daood  ///////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 45,
      arabicText:
          "حَدَّثَنَا عُثْمَانُ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا ابْنُ إِدْرِيسَ، عَنْ عَاصِمِ بْنِ كُلَيْبٍ، عَنْ عَبْدِ الرَّحْمَنِ بْنِ الأَسْوَدِ، عَنْ عَلْقَمَةَ، قَالَ قَالَ عَبْدُ اللَّهِ عَلَّمَنَا رَسُولُ اللَّهِ صلى الله عليه وسلم الصَّلاَةَ فَكَبَّرَ وَرَفَعَ يَدَيْهِ فَلَمَّا رَكَعَ طَبَّقَ يَدَيْهِ بَيْنَ رُكْبَتَيْهِ قَالَ فَبَلَغَ ذَلِكَ سَعْدًا فَقَالَ صَدَقَ أَخِي قَدْ كُنَّا نَفْعَلُ هَذَا ثُمَّ أُمِرْنَا بِهَذَا يَعْنِي الإِمْسَاكَ عَلَى الرُّكْبَتَيْنِ ‏.‏",
      urduText:
          "عبداللہ بن مسعود رضی اللہ عنہ روایت کرتے ہیں:رسول اللہ صلی اللہ علیہ وسلم نے ہمیں نماز پڑھنے کا طریقہ سکھایا۔ پھر تکبیر کہی (اللہ سب سے بڑا ہے) اور ہاتھ اٹھائے۔ جب اس نے رکوع کیا تو اس نے اپنے ہاتھ جوڑے اور انہیں اپنے گھٹنوں کے درمیان رکھا۔ جب یہ خبر سعد تک پہنچی تو انہوں نے کہا: میرے بھائی نے سچ کہا۔ ہم ایسا کرتے تھے؛ پھر ہمیں بعد میں حکم دیا گیا کہ ہم ایسا کریں، یعنی ہاتھ گھٹنوں پر رکھیں۔",
      englishText:
          "Narrated Abdullah ibn Mas'ud:The Messenger of Allah (ﷺ) taught us how to pray. He then uttered the takbir (Allah is most great) and raised his hands; when he bowed, he joined his hands and placed them between his knees. When this (report) reached Sa'd, he said: My brother said truly. We used to do this; then we were later on commanded to do this, that is, to place the hands on the knees.",
      reference: " Sunan Abi Dawud 747 , Sunan Abi Dawud 867"),

//////////////////////////////////////////////////// Tarimzi  ///////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 32,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ رَافِعٍ، حَدَّثَنَا عَبْدُ الرَّزَّاقِ، أَخْبَرَنَا ابْنُ جُرَيْجٍ، أَخْبَرَنِي ابْنُ شِهَابٍ، عَنْ أَبِي بَكْرِ بْنِ عَبْدِ الرَّحْمَنِ، أَنَّهُ سَمِعَ أَبَا هُرَيْرَةَ، يَقُولُ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ إِلَى الصَّلاَةِ يُكَبِّرُ حِينَ يَقُومُ ثُمَّ يُكَبِّرُ حِينَ يَرْكَعُ ثُمَّ يَقُولُ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" حِينَ يَرْفَعُ صُلْبَهُ مِنَ الرُّكُوعِ ثُمَّ يَقُولُ وَهُوَ قَائِمٌ \" رَبَّنَا وَلَكَ الْحَمْدُ \" ثُمَّ يُكَبِّرُ حِينَ يَهْوِي سَاجِدًا ثُمَّ يُكَبِّرُ حِينَ يَرْفَعُ رَأْسَهُ ثُمَّ يُكَبِّرُ حِينَ يَسْجُدُ ثُمَّ يُكَبِّرُ حِينَ يَرْفَعُ رَأْسَهُ ثُمَّ يَفْعَلُ مِثْلَ ذَلِكَ فِي الصَّلاَةِ كُلِّهَا حَتَّى يَقْضِيَهَا وَيُكَبِّرُ حِينَ يَقُومُ مِنَ الْمَثْنَى بَعْدَ الْجُلُوسِ ثُمَّ يَقُولُ أَبُو هُرَيْرَةَ إِنِّي لأَشْبَهُكُمْ صَلاَةً بِرَسُولِ اللَّهِ صلى الله عليه وسلم",
      urduText:
          "ابوہریرہ نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم جب نماز کے لیے اٹھتے تو کھڑے ہوتے تو اللہ اکبر کہتے، پھر رکوع کرتے وقت تکبیر کہتے۔ پھر کہو: \"اللہ نے اس کی سن لی جس نے اس کی تعریف کی\" جب رکوع کے بعد کھڑے ہو جاؤ، پھر کھڑے ہو کر کہو: \"اے ہمارے رب، تیری حمد ہے\"، پھر سجدے کے لیے اترتے وقت تکبیر کہے۔ سر اٹھانے پر تکبیر کہے، پھر سجدہ کرتے وقت تکبیر کہے، پھر سر اٹھانے پر تکبیر کہے۔ وہ پوری نماز میں اس طرح کرتے یہاں تک کہ اسے مکمل کر لیتے، اور جب بیٹھنے کی حالت اختیار کر کے دو رکعت کے آخر میں اٹھتے تو تکبیر کہتے۔ ابوہریرہ رضی اللہ عنہ نے کہا: میری نماز تم میں رسول اللہ صلی اللہ علیہ وسلم کی نماز کے ساتھ بہترین مشابہت رکھتی ہے۔",
      englishText:
          "Abu Huraira reported:When the Messenger of Allah (ﷺ) got up for prayer, he would say the takbir (Allah-o-Akbar) when standing, then say the takbir when bowing. then say:\" Allah listened to him who praised him,\" when coming to the erect position after bowing, then say while standing:\" To Thee, our Lord, be the praise\", then recite the takbir when getting down for prostration, then say the takbir on raising his head, then say the takbir on prostrating himself, then say the takbir on raising his head. He would do that throughout the whole prayer till he would complete it, and he would say the takbir when he would get up at the end of two rak'as after adopting the sitting posture. Abu Huraira said: My prayer has the best resemblance amongst you with the prayer of the Messenger of Allah",
      reference: "Sahih Muslim 392 - B"),

  PropheticWayOfPrayerModel(
      id: 33,
      arabicText:
          "حَدَّثَنَا الْقَعْنَبِيُّ، عَنْ مَالِكٍ، عَنْ نُعَيْمِ بْنِ عَبْدِ اللَّهِ الْمُجْمِرِ، عَنْ عَلِيِّ بْنِ يَحْيَى الزُّرَقِيِّ، عَنْ أَبِيهِ، عَنْ رِفَاعَةَ بْنِ رَافِعٍ الزُّرَقِيِّ، قَالَ كُنَّا يَوْمًا نُصَلِّي وَرَاءَ رَسُولِ اللَّهِ صلى الله عليه وسلم فَلَمَّا رَفَعَ رَسُولُ اللَّهِ صلى الله عليه وسلم رَأْسَهُ مِنَ الرُّكُوعِ قَالَ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" قَالَ رَجُلٌ وَرَاءَ رَسُولِ اللَّهِ صلى الله عليه وسلم اللَّهُمَّ رَبَّنَا وَلَكَ الْحَمْدُ حَمْدًا كَثِيرًا طَيِّبًا مُبَارَكًا فِيهِ فَلَمَّا انْصَرَفَ رَسُولُ اللَّهِ صلى الله عليه وسلم قَالَ \" مَنِ الْمُتَكَلِّمُ بِهَا آنِفًا \" فَقَالَ الرَّجُلُ أَنَا يَا رَسُولَ اللَّهِ ‏.‏ فَقَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" لَقَدْ رَأَيْتُ بِضْعَةً وَثَلاَثِينَ مَلَكًا يَبْتَدِرُونَهَا أَيُّهُمْ يَكْتُبُهَا أَوَّلَ \"",
      urduText:
          "رفاعہ ب۔ رفیع نے کہا:ایک دن ہم رسول اللہ صلی اللہ علیہ وسلم کے پیچھے نماز پڑھ رہے تھے۔ جب رسول اللہ صلی اللہ علیہ وسلم نے رکوع کے بعد اپنا سر اٹھایا تو فرمایا: اللہ نے اس کی سن لی جس نے اس کی تعریف کی۔ رسول اللہ صلی اللہ علیہ وسلم کے پیچھے ایک آدمی نے عرض کیا: اے اللہ، ہمارے رب، اور تیری حمد، بہت تعریف، خوب اور برکت ہو۔ جب رسول اللہ صلی اللہ علیہ وسلم نماز سے فارغ ہوئے تو آپ صلی اللہ علیہ وسلم نے پوچھا: تم میں سے کون ہے جس نے ابھی کلمات کہے؟ اس آدمی نے کہا: میں نے یہ الفاظ کہے یا رسول اللہ! رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: میں نے تیس سے زیادہ فرشتوں کو ایک دوسرے کے خلاف دوڑتے ہوئے دیکھا کہ وہ سب سے پہلے انہیں لکھیں۔",
      englishText:
          "Rifa’ah b. Rafi’ said:One day we were praying behind the Messenger of Allah (ﷺ). When the Messenger of Allah (ﷺ) raised his head after bowing, he said: Allah listened to him who praised Him. A man behind the Messenger of Allah(ﷺ) said: O Allah, Our Lord, and to Thee be praise, much praise, good and blessed. When the Messenger of Allah (ﷺ) finished his prayer, he asked: Which of you if the one who spoke (the words) just now? The man said: I (uttered) these words, Prophet of Allah. The Messenger of Allah(ﷺ) said: I saw more than thirty angels racing against one another to be the one to write them first.",
      reference: " Sunan Abi Dawud 770"),

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  /////////////////////////////////////////////////// Ruku se uthneyy waqt raffa yadin or dua .  /////////////////////////////////////////////////////////////////

  /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////// Muslim ///////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنِي مُحَمَّدُ بْنُ رَافِعٍ، حَدَّثَنَا عَبْدُ الرَّزَّاقِ، أَخْبَرَنَا ابْنُ جُرَيْجٍ، حَدَّثَنِي ابْنُ شِهَابٍ، عَنْ سَالِمِ بْنِ عَبْدِ اللَّهِ، أَنَّ ابْنَ عُمَرَ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ لِلصَّلاَةِ رَفَعَ يَدَيْهِ حَتَّى تَكُونَا حَذْوَ مَنْكِبَيْهِ ثُمَّ كَبَّرَ فَإِذَا أَرَادَ أَنْ يَرْكَعَ فَعَلَ مِثْلَ ذَلِكَ وَإِذَا رَفَعَ مِنَ الرُّكُوعِ فَعَلَ مِثْلَ ذَلِكَ وَلاَ يَفْعَلُهُ حِينَ يَرْفَعُ رَأْسَهُ مِنَ السُّجُودِ ‏.‏",
      urduText:
          "ابن عمر رضی اللہ عنہما کہتے ہیں کہ رسول اللہ صلی اللہ علیہ وسلم جب نماز کے لیے کھڑے ہوتے تو اپنے دونوں ہاتھ کندھوں پر اٹھاتے، پھر تکبیر کہتے، اور جب رکوع کرنے لگتے تو پھر اسی طرح کرتے۔ اور جب رکوع سے اٹھے تو پھر اسے پسند کیا لیکن سجدے سے سر اٹھاتے وقت ایسا نہیں کیا۔",
      englishText:
          "Ibn Umar reported that the Messenger of Allah (ﷺ), when he stood up for prayer, used to raise his hands apposite the shoulders and then recited takbir (Allah-o-Akbar), and when he was about to bow he again did like it and when he raised himself from the ruku' (bowing posture) he again did like it, but he did not do it at the time of raising his head from prostration.",
      reference: "Sahih Muslim 390 - (A , B , C)"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا يَحْيَى بْنُ يَحْيَى، أَخْبَرَنَا خَالِدُ بْنُ عَبْدِ اللَّهِ، عَنْ خَالِدٍ، عَنْ أَبِي قِلاَبَةَ، أَنَّهُ رَأَى مَالِكَ بْنَ الْحُوَيْرِثِ إِذَا صَلَّى كَبَّرَ ثُمَّ رَفَعَ يَدَيْهِ وَإِذَا أَرَادَ أَنْ يَرْكَعَ رَفَعَ يَدَيْهِ وَإِذَا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ رَفَعَ يَدَيْهِ وَحَدَّثَ أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم كَانَ يَفْعَلُ هَكَذَا ‏.‏",
      urduText:
          "ابو قلابہ نے بیان کیا کہ میں نے مالک بن کو دیکھا۔ حویرث رضی اللہ عنہ نے نماز کے شروع میں اپنے ہاتھ اٹھائے اور گھٹنے ٹیکنے سے پہلے ہاتھ اٹھائے اور رکوع کی حالت سے سر اٹھانے کے بعد ہاتھ اٹھائے، انہوں نے بیان کیا کہ رسول اللہ صلی اللہ علیہ وسلم ایسا ہی کیا کرتے تھے۔",
      englishText:
          "Abu Qilaba reported that he saw Malik b. Huwairith raised his hands at the beginning of prayer and his hands before kneeling down and raising his hands after lifting his head from the state of kneeling, and he narrated that the Messenger of Allah (ﷺ) used to do like this.",
      reference: "Sahih Muslim 391 - A"),

  PropheticWayOfPrayerModel(
      id: 38,
      arabicText:
          "حَدَّثَنِي أَبُو كَامِلٍ الْجَحْدَرِيُّ، حَدَّثَنَا أَبُو عَوَانَةَ، عَنْ قَتَادَةَ، عَنْ نَصْرِ بْنِ عَاصِمٍ، عَنْ مَالِكِ بْنِ الْحُوَيْرِثِ، أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم كَانَ إِذَا كَبَّرَ رَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا أُذُنَيْهِ وَإِذَا رَكَعَ رَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا أُذُنَيْهِ وَإِذَا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ فَقَالَ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" فَعَلَ مِثْلَ ذَلِكَ ‏.‏",
      urduText:
          "ملک ب۔ Huwairith نے رپورٹ کیا:رسول اللہ صلی اللہ علیہ وسلم تکبیر کہتے وقت (یعنی نماز شروع کرتے وقت) اپنے ہاتھ کانوں کی طرف اٹھاتے تھے اور پھر رکوع کے وقت اور سر اٹھاتے وقت دوبارہ کانوں کی طرف ہاتھ اٹھاتے تھے۔ رکوع کے بعد فرمایا: اللہ تعالیٰ نے اس کی سن لی جس نے اس کی تعریف کی اور اسے پسند کیا (کانوں تک ہاتھ اٹھائے)۔",
      englishText:
          "Malik b. Huwairith reported:The Messenger of Allah (ﷺ) raised his hands apposite his ears at the time of reciting the takbir (i. e. at the time of beginning the prayer) and then again raised his hands opposite the ears at the time of bowing and when he lifted his head after bowing he said: Allah listened to him who praised Him, and did like it (raised his hands up to the ears).",
      reference: "Sahih Muslim 391 - B / C"),

  PropheticWayOfPrayerModel(
      id: 39,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ رَافِعٍ، حَدَّثَنَا عَبْدُ الرَّزَّاقِ، أَخْبَرَنَا ابْنُ جُرَيْجٍ، أَخْبَرَنِي ابْنُ شِهَابٍ، عَنْ أَبِي بَكْرِ بْنِ عَبْدِ الرَّحْمَنِ، أَنَّهُ سَمِعَ أَبَا هُرَيْرَةَ، يَقُولُ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ إِلَى الصَّلاَةِ يُكَبِّرُ حِينَ يَقُومُ ثُمَّ يُكَبِّرُ حِينَ يَرْكَعُ ثُمَّ يَقُولُ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" حِينَ يَرْفَعُ صُلْبَهُ مِنَ الرُّكُوعِ ثُمَّ يَقُولُ وَهُوَ قَائِمٌ \" رَبَّنَا وَلَكَ الْحَمْدُ \" ثُمَّ يُكَبِّرُ حِينَ يَهْوِي سَاجِدًا ثُمَّ يُكَبِّرُ حِينَ يَرْفَعُ رَأْسَهُ ثُمَّ يُكَبِّرُ حِينَ يَسْجُدُ ثُمَّ يُكَبِّرُ حِينَ يَرْفَعُ رَأْسَهُ ثُمَّ يَفْعَلُ مِثْلَ ذَلِكَ فِي الصَّلاَةِ كُلِّهَا حَتَّى يَقْضِيَهَا وَيُكَبِّرُ حِينَ يَقُومُ مِنَ الْمَثْنَى بَعْدَ الْجُلُوسِ ثُمَّ يَقُولُ أَبُو هُرَيْرَةَ إِنِّي لأَشْبَهُكُمْ صَلاَةً بِرَسُولِ اللَّهِ صلى الله عليه وسلم ‏.‏",
      urduText:
          "ابوہریرہ نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم جب نماز کے لیے اٹھتے تو کھڑے ہوتے وقت اللہ اکبر کہتے، پھر رکوع کرتے وقت تکبیر کہتے۔ پھر کہو: \"اللہ نے اس کی سن لی جس نے اس کی تعریف کی\" جب رکوع کے بعد کھڑے ہو جاؤ، پھر کھڑے ہو کر کہو: \"اے ہمارے رب، تیری حمد ہے\"، پھر سجدے کے لیے اترتے وقت تکبیر کہے۔ سر اٹھانے پر تکبیر کہے، پھر سجدہ کرتے وقت تکبیر کہے، پھر سر اٹھانے پر تکبیر کہے۔ وہ پوری نماز میں اس طرح کرتے یہاں تک کہ اسے مکمل کر لیتے، اور جب بیٹھنے کی حالت اختیار کر کے دو رکعت کے آخر میں اٹھتے تو تکبیر کہتے۔ ابوہریرہ رضی اللہ عنہ نے کہا: میری نماز تم میں رسول اللہ صلی اللہ علیہ وسلم کی نماز کے ساتھ بہترین مشابہت رکھتی ہے۔",
      englishText:
          "Abu Huraira reported:When the Messenger of Allah (ﷺ) got up for prayer, he would say the takbir (Allah-o-Akbar) when standing, then say the takbir when bowing. then say:\" Allah listened to him who praised him,\" when coming to the erect position after bowing, then say while standing:\" To Thee, our Lord, be the praise\", then recite the takbir when getting down for prostration, then say the takbir on raising his head, then say the takbir on prostrating himself, then say the takbir on raising his head. He would do that throughout the whole prayer till he would complete it, and he would say the takbir when he would get up at the end of two rak'as after adopting the sitting posture. Abu Huraira said: My prayer has the best resemblance amongst you with the prayer of the Messenger of Allah (ﷺ).",
      reference: "Sahih Muslim 392 - B"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا زُهَيْرُ بْنُ حَرْبٍ، حَدَّثَنَا عَفَّانُ، حَدَّثَنَا هَمَّامٌ، حَدَّثَنَا مُحَمَّدُ بْنُ جُحَادَةَ، حَدَّثَنِي عَبْدُ الْجَبَّارِ بْنُ وَائِلٍ، عَنْ عَلْقَمَةَ بْنِ وَائِلٍ، وَمَوْلًى، لَهُمْ أَنَّهُمَا حَدَّثَاهُ عَنْ أَبِيهِ، وَائِلِ بْنِ حُجْرٍ، أَنَّهُ رَأَى النَّبِيَّ صلى الله عليه وسلم رَفَعَ يَدَيْهِ حِينَ دَخَلَ فِي الصَّلاَةِ كَبَّرَ - وَصَفَ هَمَّامٌ حِيَالَ أُذُنَيْهِ - ثُمَّ الْتَحَفَ بِثَوْبِهِ ثُمَّ وَضَعَ يَدَهُ الْيُمْنَى عَلَى الْيُسْرَى فَلَمَّا أَرَادَ أَنْ يَرْكَعَ أَخْرَجَ يَدَيْهِ مِنَ الثَّوْبِ ثُمَّ رَفَعَهُمَا ثُمَّ كَبَّرَ فَرَكَعَ فَلَمَّا قَالَ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" رَفَعَ يَدَيْهِ فَلَمَّا سَجَدَ سَجَدَ بَيْنَ كَفَّيْهِ ‏.‏",
      urduText:
          "وائل ب۔ حجر نے بیان کیا:اس نے رسول اللہ صلی اللہ علیہ وسلم کو دیکھا کہ نماز شروع کرتے وقت ہاتھ اٹھاتے اور تکبیر کہتے اور حمام (راوی) کے مطابق ہاتھ کانوں کے مقابل اٹھاتے۔ اس کے بعد آپ صلی اللہ علیہ وسلم نے اپنے دونوں ہاتھ اپنے کپڑے میں لپیٹ لیے اور اپنا دایاں ہاتھ بائیں ہاتھ پر رکھا۔ اور جب رکوع کرنے لگے تو اپنے ہاتھ کپڑے سے نکالے، پھر انہیں اٹھائے، پھر تکبیر کہی اور رکوع کیا، پھر جب (وہ کھڑا ہوا) تو یہ پڑھا: اللہ نے اس کی سن لی۔ جس نے اس کی تعریف کی۔\" اور جب سجدہ کیا تو اپنی دونوں ہتھیلیوں کے درمیان سجدہ کیا۔",
      englishText:
          "Wa'il b. Hujr reported:He saw the Messenger of Allah (ﷺ) raising his hands at the time of beginning the prayer and reciting takbir, and according to Hammam (the narrator), the hands were lifted opposite to the ears. He (the Holy Prophet) then wrapped his hands in his cloth and placed his right hand over his left hand. And when he was about to bow down, he brought out his hands from the cloth, and then lifted them, and then recited takbir and bowed down, and when (he came back to the erect position) he recited:\" Allah listened to him who praised Him.\" And when he prostrated, he prostrated between his two palms.",
      reference: "Sahih Muslim 401"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "وَحَدَّثَنَا عُبَيْدُ اللَّهِ بْنُ مُعَاذٍ الْعَنْبَرِيُّ، حَدَّثَنَا أَبِي، حَدَّثَنَا شُعْبَةُ، عَنِ الْحَكَمِ، قَالَ غَلَبَ عَلَى الْكُوفَةِ رَجُلٌ - قَدْ سَمَّاهُ - زَمَنَ ابْنِ الأَشْعَثِ فَأَمَرَ أَبَا عُبَيْدَةَ بْنَ عَبْدِ اللَّهِ أَنْ يُصَلِّيَ بِالنَّاسِ فَكَانَ يُصَلِّي فَإِذَا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ قَامَ قَدْرَ مَا أَقُولُ اللَّهُمَّ رَبَّنَا لَكَ الْحَمْدُ مِلْءَ السَّمَوَاتِ وَمِلْءَ الأَرْضِ وَمِلْءَ مَا شِئْتَ مِنْ شَىْءٍ بَعْدُ أَهْلَ الثَّنَاءِ وَالْمَجْدِ لاَ مَانِعَ لِمَا أَعْطَيْتَ وَلاَ مُعْطِيَ لِمَا مَنَعْتَ وَلاَ يَنْفَعُ ذَا الْجَدِّ مِنْكَ الْجَدُّ ‏.‏ قَالَ الْحَكَمُ فَذَكَرْتُ ذَلِكَ لِعَبْدِ الرَّحْمَنِ بْنِ أَبِي لَيْلَى فَقَالَ سَمِعْتُ الْبَرَاءَ بْنَ عَازِبٍ يَقُولُ كَانَتْ صَلاَةُ رَسُولِ اللَّهِ صلى الله عليه وسلم وَرُكُوعُهُ وَإِذَا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ وَسُجُودُهُ وَمَا بَيْنَ السَّجْدَتَيْنِ قَرِيبًا مِنَ السَّوَاءِ ‏.‏ قَالَ شُعْبَةُ فَذَكَرْتُهُ لِعَمْرِو بْنِ مُرَّةَ فَقَالَ قَدْ رَأَيْتُ ابْنَ أَبِي لَيْلَى فَلَمْ تَكُنْ صَلاَتُهُ هَكَذَا ‏.‏",
      urduText:
          "حاکم نے رپورٹ کیا:کوفہ میں ایک شخص کا غلبہ تھا جس کا نام زمان بن تھا۔ اشعث، جس نے ابو عبیدہ کو حکم دیا۔ عبداللہ لوگوں کو نماز پڑھاتے تھے اور اسی کے مطابق ان کی امامت کرتے تھے۔ جب بھی رکوع کے بعد سر اٹھاتے تو اتنے وقت کے برابر کھڑے ہوتے کہ میں (یہ دعا) پڑھ سکتا ہوں: اے اللہ! ہمارے رب! تیری ہی حمد ہے جو آسمانوں اور زمین کو بھر دے اور جو تجھے پسند آئے ان کے علاوہ میں تو تعریف اور بزرگی کا مستحق ہوں۔ جو کچھ تو دے اسے کوئی نہیں روک سکتا اور جسے تو روکے اسے کوئی نہیں دے سکتا۔ اور عظیم کی عظمت تیرے مقابلے میں اس کے کچھ کام نہ آئے گی۔ حاکم (راوی) نے کہا: میں نے عبدالرحمٰن بن ابی لیلیٰ سے اس کا ذکر کیا، انہوں نے بیان کیا: میں نے براء بن عازب رضی اللہ عنہ سے سنا۔ عازب کہتے ہیں کہ رسول اللہ صلی اللہ علیہ وسلم کی نماز اور آپ کا رکوع، اور جب آپ صلی اللہ علیہ وسلم نے رکوع سے سر اٹھایا، اور آپ کا سجدہ، اور دونوں سجدوں کے درمیان (یہ سب اعمال) تقریباً برابر تھے۔ میں نے اس کا تذکرہ ار بی سے کیا۔ مرہ اور انہوں نے کہا: میں نے ابن ابی لیلی کو (نماز پڑھتے ہوئے) دیکھا، لیکن ان کی نماز ایسی نہیں تھی۔",
      englishText:
          "Hakam reported:There dominated in Kufa a man whose name was men- tioned as Zaman b. al-Ash'ath, who ordered Abu 'Ubaidah b. 'Abdullah to lead people in prayer and he accordingly used to lead them. Whenever he raised his head after bowing, he stood up equal to the time that I can recite (this supplication): O Allah! our Lord! unto Thee be the praise which would fill the heavens and the earth, and that which will please Thee besides them I Worthy art Thou of all praise and glory. None can prevent that which Thou bestowest, and none can bestow that whichthou preventest. And the greatness of the great will not avail him against Thee. Hakam (the narrator) said: I made a mention of that to Abd al-Rahman ibn Abi Laila who reported: I heard al-Bara' b. 'Azib say that the prayer of the Messenger of Allah (ﷺ) and his bowing, and when he lifted his head from bowing, and his prostration, and between the two prostrations (all these acts) were nearly proportionate. I made a mention of that to 'Ar b. Murrah and he said: I saw Ibn Abi Laili (saying the prayer), but his prayer was not like this.",
      reference: "Sahih Muslim 471 - B"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "وَحَدَّثَنِي أَبُو بَكْرِ بْنُ نَافِعٍ الْعَبْدِيُّ، حَدَّثَنَا بَهْزٌ، حَدَّثَنَا حَمَّادٌ، أَخْبَرَنَا ثَابِتٌ، عَنْ أَنَسٍ، قَالَ مَا صَلَّيْتُ خَلْفَ أَحَدٍ أَوْجَزَ صَلاَةً مِنْ صَلاَةِ رَسُولِ اللَّهِ صلى الله عليه وسلم فِي تَمَامٍ كَانَتْ صَلاَةُ رَسُولِ اللَّهِ صلى الله عليه وسلم مُتَقَارِبَةً وَكَانَتْ صَلاَةُ أَبِي بَكْرٍ مُتَقَارِبَةً فَلَمَّا كَانَ عُمَرُ بْنُ الْخَطَّابِ مَدَّ فِي صَلاَةِ الْفَجْرِ وَكَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَالَ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" قَامَ حَتَّى نَقُولَ قَدْ أَوْهَمَ ‏.‏ ثُمَّ يَسْجُدُ وَيَقْعُدُ بَيْنَ السَّجْدَتَيْنِ حَتَّى نَقُولَ قَدْ أَوْهَمَ ‏.‏",
      urduText:
          "ثابت نے اسے انس رضی اللہ عنہ سے روایت کیا ہے:میں نے اتنی ہلکی اور کامل نماز کبھی نہیں پڑھی جتنی میں نے رسول اللہ صلی اللہ علیہ وسلم کے پیچھے پڑھی تھی۔ رسول کی دعا۔ اللہ تعالیٰ (ﷺ) کی خوبی متوازن تھی۔ اور اسی طرح ابوبکر کی نماز بھی متوازن تھی۔ جب عمر رضی اللہ عنہ کا زمانہ تھا۔ الخطاب نے صبح کی نماز کو طول دیا۔ جب رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: اللہ نے اس کی بات سنی جس نے اس کی تعریف کی، وہ کھڑا ہو گیا یہاں تک کہ ہم نے کہا: وہ بھول گیا ہے۔ پھر سجدہ کیا اور دو سجدوں کے درمیان بیٹھ گئے یہاں تک کہ ہم نے کہا: وہ بھول گیا ہے۔",
      englishText:
          "Thabit reported it on the authority of Anas:I have never said such a light and perfect prayer as I said behind the Messenger of Allah (ﷺ). The prayer of the Messenger. of Allah (ﷺ) was well balanced. And so too was the prayer of Abu Bakr well balanced. When it was the time of 'Umar b. al-Khattab he prolonged the morning prayer. When the Messenger of Allah (ﷺ) said: Allah listened to him who praised Him, he stood erect till we said: He has forgotten. He then prostrated and sat between two prostration till we said: He has forgotten.",
      reference: "Sahih Muslim 473"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "وَحَدَّثَنِي أَبُو بَكْرِ بْنُ خَلاَّدٍ الْبَاهِلِيُّ، حَدَّثَنَا يَحْيَى، - يَعْنِي ابْنَ سَعِيدٍ - حَدَّثَنَا سُفْيَانُ، حَدَّثَنِي أَبُو إِسْحَاقَ، حَدَّثَنِي عَبْدُ اللَّهِ بْنُ يَزِيدَ، حَدَّثَنِي الْبَرَاءُ، - وَهُوَ غَيْرُ كَذُوبٍ - قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَالَ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" لَمْ يَحْنِ أَحَدٌ مِنَّا ظَهْرَهُ حَتَّى يَقَعَ رَسُولُ اللَّهِ صلى الله عليه وسلم سَاجِدًا ثُمَّ نَقَعُ سُجُودًا بَعْدَهُ ‏.‏",
      urduText:
          "البراء نے روایت کی، اور وہ جھوٹا نہیں تھا:جب رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: اللہ نے اس کی سن لی جس نے اس کی حمد کی، ہم میں سے کوئی بھی اس وقت تک اپنی پیٹھ نہیں جھکاتا جب تک کہ آپ (صلی اللہ علیہ وسلم) سجدہ نہ کریں۔ اس کے بعد ہم سجدے میں گر گئے۔",
      englishText:
          "Al-Bara' reported, and he was no liar:When the Messenger of Allah (ﷺ) said: Allah listened to him who praised Him, none of us bent his back till he (the Holy Prophet) prostrated; we then, afterwards, went down in prostration.",
      reference: "Sahih Muslim 474 - B"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ عَبْدِ الرَّحْمَنِ بْنِ سَهْمٍ الأَنْطَاكِيُّ، حَدَّثَنَا إِبْرَاهِيمُ بْنُ مُحَمَّدٍ أَبُو إِسْحَاقَ الْفَزَارِيُّ، عَنْ أَبِي إِسْحَاقَ الشَّيْبَانِيِّ، عَنْ مُحَارِبِ بْنِ دِثَارٍ، قَالَ سَمِعْتُ عَبْدَ اللَّهِ بْنَ يَزِيدَ، يَقُولُ عَلَى الْمِنْبَرِ حَدَّثَنَا الْبَرَاءُ، أَنَّهُمْ كَانُوا يُصَلُّونَ مَعَ رَسُولِ اللَّهِ صلى الله عليه وسلم فَإِذَا رَكَعَ رَكَعُوا وَإِذَا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ فَقَالَ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" لَمْ نَزَلْ قِيَامًا حَتَّى نَرَاهُ قَدْ وَضَعَ وَجْهَهُ فِي الأَرْضِ ثُمَّ نَتَّبِعُهُ ",
      urduText:
          "البراء نے رپورٹ کیا:صحابہ کرام نے رسول اللہ صلی اللہ علیہ وسلم کے ساتھ نماز پڑھی اور جب آپ صلی اللہ علیہ وسلم رکوع کرتے تو وہ رکوع کرتے۔ اور جب آپ نے رکوع کے بعد اپنا سر اٹھایا تو آپ نے فرمایا: \"اللہ نے اس کی بات سن لی جس نے اس کی تعریف کی\" اور ہم کھڑے رہے یہاں تک کہ ہم نے اسے اپنا چہرہ زمین پر رکھتے ہوئے دیکھا پھر ہم اس کے پیچھے ہو گئے۔",
      englishText:
          "Al-Bara' reported:They (the Companions) said prayer with the Messenger of Allah (ﷺ), and they bowed when he (the Holy Prophet) bowed. and when he raised his head after bowing, he pronounced:\" Allah listened to him who praised Him,\" and we kept standing till we saw him placing his face on the ground and then we followed him.",
      reference: "Sahih Muslim 474 - C"),

  PropheticWayOfPrayerModel(
      id: 37,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا أَبُو مُعَاوِيَةَ، وَوَكِيعٌ، عَنِ الأَعْمَشِ، عَنْ عُبَيْدِ بْنِ الْحَسَنِ، عَنِ ابْنِ أَبِي أَوْفَى، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا رَفَعَ ظَهْرَهُ مِنَ الرُّكُوعِ قَالَ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ اللَّهُمَّ رَبَّنَا لَكَ الْحَمْدُ مِلْءَ السَّمَوَاتِ وَمِلْءَ الأَرْضِ وَمِلْءَ مَا شِئْتَ مِنْ شَىْءٍ بَعْدُ \"",
      urduText:
          "(عبداللہ بن ابی اوفی) نے بیان کیا:جب رسول اللہ صلی اللہ علیہ وسلم نے رکوع سے پیٹھ اٹھائی تو آپ نے فرمایا: اللہ نے اس کی سن لی جس نے اس کی تعریف کی۔ اے اللہ! ہمارے رب! تیرے لیے حمد ہے جو آسمانوں اور زمین کو بھر دے گا اور ان کے علاوہ جو کچھ تجھے پسند ہے بھر دے گا۔",
      englishText:
          "('Abdullah b ) Ibn Abi Aufa reported:When the Messenger of Allah (ﷺ) raised his back from the rukd' he pronounced: Allah listened to him who praised Him. O Allah! our Lord! unto Thee be praise that would fill the heavens and the earth and fill that which will please Thee besides them.",
      reference: "Sahih Muslim 476 - A"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنِي مُحَمَّدُ بْنُ الْمُثَنَّى، وَابْنُ، بَشَّارٍ قَالَ ابْنُ الْمُثَنَّى حَدَّثَنَا مُحَمَّدُ بْنُ جَعْفَرٍ، حَدَّثَنَا شُعْبَةُ، عَنْ مَجْزَأَةَ بْنِ زَاهِرٍ، قَالَ سَمِعْتُ عَبْدَ اللَّهِ بْنَ أَبِي أَوْفَى، يُحَدِّثُ عَنِ النَّبِيِّ صلى الله عليه وسلم أَنَّهُ كَانَ يَقُولُ \" اللَّهُمَّ لَكَ الْحَمْدُ مِلْءَ السَّمَاءِ وَمِلْءَ الأَرْضِ وَمِلْءَ مَا شِئْتَ مِنْ شَىْءٍ بَعْدُ اللَّهُمَّ طَهِّرْنِي بِالثَّلْجِ وَالْبَرَدِ وَالْمَاءِ الْبَارِدِ اللَّهُمَّ طَهِّرْنِي مِنَ الذُّنُوبِ وَالْخَطَايَا كَمَا يُنَقَّى الثَّوْبُ الأَبْيَضُ مِنَ الْوَسَخِ \"",
      urduText:
          "عبداللہ بی۔ ابو اوفی رضی اللہ عنہ بیان کرتے ہیں کہ رسول اللہ صلی اللہ علیہ وسلم (یہ دعا) پڑھا کرتے تھے:اے اللہ! اے ہمارے رب تیرے لیے حمد ہے جو آسمانوں اور زمین کو بھر دے گا اور ان کے علاوہ جو تجھے پسند ہے بھر دے گا۔ اے اللہ! مجھے برف، اولوں کے پانی اور ٹھنڈے پانی سے پاک کر۔ اے اللہ! مجھے گناہوں اور خطاؤں سے ایسے پاک کردے جس طرح سفید کپڑے کو میلوں سے پاک کیا جاتا ہے۔",
      englishText:
          "Abdullah b. Abu Aufa reported that the Messenger of Allah (ﷺ) used to recite (this supplication):O Allah! our Lord, unto Thee be praise that would fill the heavens and the earth and fill that which will please Thee besides (them). O Allah! purify me with snow, (water of) hail and with cold water; O Allah. cleanse me from the sins and errors just as a white garment is cleansed from dirt.",
      reference: "Sahih Muslim 476 - B / C"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا عَبْدُ اللَّهِ بْنُ عَبْدِ الرَّحْمَنِ الدَّارِمِيُّ، أَخْبَرَنَا مَرْوَانُ بْنُ مُحَمَّدٍ الدِّمَشْقِيُّ، حَدَّثَنَا سَعِيدُ بْنُ عَبْدِ الْعَزِيزِ، عَنْ عَطِيَّةَ بْنِ قَيْسٍ، عَنْ قَزْعَةَ، عَنْ أَبِي سَعِيدٍ الْخُدْرِيِّ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ قَالَ \" رَبَّنَا لَكَ الْحَمْدُ مِلْءَ السَّمَوَاتِ وَالأَرْضِ وَمِلْءَ مَا شِئْتَ مِنْ شَىْءٍ بَعْدُ أَهْلَ الثَّنَاءِ وَالْمَجْدِ أَحَقُّ مَا قَالَ الْعَبْدُ وَكُلُّنَا لَكَ عَبْدٌ اللَّهُمَّ لاَ مَانِعَ لِمَا أَعْطَيْتَ وَلاَ مُعْطِيَ لِمَا مَنَعْتَ وَلاَ يَنْفَعُ ذَا الْجَدِّ مِنْكَ الْجَدُّ ‏\"",
      urduText:
          "ابو سعید خدری نے بیان کیا:جب رسول اللہ صلی اللہ علیہ وسلم نے رکوع کے بعد اپنا سر اٹھایا تو فرمایا: اے اللہ! اے ہمارے رب تیرے لیے حمد ہے جو تمام آسمانوں اور زمینوں کو بھر دے گی اور ان کے علاوہ جو کچھ تجھے پسند ہے اے تو حمد و ثنا کے لائق ہے، بندہ جو کچھ کہتا ہے اس کے سب سے زیادہ لائق ہے، اور ہم سب تیرے بندے ہیں، جو کچھ تو دے اسے کوئی نہیں روک سکتا اور جو کچھ تو روکے رکھتا ہے اسے کوئی نہیں روک سکتا، اور دولت تیرے مقابلے میں کسی مالدار کے کام نہیں آ سکتی۔",
      englishText:
          "Abu Sa'id al-Khudri reported:When the Messenger of Allah (ﷺ) raised his head after bowing, he said: O Allah! our Lord, to Thee be the praise that would fill all the heavens and the earth, and all that it pleases Thee besides (them). O, thou art worthy of praise and glory, most worthy of what a servant says, and we all are Thy servants, no one can withhold what Thou givest or give what Thou withholdest, and riches cannot avail a wealthy person against Thee.",
      reference: "Sahih Muslim 477"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا هُشَيْمُ بْنُ بَشِيرٍ، أَخْبَرَنَا هِشَامُ بْنُ حَسَّانَ، عَنْ قَيْسِ بْنِ سَعْدٍ، عَنْ عَطَاءٍ، عَنِ ابْنِ عَبَّاسٍ، أَنَّ النَّبِيَّ صلى الله عليه وسلم كَانَ إِذَا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ قَالَ \" اللَّهُمَّ رَبَّنَا لَكَ الْحَمْدُ مِلْءَ السَّمَوَاتِ وَمِلْءَ الأَرْضِ وَمَا بَيْنَهُمَا وَمِلْءَ مَا شِئْتَ مِنْ شَىْءٍ بَعْدُ أَهْلَ الثَّنَاءِ وَالْمَجْدِ لاَ مَانِعَ لِمَا أَعْطَيْتَ وَلاَ مُعْطِيَ لِمَا مَنَعْتَ وَلاَ يَنْفَعُ ذَا الْجَدِّ مِنْكَ الْجَدُّ \"",
      urduText:
          "ابن عباس نے بیان کیا:جب رسول اللہ صلی اللہ علیہ وسلم نے رکوع کے بعد اپنا سر اٹھایا تو فرمایا: اللہ! اے ہمارے رب تیرے لیے حمد ہے جو آسمانوں اور زمین کو اور جو کچھ ان کے درمیان ہے بھر دے گا اور ان کے علاوہ جو تجھے پسند آئے گا۔ تو ہر طرح کی تعریف اور جلال کے لائق ہے۔ جو کچھ تو دیتا ہے اسے کوئی نہیں روک سکتا اور جو تو روکتا ہے اسے کوئی نہیں دے سکتا۔ اور عظمت اے! بڑا فائدہ تیرے خلاف نہیں ہے۔",
      englishText:
          "Ibn Abbas reported:When the Messenger of Allah (ﷺ) raised his head after bowing, he said: Allah! our Lord, to Thee be the praise that would fill the heavens and the earth and that which is between them, and that which will please Thee besides (them). Worthy art Thou of all praise and glory. No one can withhold what Thou givest, or give what Thou withholdest. And the greatness O! the great availeth not against Thee.",
      reference: "Sahih Muslim 478 - A"),

  ////////////
  ////
  ////
  ////
  ////
  ////
  ////
  ///
  /////
  ///
  ////
  ///
  ////
  ///////
  ////
  ///
  ////
  ///
  ////
  ///
  ////
  /////
  ////
  ////
  ///
  ////
  ////
  ////
  ////
  ////
  /////
  ////
  ////
  ////

//////////////////////////////////////////////////// Bukhari  ///////////////////////////////////////////////////////////////

////////////////////////////////////////////////////  Ibn Majah  ///////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا عَلِيُّ بْنُ مُحَمَّدٍ، وَهِشَامُ بْنُ عَمَّارٍ، وَأَبُو عُمَرَ الضَّرِيرُ قَالُوا حَدَّثَنَا سُفْيَانُ بْنُ عُيَيْنَةَ، عَنِ الزُّهْرِيِّ، عَنْ سَالِمٍ، عَنِ ابْنِ عُمَرَ، قَالَ رَأَيْتُ رَسُولَ اللَّهِ ـ صلى الله عليه وسلم ـ إِذَا افْتَتَحَ الصَّلاَةَ، رَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ، وَإِذَا رَكَعَ، وَإِذَا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ. وَلاَ يَرْفَعُ بَيْنَ السَّجْدَتَيْنِ ‏.‏",
      urduText:
          "ابن عمر رضی اللہ عنہما سے مروی ہے کہ:میں نے رسول اللہ صلی اللہ علیہ وسلم کو دیکھا کہ آپ صلی اللہ علیہ وسلم نے نماز شروع کرتے وقت اپنے دونوں ہاتھ آپ کے کندھوں کے برابر اٹھائے اور جب رکوع میں رکوع کیا اور جب رکوع سے سر اٹھایا تو آپ صلی اللہ علیہ وسلم نے انہیں نہیں اٹھایا۔ دونوں سجدوں کے درمیان۔\"",
      englishText:
          "It was narrated that Ibn ‘Umar said:“I saw the Messenger of Allah (ﷺ) raising his hands until they were parallel to his shoulders when he started the prayer, and when he bowed in Ruku’, and when he raised his head from Ruku’, but he did not raise them between the two prostrations.",
      reference: "Sunan Ibn Majah 858 , Sunan Ibn Majah 859"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ بَشَّارٍ: حَدَّثَنَا يَحْيَى بْنُ سَعِيدٍ: حَدَّثَنَا عَبْدُ الْحَمِيدِ بْنُ جَعْفَرٍ: حَدَّثَنَا مُحَمَّدُ بْنُ عَمْرِو بْنِ عَطَاءٍ، عَنْ أَبِي حُمَيْدٍ السَّاعِدِيِّ، قَالَ سَمِعْتُهُ، وَهُوَ فِي عَشَرَةٍ مِنْ أَصْحَابِ رَسُولِ اللَّهِ ـ صلى الله عليه وسلم ـ، أَحَدُهُمْ أَبُو قَتَادَةَ بْنُ رِبْعِيٍّ قَالَ أَنَا أَعْلَمُكُمْ بِصَلاَةِ رَسُولِ اللَّهِ ـ صلى الله عليه وسلم ـ كَانَ إِذَا قَامَ فِي الصَّلاَةِ اعْتَدَلَ قَائِمًا، وَرَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ، ثُمَّ قَالَ \" اللَّهُ أَكْبَرُ \" وَإِذَا أَرَادَ أَنْ يَرْكَعَ، رَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ، فَإِذَا قَالَ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" رَفَعَ يَدَيْهِ فَاعْتَدَلَ، فَإِذَا قَامَ مِنَ الثِّنْتَيْنِ، كَبَّرَ وَرَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ، كَمَا صَنَعَ حِينَ افْتَتَحَ الصَّلاَةَ ‏.‏",
      urduText:
          "محمد بن عمرو بن عطاء سے مروی ہے کہ ابوحمید السعدی کے بارے میں فرمایا:\"میں نے آپ کو اس وقت سنا جب وہ رسول اللہ صلی اللہ علیہ وسلم کے دس صحابہ میں سے تھے، جن میں سے ایک ابو قتادہ بن ربعی بھی تھے، کہتے تھے: میں تم میں سے رسول اللہ صلی اللہ علیہ وسلم کی نماز کے بارے میں سب سے زیادہ جانتا ہوں۔ (ﷺ) جب آپ صلی اللہ علیہ وسلم نماز کے لیے کھڑے ہوئے تو سیدھے کھڑے ہوئے اور اپنے دونوں ہاتھ اٹھائے یہاں تک کہ وہ آپ کے کندھوں کے برابر ہو گئے، پھر فرمایا: اللہ اکبر۔ جب رکوع میں رکوع کرنا چاہا تو اپنے دونوں ہاتھ اٹھائے یہاں تک کہ وہ کندھوں کے برابر ہو گئے۔ جب آپ صلی اللہ علیہ وسلم نے سمیع اللہ لمن حمدہ کہا تو آپ صلی اللہ علیہ وسلم اپنے ہاتھ اٹھا کر سیدھے کھڑے ہو گئے۔ جب آپ صلی اللہ علیہ وسلم دو رکعت کے بعد کھڑے ہوئے تو اللہ اکبر کہا اور اپنے ہاتھ اٹھائے یہاں تک کہ وہ آپ کے کندھوں کے متوازی ہو گئے جیسا کہ آپ صلی اللہ علیہ وسلم نے نماز شروع کرتے وقت کیا تھا۔",
      englishText:
          "It was narrated that Muhammad bin `Amr bin `Ata’ said, concerning Abu Humaid As-Sa`di:“I heard him when he was among ten of the Companions of the Messenger of Allah (ﷺ), one of whom was Abu Qatadah bin Rib`i, saying: ‘I am the most knowledgeable of you about the prayer of the Messenger of Allah (ﷺ). When he stood up for prayer, he stood up straight and raised his hands until they were parallel to his shoulders, then he said: Allahu Akbar. When he wanted to bow in Ruku`, he raised his hands until they were parallel to his shoulders. When he said Sami` Allahu liman hamidah (Allah hears those who praise Him), he raised his hands and stood up straight. When he stood up after two Rak`ah, he said Allahu Akbar and raised his hands until they were parallel to his shoulders, as he did when he started the prayer.’”",
      reference: "Sunan Ibn Majah 862"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ بَشَّارٍ، حَدَّثَنَا أَبُو عَامِرٍ، حَدَّثَنَا فُلَيْحُ بْنُ سُلَيْمَانَ، حَدَّثَنَا عَبَّاسُ بْنُ سَهْلٍ السَّاعِدِيُّ، قَالَ اجْتَمَعَ أَبُو حُمَيْدٍ وَأَبُو أُسَيْدٍ السَّاعِدِيُّ وَسَهْلُ بْنُ سَعْدٍ وَمُحَمَّدُ بْنُ مَسْلَمَةَ فَذَكَرُوا صَلاَةَ رَسُولِ اللَّهِ ـ صلى الله عليه وسلم ـ فَقَالَ أَبُو حُمَيْدٍ أَنَا أَعْلَمُكُمْ بِصَلاَةِ رَسُولِ اللَّهِ ـ صلى الله عليه وسلم ـ إِنَّ رَسُولَ اللَّهِ ـ صلى الله عليه وسلم ـ قَامَ فَكَبَّرَ وَرَفَعَ يَدَيْهِ، ثُمَّ رَفَعَ حِينَ كَبَّرَ لِلرُّكُوعِ، ثُمَّ قَامَ فَرَفَعَ يَدَيْهِ، وَاسْتَوَى حَتَّى رَجَعَ كُلُّ عَظْمٍ إِلَى مَوْضِعِهِ ‏.‏",
      urduText:
          "عباس بن سہل السعدی نے کہا:ابو حمید، ابو اسید سعدی، سہل بن سعد اور محمد بن مسلمہ اکٹھے ہوئے اور رسول اللہ صلی اللہ علیہ وسلم کی نماز کے بارے میں گفتگو کی۔ ابو حمید نے کہا: میں تم میں سب سے زیادہ رسول اللہ صلی اللہ علیہ وسلم کی نماز کو جانتا ہوں۔ رسول اللہ صلی اللہ علیہ وسلم نے کھڑے ہو کر اللہ اکبر کہا، اور اپنے دونوں ہاتھ اٹھائے، پھر جب رکوع کے لیے اللہ اکبر کہا تو آپ صلی اللہ علیہ وسلم نے انہیں اٹھایا، پھر آپ صلی اللہ علیہ وسلم کھڑے ہوئے اور اپنے دونوں ہاتھ اٹھائے، اور سیدھے کھڑے رہے یہاں تک کہ ہر ہڈی واپس لوٹ گئی۔ اس کی جگہ۔''",
      englishText:
          "‘Abbas bin Sahl As-Sa’di said:“Abu Humaid, Abu Usaid As-Sa’di, Sahl bin Sa’d, and Muhammad bin Maslamah came together and spoke about the prayer of the Messenger of Allah (ﷺ). Abu Humaid said: ‘I am the most knowledgeable of you about the prayer of the Messenger of Allah (ﷺ). The Messenger of Allah (ﷺ) stood up and said Allahu Akbar, and raised his hands, then he raised them when he said Allahu Akbar for Ruku’, then he stood up and raised his hands, and stood straight until every bone had returned to its place.’”",
      reference: "Sunan Ibn Majah 863"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ بَشَّارٍ، حَدَّثَنَا عَبْدُ الْوَهَّابِ، حَدَّثَنَا حُمَيْدٌ، عَنْ أَنَسٍ، أَنَّ رَسُولَ اللَّهِ ـ صلى الله عليه وسلم ـ كَانَ يَرْفَعُ يَدَيْهِ إِذَا دَخَلَ فِي الصَّلاَةِ، وَإِذَا رَكَعَ ‏.‏",
      urduText:
          "انس رضی اللہ عنہ سے روایت ہے کہ رسول اللہ صلی اللہ علیہ وسلم جب نماز میں داخل ہوتے اور رکوع میں ہاتھ اٹھاتے تھے۔",
      englishText:
          "It was narrated from Anas that the Messenger of Allah (ﷺ) used to raise his hands when he entered prayer, and when he bowed in Ruku’.",
      reference: "Sunan Ibn Majah 866"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا بِشْرُ بْنُ مُعَاذٍ الضَّرِيرُ، حَدَّثَنَا بِشْرُ بْنُ الْمُفَضَّلِ، حَدَّثَنَا عَاصِمُ بْنُ كُلَيْبٍ، عَنْ أَبِيهِ، عَنْ وَائِلِ بْنِ حُجْرٍ، قَالَ قُلْتُ لأَنْظُرَنَّ إِلَى رَسُولِ اللَّهِ ـ صلى الله عليه وسلم ـ كَيْفَ يُصَلِّي، فَقَامَ فَاسْتَقْبَلَ الْقِبْلَةَ فَرَفَعَ يَدَيْهِ حَتَّى حَاذَتَا أُذُنَيْهِ، فَلَمَّا رَكَعَ رَفَعَهُمَا مِثْلَ ذَلِكَ، فَلَمَّا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ رَفَعَهُمَا مِثْلَ ذَلِكَ ‏.‏",
      urduText:
          "روایت ہے کہ وائل بن حجر نے کہا:میں نے کہا: میں رسول اللہ صلی اللہ علیہ وسلم کو دیکھوں گا اور دیکھوں گا کہ آپ کس طرح نماز پڑھتے ہیں، آپ صلی اللہ علیہ وسلم کھڑے ہوئے اور قبلہ کی طرف رخ کیا اور اپنے دونوں ہاتھ اٹھائے یہاں تک کہ وہ آپ کے کانوں کے برابر ہو گئے۔ جب آپ صلی اللہ علیہ وسلم نے رکوع کیا تو آپ صلی اللہ علیہ وسلم نے انہیں اسی طرح اٹھایا اور جب رکوع سے سر اٹھایا تو آپ صلی اللہ علیہ وسلم نے انہیں بھی اسی طرح اٹھایا۔",
      englishText:
          "It was narrated that Wa’il bin Hujr said:“I said: ‘I will look at the Messenger of Allah (ﷺ) and see how he performs the prayer.’ He stood up and faced the Qiblah, and raised his hands until they were parallel to his ears. When he bowed, he raised them likewise, and when he raised his head from Ruku’, he raised them likewise.”",
      reference: "Sunan Ibn Majah 867"),

//////////////////////////////////////////////////// Abu daood  ///////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا أَحْمَدُ بْنُ مُحَمَّدِ بْنِ حَنْبَلٍ، حَدَّثَنَا سُفْيَانُ، عَنِ الزُّهْرِيِّ، عَنْ سَالِمٍ، عَنْ أَبِيهِ، قَالَ رَأَيْتُ رَسُولَ اللَّهِ صلى الله عليه وسلم إِذَا اسْتَفْتَحَ الصَّلاَةَ رَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ مَنْكِبَيْهِ وَإِذَا أَرَادَ أَنْ يَرْكَعَ وَبَعْدَ مَا يَرْفَعُ رَأْسَهُ مِنَ الرُّكُوعِ - وَقَالَ سُفْيَانُ مَرَّةً وَإِذَا رَفَعَ رَأْسَهُ ‏.‏ وَأَكْثَرُ مَا كَانَ يَقُولُ وَبَعْدَ مَا يَرْفَعُ رَأْسَهُ مِنَ الرُّكُوعِ - وَلاَ يَرْفَعُ بَيْنَ السَّجْدَتَيْنِ ‏.‏",
      urduText:
          "سالم نے اپنے والد (ابن عمر) سے روایت کی:میں نے رسول اللہ صلی اللہ علیہ وسلم کو دیکھا کہ جب آپ نماز شروع کرتے تو اپنے دونوں ہاتھ اپنے کندھوں کے مقابل اٹھاتے، اور جب رکوع کرتے تو ایسا کرتے اور رکوع کے بعد سر اٹھاتے۔ سفیان (ایک راوی) نے ایک مرتبہ کہا: جب اس نے اپنا سر اٹھایا: اور اس کے بعد فرماتے تھے: \"جب اس نے رکوع کے بعد اپنا سر اٹھایا۔ وہ دونوں سجدوں کے درمیان ہاتھ نہیں اٹھاتا تھا۔\"",
      englishText:
          "Salim reported on the authority of his father (Ibn ‘Umar):I saw the Messenger of Allah(ﷺ) that when he began prayer, he used to raise his hands opposite his shoulders, and he did so when he bowed and raised his head after bowing. Sufyan(a narrator) once said: “When he raised his head:; and after he used to say: \“When he raised his head after bowing. He would not raise (his hands) between the two prostrations.\"",
      reference: "Sunan Abi Dawud 721"),
  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ الْمُصَفَّى الْحِمْصِيُّ، حَدَّثَنَا بَقِيَّةُ، حَدَّثَنَا الزُّبَيْدِيُّ، عَنِ الزُّهْرِيِّ، عَنْ سَالِمٍ، عَنْ عَبْدِ اللَّهِ بْنِ عُمَرَ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ إِلَى الصَّلاَةِ رَفَعَ يَدَيْهِ حَتَّى تَكُونَا حَذْوَ مَنْكِبَيْهِ ثُمَّ كَبَّرَ وَهُمَا كَذَلِكَ فَيَرْكَعُ ثُمَّ إِذَا أَرَادَ أَنْ يَرْفَعَ صُلْبَهُ رَفَعَهُمَا حَتَّى تَكُونَا حَذْوَ مَنْكِبَيْهِ ثُمَّ قَالَ سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ وَلاَ يَرْفَعُ يَدَيْهِ فِي السُّجُودِ وَيَرْفَعُهُمَا فِي كُلِّ تَكْبِيرَةٍ يُكَبِّرُهَا قَبْلَ الرُّكُوعِ حَتَّى تَنْقَضِيَ صَلاَتُهُ ‏.‏",
      urduText:
          "عبداللہ بی۔ عمر نے کہا:رسول اللہ صلی اللہ علیہ وسلم جب نماز شروع کرتے تو اپنے ہاتھ اپنے کندھوں کے مقابل اٹھاتے، پھر اسی حالت میں تکبیر کہتے، پھر رکوع کرتے۔ اور جب رکوع کے بعد اپنی پیٹھ (سر) کو اٹھایا تو انہیں اپنے کندھوں کے مقابل اٹھایا اور فرمایا: اللہ اس کی سنتا ہے جو اس کی حمد کرتا ہے۔ لیکن سجدہ کرتے وقت ہاتھ نہیں اٹھایا۔ بلکہ اس نے رکوع کرنے سے پہلے تکبیر (اللہ سب سے بڑا ہے) کہنے پر انہیں اٹھایا یہاں تک کہ اس کی نماز ختم ہو گئی۔",
      englishText:
          "‘Abd Allah b. Umar said:The Messenger of Allah (ﷺ) used to raise his hands opposite his shoulders when he began prayer, then he uttered takbir (Allah is most great) in the same condition, and then he bowed. And when he raised his back (head) after bowing he raised them opposite his shoulders, and said: “Allah listens to him who praises Him.” But he did not raise his hand when he prostrated himself; he rather raised them when he uttered the takbir (Allah is most great) before bowing until his prayer is finished.",
      reference: "Sunan Abi Dawud 722"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا عُبَيْدُ اللَّهِ بْنُ عُمَرَ بْنِ مَيْسَرَةَ الْجُشَمِيُّ، حَدَّثَنَا عَبْدُ الْوَارِثِ بْنُ سَعِيدٍ، قَالَ حَدَّثَنَا مُحَمَّدُ بْنُ جُحَادَةَ، حَدَّثَنِي عَبْدُ الْجَبَّارِ بْنُ وَائِلِ بْنِ حُجْرٍ، قَالَ كُنْتُ غُلاَمًا لاَ أَعْقِلُ صَلاَةَ أَبِي قَالَ فَحَدَّثَنِي وَائِلُ بْنُ عَلْقَمَةَ عَنْ أَبِي وَائِلِ بْنِ حُجْرٍ قَالَ صَلَّيْتُ مَعَ رَسُولِ اللَّهِ صلى الله عليه وسلم فَكَانَ إِذَا كَبَّرَ رَفَعَ يَدَيْهِ - قَالَ - ثُمَّ الْتَحَفَ ثُمَّ أَخَذَ شِمَالَهُ بِيَمِينِهِ وَأَدْخَلَ يَدَيْهِ فِي ثَوْبِهِ قَالَ فَإِذَا أَرَادَ أَنْ يَرْكَعَ أَخْرَجَ يَدَيْهِ ثُمَّ رَفَعَهُمَا وَإِذَا أَرَادَ أَنْ يَرْفَعَ رَأْسَهُ مِنَ الرُّكُوعِ رَفَعَ يَدَيْهِ ثُمَّ سَجَدَ وَوَضَعَ وَجْهَهُ بَيْنَ كَفَّيْهِ وَإِذَا رَفَعَ رَأْسَهُ مِنَ السُّجُودِ أَيْضًا رَفَعَ يَدَيْهِ حَتَّى فَرَغَ مِنْ صَلاَتِهِ ‏.‏ قَالَ مُحَمَّدٌ فَذَكَرْتُ ذَلِكَ لِلْحَسَنِ بْنِ أَبِي الْحَسَنِ فَقَالَ هِيَ صَلاَةُ رَسُولِ اللَّهِ صلى الله عليه وسلم فَعَلَهُ مَنْ فَعَلَهُ وَتَرَكَهُ مَنْ تَرَكَهُ ‏.‏ قَالَ أَبُو دَاوُدَ رَوَى هَذَا الْحَدِيثَ هَمَّامٌ عَنِ ابْنِ جُحَادَةَ لَمْ يَذْكُرِ الرَّفْعَ مَعَ الرَّفْعِ مِنَ السُّجُودِ ‏.‏",
      urduText:
          "عبد الجبار ب۔ وائل (ب۔ حجر) نے کہا:میں چھوٹا لڑکا تھا اور مجھے اپنے والد کی دعا سمجھ نہیں آتی تھی۔ تو وائل ب۔ علقمہ نے وائل بن کو رپورٹ کیا۔ حجر کہتے ہیں کہ میں نے رسول اللہ صلی اللہ علیہ وسلم کے ساتھ نماز پڑھی۔ آپ جب تکبیر کہتے تھے تو اپنے ہاتھ اٹھاتے تھے، پھر اپنی چادر کو اپنے گرد کھینچتے تھے، پھر اپنا دایاں ہاتھ اپنے بائیں طرف رکھتے تھے، اور اپنے ہاتھ اپنے کپڑے میں داخل کرتے تھے۔ جب وہ رکوع کرنے والا تھا تو اس نے اپنے ہاتھ اپنے کپڑوں سے نکالے اور پھر اٹھائے۔ اور جب رکوع کے بعد سر اٹھایا تو دونوں ہاتھ اٹھائے۔ پھر آپ صلی اللہ علیہ وسلم نے سجدہ کیا اور اپنا چہرہ ( پیشانی) اپنے ہاتھوں کے درمیان رکھا۔ اور جب سجدہ کے بعد سر اٹھایا تو اپنے ہاتھ بھی اٹھائے یہاں تک کہ نماز سے فارغ ہو گئے۔ محمد (ایک راوی) نے کہا: میں نے اس کا ذکر حسن بن عبداللہ سے کیا۔ ابوالحسن کہتے ہیں کہ رسول اللہ صلی اللہ علیہ وسلم نے اس طرح نماز پڑھی تھی۔ کچھ نے کیا اور دوسروں نے اسے چھوڑ دیا۔ابوداؤد کہتے ہیں: اس روایت کو ہمام نے ابن جوہدہ سے روایت کیا ہے، لیکن انہوں نے سجدے کے آخر میں سر اٹھانے کے بعد ہاتھ اٹھانے کا ذکر نہیں کیا۔",
      englishText:
          "‘Abd al-Jabbar b. Wa’il (b.Hujr) said:I was a small boy and I did not understand the prayer of my father. So Wa’Il b. ‘Alqamah reported Wa’il b. Hujr as saying: I offered prayer along with the Messenger of Allah (ﷺ). He used to raise his hands when he pronounced the takbir (Allah is most great), then pulled his garment around him, then placed his right hand on his left, and entered his hands in his garment. When he was about to bow he took his hands out of his garment, and then raised them. And when he raised his head after bowing, he raised his hands. He then prostrated himself and placed his face (forehead on the ground) between his hands. And when he raised his head after prostration, he also raised his hands until he finished his prayer. Muhammad (a narrator) said: I mentioned it to al-Hasan b. Abu al-Hasan who said: This is how the Messenger of Allah(ﷺ) offered prayer; some did it and others abandoned it.Abu Dawud said: This tradition has been narrated by Hammam from ibn Juhadah, but he did not mention the raising of hands after he raised his head at the end of the prostration.",
      reference: "Sunan Abi Dawud 723"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا نَصْرُ بْنُ عَلِيٍّ، أَخْبَرَنَا عَبْدُ الأَعْلَى، حَدَّثَنَا عُبَيْدُ اللَّهِ، عَنْ نَافِعٍ، عَنِ ابْنِ عُمَرَ، أَنَّهُ كَانَ إِذَا دَخَلَ فِي الصَّلاَةِ كَبَّرَ وَرَفَعَ يَدَيْهِ وَإِذَا رَكَعَ وَإِذَا قَالَ سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ وَإِذَا قَامَ مِنَ الرَّكْعَتَيْنِ رَفَعَ يَدَيْهِ وَيَرْفَعُ ذَلِكَ إِلَى رَسُولِ اللَّهِ صلى الله عليه وسلم ‏.‏ قَالَ أَبُو دَاوُدَ الصَّحِيحُ قَوْلُ ابْنِ عُمَرَ وَلَيْسَ بِمَرْفُوعٍ ‏.‏ قَالَ أَبُو دَاوُدَ رَوَى بَقِيَّةُ أَوَّلَهُ عَنْ عُبَيْدِ اللَّهِ وَأَسْنَدَهُ وَرَوَاهُ الثَّقَفِيُّ عَنْ عُبَيْدِ اللَّهِ أَوْقَفَهُ عَلَى ابْنِ عُمَرَ وَقَالَ فِيهِ وَإِذَا قَامَ مِنَ الرَّكْعَتَيْنِ يَرْفَعُهُمَا إِلَى ثَدْيَيْهِ وَهَذَا هُوَ الصَّحِيحُ ‏.‏ قال أَبُو دَاوُدَ وَرَوَاهُ اللَّيْثُ بْنُ سَعْدٍ وَمَالِكٌ وَأَيُّوبُ وَابْنُ جُرَيْجٍ مَوْقُوفًا وَأَسْنَدَهُ حَمَّادُ بْنُ سَلَمَةَ وَحْدَهُ عَنْ أَيُّوبَ وَلَمْ يَذْكُرْ أَيُّوبُ وَمَالِكٌ الرَّفْعَ إِذَا قَامَ مِنَ السَّجْدَتَيْنِ وَذَكَرَهُ اللَّيْثُ فِي حَدِيثِهِ قَالَ ابْنُ جُرَيْجٍ فِيهِ قُلْتُ لِنَافِعٍ أَكَانَ ابْنُ عُمَرَ يَجْعَلُ الأُولَى أَرْفَعَهُنَّ قَالَ لاَ سَوَاءً ‏.‏ قُلْتُ أَشِرْ لِي ‏.‏ فَأَشَارَ إِلَى الثَّدْيَيْنِ أَوْ أَسْفَلَ مِنْ ذَلِكَ ‏.‏",
      urduText:
          "نافع نے ابن عمر سے روایت کی ہے کہ جب وہ نماز شروع کرتے تو تکبیر کہتے اور ہاتھ اٹھاتے۔ اور جب اس نے رکوع کیا (اس نے اپنے ہاتھ اٹھائے) اور جب اس نے کہا:\"اللہ اس کی سنتا ہے جو اس کی تعریف کرتا ہے،\" (اس نے اپنے ہاتھ اٹھائے)؛ اور جب دو رکعتوں کے بعد کھڑے ہوئے تو اپنے دونوں ہاتھ اٹھائے۔ انہوں نے (ابن عمر) اس کا سراغ رسول اللہ صلی اللہ علیہ وسلم تک پہنچایا۔ابوداؤد نے کہا: صحیح یہ ہے کہ ابن عمر رضی اللہ عنہ کی روایت رسول اللہ صلی اللہ علیہ وسلم سے واپس نہیں جاتی۔ ابوداؤد کہتے ہیں: راوی بقیع نے اس روایت کا پہلا حصہ عبید اللہ سے روایت کیا اور اسے رسول اللہ صلی اللہ علیہ وسلم تک پہنچایا۔ اور راوی ثقفی نے اسے عبید اللہ سے خود ابن عمر کا قول نقل کیا ہے (نہ کہ پورف سے)۔ اس روایت میں فرمایا: جب وہ دو رکعتوں کے آخر میں کھڑا ہوا تو انہیں اپنے سینوں تک اٹھا لیا۔ اور یہ صحیح نسخہ ہے۔ابوداؤد کہتے ہیں: یہ روایت ابن عمر (نبی صلی اللہ علیہ وسلم کے نہیں) کے قول کے طور پر لیث بن نے نقل کی ہے۔ سعد، مالک، ایوب اور ابن جریج؛ اور اسے حماد بن نے رسول اللہ صلی اللہ علیہ وسلم کا قول قرار دیا ہے۔ سلامہ اکیلے ایوب کے اختیار پر۔ ایوب اور مالک نے دو سجدوں کے بعد کھڑے ہونے پر ہاتھ اٹھانے کا ذکر نہیں کیا، لیکن لیث نے اپنے نسخے میں اس کا ذکر کیا۔ ابن جریج نے اس روایت میں کہا: میں نے نافع سے پوچھا: کیا ابن عمر رضی اللہ عنہ نے پہلی بار (اپنے ہاتھ) اوپر اٹھائے تھے؟ اس نے کہا: نہیں، میں نے کہا: میری طرف اشارہ کرو۔ اس نے پھر سینوں کی طرف یا اس سے نیچے کی طرف اشارہ کیا۔",
      englishText:
          "Nafi’ said on the authority of Ibn ‘Umar that when he began prayer, he uttered the takbir( Allah is most great) and raised his hands; and when he bowed( he raised his hands); and when he said:“Allah listens to him who praises Him,” (he raised his hands); and when he stood up at the end of two rak’ahs, he raised his hands. He (Ibn ‘Umar) traced that back to the Messenger of Allah (ﷺ).Abu Dawud said: What is correct is that the tradition reported by Ibn ‘Umar does not go back to the Prophet (may peace beupon him). Abu Dawud said: The narrator Baqiyyah reported the first part of this tradition from ‘Ubaid Allah and traced it back to the Prophet (ﷺ); and the narrator al-Thaqafi reported it from ‘Ubaid Allah as a statement of Ibn ‘Umar himself(not from the Porphet). In this version he said: When he stood at the end of two rak’ahs he raised them up to his breasts. And this is the correct version.Abu Dawud said: This tradition has been transmitted as a statement of Ibn ‘Umar (and not of the Prophet) by al-Laith b. Sa’d, Malik, Ayyub, and Ibn Juraij; and this has been narrated as a statement of the Prophet (ﷺ) by Hammad b. Salamah alone on the authority of Ayyub. Ayyub and Malik did not mention his raising of hands when he stood after two prostrations, but al-Laith mentioned it in his version. Ibn Juraij said in this version: I asked Nafi’: Did Ibn ‘Umar raise (his hands) higher for the first time? He said: No, I said: Point out to me. He then pointed to the breasts or lower than that.",
      reference: "Sunan Abi Dawud 741"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا الْقَعْنَبِيُّ، عَنْ مَالِكٍ، عَنْ نَافِعٍ، أَنَّ عَبْدَ اللَّهِ بْنَ عُمَرَ، كَانَ إِذَا ابْتَدَأَ الصَّلاَةَ يَرْفَعُ يَدَيْهِ حَذْوَ مَنْكِبَيْهِ وَإِذَا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ رَفَعَهُمَا دُونَ ذَلِكَ ‏.‏ قَالَ أَبُو دَاوُدَ لَمْ يَذْكُرْ رَفْعَهُمَا دُونَ ذَلِكَ ‏.‏ أَحَدٌ غَيْرَ مَالِكٍ فِيمَا أَعْلَمُ ‏.‏",
      urduText:
          "نافع نے کہا:جب عبداللہ بی۔ عمر رضی اللہ عنہ نے نماز شروع کی، اپنے ہاتھ اپنے کندھوں کے مقابل اٹھائے۔ اور جب رکوع کے بعد سر اٹھایا تو اس سے نیچے اٹھایا۔ابوداؤد نے کہا: جہاں تک میں جانتا ہوں، مالک کے علاوہ کسی نے یہ الفاظ بیان نہیں کیے کہ \"انہوں نے اس سے نیچے اٹھایا\"۔",
      englishText:
          "Nafi’ said:When ‘Abd Allah b. ‘Umar began his prayer, he raised his hands opposite to his shoulders; and when he raised his head after bowing, he raised them lower than that.Abu Dawud said: So as far as I know, no one narrated the words “he raised them lower that that” except Malik.",
      reference: "Sunan Abi Dawud 742"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا عُثْمَانُ بْنُ أَبِي شَيْبَةَ، وَمُحَمَّدُ بْنُ عُبَيْدٍ الْمُحَارِبِيُّ، قَالاَ حَدَّثَنَا مُحَمَّدُ بْنُ فُضَيْلٍ، عَنْ عَاصِمِ بْنِ كُلَيْبٍ، عَنْ مُحَارِبِ بْنِ دِثَارٍ، عَنِ ابْنِ عُمَرَ، قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ مِنَ الرَّكْعَتَيْنِ كَبَّرَ وَرَفَعَ يَدَيْهِ ‏.‏",
      urduText:
          "ابن عمر نے کہا:رسول اللہ صلی اللہ علیہ وسلم جب دو رکعتوں کے اختتام پر کھڑے ہوتے تو تکبیر کہتے اور ہاتھ اٹھاتے۔",
      englishText:
          "Ibn ‘Umar said:When the Messenger of Allah (ﷺ) stood at the end of two rak’ahs, he uttered the takbir (Allah is most great) and raised his hands.",
      reference: "Sunan Abi Dawud 743"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا حَفْصُ بْنُ عُمَرَ، حَدَّثَنَا شُعْبَةُ، عَنْ قَتَادَةَ، عَنْ نَصْرِ بْنِ عَاصِمٍ، عَنْ مَالِكِ بْنِ الْحُوَيْرِثِ، قَالَ رَأَيْتُ النَّبِيَّ صلى الله عليه وسلم يَرْفَعُ يَدَيْهِ إِذَا كَبَّرَ وَإِذَا رَكَعَ وَإِذَا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ حَتَّى يَبْلُغَ بِهِمَا فُرُوعَ أُذُنَيْهِ ‏.‏",
      urduText:
          "ملک ب۔ الحویرث نے کہا:میں نے رسول اللہ صلی اللہ علیہ وسلم کو دیکھا جب آپ تکبیر کہتے، جب رکوع کرتے اور جب رکوع کے بعد اپنا سر اٹھاتے یہاں تک کہ انہیں اپنے کانوں کی لو تک پہنچاتے۔",
      englishText:
          "Malik b. al-Huwairith said:I saw the Prophet (ﷺ) raise his hands when he uttered the takbir (Allah is most great), when he bowed and when he raised his head after bowing until he brought them to the lobes of his ears.",
      reference: "Sunan Abi Dawud 745"),

//////////////////////////////////////////////////// Tarimzi  ///////////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا قُتَيْبَةُ، وَابْنُ أَبِي عُمَرَ، قَالاَ حَدَّثَنَا سُفْيَانُ بْنُ عُيَيْنَةَ، عَنِ الزُّهْرِيِّ، عَنْ سَالِمٍ، عَنْ أَبِيهِ، قَالَ رَأَيْتُ رَسُولَ اللَّهِ صلى الله عليه وسلم إِذَا افْتَتَحَ الصَّلاَةَ يَرْفَعُ يَدَيْهِ حَتَّى يُحَاذِيَ مَنْكِبَيْهِ وَإِذَا رَكَعَ وَإِذَا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ ‏.‏ وَزَادَ ابْنُ أَبِي عُمَرَ فِي حَدِيثِهِ وَكَانَ لاَ يَرْفَعُ بَيْنَ السَّجْدَتَيْنِ ‏.‏",
      urduText:
          "سلیم نے روایت کی ہے:ان کے والد (ابن عمر رضی اللہ عنہما) کہتے ہیں کہ میں نے رسول اللہ صلی اللہ علیہ وسلم کو دیکھا جب آپ صلی اللہ علیہ وسلم نماز کو کھولتے، اپنے دونوں ہاتھ اپنے کندھوں کے برابر اٹھاتے، اور (دوبارہ) جب آپ رکوع کرتے، اور جب آپ نے رکوع سے سر اٹھایا۔ ابن ابی عمر نے اپنی روایت میں مزید کہا: \"اور وہ دونوں سجدوں کے درمیان نہیں اٹھاتے تھے۔\"",
      englishText:
          "Salim narrated from :his father (Ibn Umar) who said: \"I saw Allah's Messenger when he opened the Salat, raising his hands to the level of his shoulders, and (again) when he bowed, and when he raised his head from bowing.\" In his narration, Ibn Abi Umar added: \"And he wuld not raise them between the two prostrations.\"",
      reference: "Jami` at-Tirmidhi 255"),

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  /////////////////////////////////////////////// Complete namaz in one hadith  //////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////  Muslim //////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 54,
      arabicText:
          "حَدَّثَنِي مُحَمَّدُ بْنُ الْمُثَنَّى، حَدَّثَنَا يَحْيَى بْنُ سَعِيدٍ، عَنْ عُبَيْدِ اللَّهِ، قَالَ حَدَّثَنِي سَعِيدُ بْنُ أَبِي سَعِيدٍ، عَنْ أَبِيهِ، عَنْ أَبِي هُرَيْرَةَ، أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم دَخَلَ الْمَسْجِدَ فَدَخَلَ رَجُلٌ فَصَلَّى ثُمَّ جَاءَ فَسَلَّمَ عَلَى رَسُولِ اللَّهِ صلى الله عليه وسلم فَرَدَّ رَسُولُ اللَّهِ صلى الله عليه وسلم السَّلاَمَ قَالَ \" ارْجِعْ فَصَلِّ فَإِنَّكَ لَمْ تُصَلِّ \" فَرَجَعَ الرَّجُلُ فَصَلَّى كَمَا كَانَ صَلَّى ثُمَّ جَاءَ إِلَى النَّبِيِّ صلى الله عليه وسلم فَسَلَّمَ عَلَيْهِ فَقَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" وَعَلَيْكَ السَّلاَمُ \" ثُمَّ قَالَ \" ارْجِعْ فَصَلِّ فَإِنَّكَ لَمْ تُصَلِّ \" حَتَّى فَعَلَ ذَلِكَ ثَلاَثَ مَرَّاتٍ فَقَالَ الرَّجُلُ وَالَّذِي بَعَثَكَ بِالْحَقِّ مَا أُحْسِنُ غَيْرَ هَذَا عَلِّمْنِي ‏.‏ قَالَ \" إِذَا قُمْتَ إِلَى الصَّلاَةِ فَكَبِّرْ ثُمَّ اقْرَأْ مَا تَيَسَّرَ مَعَكَ مِنَ الْقُرْآنِ ثُمَّ ارْكَعْ حَتَّى تَطْمَئِنَّ رَاكِعًا ثُمَّ ارْفَعْ حَتَّى تَعْتَدِلَ قَائِمًا ثُمَّ اسْجُدْ حَتَّى تَطْمَئِنَّ سَاجِدًا ثُمَّ ارْفَعْ حَتَّى تَطْمَئِنَّ جَالِسًا ثُمَّ افْعَلْ ذَلِكَ فِي صَلاَتِكَ كُلِّهَا \"",
      urduText:
          "ابوہریرہ نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم مسجد میں داخل ہوئے تو ایک شخص بھی اس میں داخل ہوا اور نماز پڑھی، پھر آ کر رسول اللہ صلی اللہ علیہ وسلم پر سلام کیا۔ رسول اللہ صلی اللہ علیہ وسلم نے سلام پھیرا اور فرمایا: واپس جا کر نماز پڑھو، کیونکہ تم نے نماز نہیں پڑھی۔ اس نے پھر نماز پڑھی جیسا کہ پہلے پڑھا تھا، اور رسول اللہ صلی اللہ علیہ وسلم کے پاس آیا اور آپ کو سلام کیا۔ رسول اللہ صلی اللہ علیہ وسلم نے سلام پھیر دیا اور فرمایا: واپس جاؤ اور نماز پڑھو، کیونکہ تم نے نماز نہیں پڑھی۔ یہ (نماز دہرانے کا عمل) تین بار کیا گیا۔ اس پر اس شخص نے کہا: اس ذات کی قسم جس نے آپ کو حق کے ساتھ بھیجا ہے، میں اس سے بہتر جو کچھ کر سکتا ہوں، مجھے سکھا دیں۔ آپ صلی اللہ علیہ وسلم نے فرمایا: جب تم نماز کے لیے اٹھو تو تکبیر پڑھو، پھر قرآن میں سے جس طرح آسانی ہو اسے پڑھو، پھر رکوع کرو اور اسی حالت میں خاموش رہو، پھر اپنے آپ کو اٹھاؤ اور سیدھے کھڑے ہو جاؤ۔ پھر سجدہ کرو اور خاموشی سے اس رویہ میں رہو۔ پھر اپنے آپ کو اٹھاؤ اور خاموش بیٹھو۔ اور اپنی تمام دعاؤں میں ایسا کرو۔",
      englishText:
          "Abu Huraira reported:The Messenger of Allah (ﷺ) entered the mosque and a person also entered therein and offered prayer, and then came and paid salutation to the Messenger of Allah (ﷺ). The Messenger of Allah (ﷺ) returned his salutation and said: Go back and pray, for you have not offered the prayer. He again prayed as he had prayed before, and came to the Messenger of Allah (may peace be upon. him) and saluted him. The Messenger of Allah (ﷺ) returned the salutation and said: Go back and say prayer, for you have not offered the prayer. This (act of repeating the prayer) was done three times. Upon this the person said: By Him Who hast sent you with Truth, whatever better I can do than this, please teach me. He (the Holy Prophet) said: When you get up to pray, recite takbir, and then recite whatever you conveniently can from the Qur'an, then bow down and remain quietly in that position, then raise your- self and stand erect; then prostrate yourself and remain quietly in that attitude; then raise yourself and sit quietly; and do that throughout all your prayers.",
      reference:
          "Sahih Muslim 397 - A , Sunan Abi Dawud 856 , Jami` at-Tirmidhi 303"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا زُهَيْرُ بْنُ حَرْبٍ، حَدَّثَنَا عَفَّانُ، حَدَّثَنَا هَمَّامٌ، حَدَّثَنَا مُحَمَّدُ بْنُ جُحَادَةَ، حَدَّثَنِي عَبْدُ الْجَبَّارِ بْنُ وَائِلٍ، عَنْ عَلْقَمَةَ بْنِ وَائِلٍ، وَمَوْلًى، لَهُمْ أَنَّهُمَا حَدَّثَاهُ عَنْ أَبِيهِ، وَائِلِ بْنِ حُجْرٍ، أَنَّهُ رَأَى النَّبِيَّ صلى الله عليه وسلم رَفَعَ يَدَيْهِ حِينَ دَخَلَ فِي الصَّلاَةِ كَبَّرَ - وَصَفَ هَمَّامٌ حِيَالَ أُذُنَيْهِ - ثُمَّ الْتَحَفَ بِثَوْبِهِ ثُمَّ وَضَعَ يَدَهُ الْيُمْنَى عَلَى الْيُسْرَى فَلَمَّا أَرَادَ أَنْ يَرْكَعَ أَخْرَجَ يَدَيْهِ مِنَ الثَّوْبِ ثُمَّ رَفَعَهُمَا ثُمَّ كَبَّرَ فَرَكَعَ فَلَمَّا قَالَ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" رَفَعَ يَدَيْهِ فَلَمَّا سَجَدَ سَجَدَ بَيْنَ كَفَّيْهِ ‏.‏",
      urduText:
          "وائل ب۔ حجر نے بیان کیا:اس نے رسول اللہ صلی اللہ علیہ وسلم کو دیکھا کہ نماز شروع کرتے وقت ہاتھ اٹھاتے اور تکبیر کہتے اور حمام (راوی) کے مطابق ہاتھ کانوں کے مقابل اٹھاتے۔ اس کے بعد آپ صلی اللہ علیہ وسلم نے اپنے دونوں ہاتھ اپنے کپڑے میں لپیٹ لیے اور اپنا دایاں ہاتھ بائیں ہاتھ پر رکھا۔ اور جب رکوع کرنے لگے تو اپنے ہاتھ کپڑے سے نکالے، پھر انہیں اٹھائے، پھر تکبیر کہی اور رکوع کیا، پھر جب (وہ کھڑا ہوا) تو یہ پڑھا: اللہ نے اس کی سن لی۔ جس نے اس کی تعریف کی۔\" اور جب سجدہ کیا تو اپنی دونوں ہتھیلیوں کے درمیان سجدہ کیا۔",
      englishText:
          "Wa'il b. Hujr reported:He saw the Messenger of Allah (ﷺ) raising his hands at the time of beginning the prayer and reciting takbir, and according to Hammam (the narrator), the hands were lifted opposite to the ears. He (the Holy Prophet) then wrapped his hands in his cloth and placed his right hand over his left hand. And when he was about to bow down, he brought out his hands from the cloth, and then lifted them, and then recited takbir and bowed down, and when (he came back to the erect position) he recited:\" Allah listened to him who praised Him.\" And when he prostrated, he prostrated between his two palms.",
      reference: "Sahih Muslim 401"),

  PropheticWayOfPrayerModel(
      id: 65,
      arabicText:
          "حَدَّثَنَا سَعِيدُ بْنُ مَنْصُورٍ، وَقُتَيْبَةُ بْنُ سَعِيدٍ، وَأَبُو كَامِلٍ الْجَحْدَرِيُّ وَمُحَمَّدُ بْنُ عَبْدِ الْمَلِكِ الأُمَوِيُّ - وَاللَّفْظُ لأَبِي كَامِلٍ - قَالُوا حَدَّثَنَا أَبُو عَوَانَةَ عَنْ قَتَادَةَ عَنْ يُونُسَ بْنِ جُبَيْرٍ عَنْ حِطَّانَ بْنِ عَبْدِ اللَّهِ الرَّقَاشِيِّ قَالَ صَلَّيْتُ مَعَ أَبِي مُوسَى الأَشْعَرِيِّ صَلاَةً فَلَمَّا كَانَ عِنْدَ الْقَعْدَةِ قَالَ رَجُلٌ مِنَ الْقَوْمِ أُقِرَّتِ الصَّلاَةُ بِالْبِرِّ وَالزَّكَاةِ - قَالَ - فَلَمَّا قَضَى أَبُو مُوسَى الصَّلاَةَ وَسَلَّمَ انْصَرَفَ فَقَالَ أَيُّكُمُ الْقَائِلُ كَلِمَةَ كَذَا وَكَذَا قَالَ فَأَرَمَّ الْقَوْمُ ثُمَّ قَالَ أَيُّكُمُ الْقَائِلُ كَلِمَةَ كَذَا وَكَذَا فَأَرَمَّ الْقَوْمُ فَقَالَ لَعَلَّكَ يَا حِطَّانُ قُلْتَهَا قَالَ مَا قُلْتُهَا وَلَقَدْ رَهِبْتُ أَنْ تَبْكَعَنِي بِهَا ‏.‏ فَقَالَ رَجُلٌ مِنَ الْقَوْمِ أَنَا قُلْتُهَا وَلَمْ أُرِدْ بِهَا إِلاَّ الْخَيْرَ ‏.‏ فَقَالَ أَبُو مُوسَى أَمَا تَعْلَمُونَ كَيْفَ تَقُولُونَ فِي صَلاَتِكُمْ إِنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم خَطَبَنَا فَبَيَّنَ لَنَا سُنَّتَنَا وَعَلَّمَنَا صَلاَتَنَا فَقَالَ \" إِذَا صَلَّيْتُمْ فَأَقِيمُوا صُفُوفَكُمْ ثُمَّ لْيَؤُمَّكُمْ أَحَدُكُمْ فَإِذَا كَبَّرَ فَكَبِّرُوا وَإِذَا قَالَ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلاَ الضَّالِّينَ فَقُولُوا آمِينَ ‏.‏ يُجِبْكُمُ اللَّهُ فَإِذَا كَبَّرَ وَرَكَعَ فَكَبِّرُوا وَارْكَعُوا فَإِنَّ الإِمَامَ يَرْكَعُ قَبْلَكُمْ وَيَرْفَعُ قَبْلَكُمْ \" فَقَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" فَتِلْكَ بِتِلْكَ وَإِذَا قَالَ سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ ‏.‏ فَقُولُوا اللَّهُمَّ رَبَّنَا لَكَ الْحَمْدُ ‏.‏ يَسْمَعُ اللَّهُ لَكُمْ فَإِنَّ اللَّهَ تَبَارَكَ وَتَعَالَى قَالَ عَلَى لِسَانِ نَبِيِّهِ صلى الله عليه وسلم سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ ‏.‏ وَإِذَا كَبَّرَ وَسَجَدَ فَكَبِّرُوا وَاسْجُدُوا فَإِنَّ الإِمَامَ يَسْجُدُ قَبْلَكُمْ وَيَرْفَعُ قَبْلَكُمْ \" فَقَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" فَتِلْكَ بِتِلْكَ ‏.‏ وَإِذَا كَانَ عِنْدَ الْقَعْدَةِ فَلْيَكُنْ مِنْ أَوَّلِ قَوْلِ أَحَدِكُمُ التَّحِيَّاتُ الطَّيِّبَاتُ الصَّلَوَاتُ لِلَّهِ السَّلاَمُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ السَّلاَمُ عَلَيْنَا وَعَلَى عِبَادِ اللَّهِ الصَّالِحِينَ أَشْهَدُ أَنْ لاَ إِلَهَ إِلاَّ اللَّهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ \"",
      urduText:
          "ہتن بی۔ عبداللہ الرقاشی نے بیان کیا:میں نے ابو موسیٰ اشعری رضی اللہ عنہ کے ساتھ نماز پڑھی اور جب وہ قضا میں تھے تو لوگوں میں سے ایک نے کہا: نماز کو تقویٰ اور زکوٰۃ کے ساتھ فرض کیا گیا ہے۔ راوی نے کہا: جب ابو موسیٰ سلام پھیرنے کے بعد نماز سے فارغ ہوئے تو (لوگوں کی طرف) متوجہ ہوئے اور کہا: تم میں سے فلاں فلاں بات کس نے کہی؟ لوگوں پر ایک خاموشی چھا گئی۔ اس نے پھر کہا: تم میں سے کس نے فلاں فلاں بات کہی ہے؟ لوگوں پر ایک خاموشی چھا گئی۔ اس نے (ابو موسیٰ) نے کہا: حطان، شاید تم نے اسے کہا ہو۔ اس نے (حطان) کہا نہیں، میں نے یہ نہیں کہا۔ مجھے ڈر تھا کہ کہیں آپ اس کی وجہ سے مجھ سے ناراض نہ ہوں۔ لوگوں میں سے ایک شخص نے کہا: میں نے یہ بات کہی تھی اور میں نے اس میں خیر کے سوا کچھ نہیں کیا۔ ابو موسیٰ نے کہا: کیا تم نہیں جانتے کہ تم نے اپنی نماز میں کیا پڑھنا ہے؟ بے شک رسول اللہ صلی اللہ علیہ وسلم نے ہم سے خطاب کیا اور ہمیں اس کے تمام پہلو بتائے اور نماز پڑھنے کا طریقہ سکھایا۔ آپ صلی اللہ علیہ وسلم نے فرمایا: جب تم نماز پڑھو تو اپنی صفیں سیدھی کرو اور تم میں سے کوئی شخص امام ہو۔ جب وہ پڑھے تو تکبیر کہے اور جب وہ یہ پڑھے: نہ ان لوگوں کی جن سے تو ناراض ہے اور نہ گمراہوں کی، آمین کہے۔ اللہ آپ کو جواب دے گا۔ اور جب وہ (امام) تکبیر کہے تو تم بھی تکبیر کہو، کیونکہ امام آپ کے آگے جھکتا ہے اور آپ کے سامنے کھڑا ہوتا ہے۔ پھر رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: ایک دوسرے کے برابر ہے۔ اور جب وہ کہتا ہے: اللہ اس کی سنتا ہے جو اس کی حمد کرتا ہے، تو تم کہو: اے اللہ، ہمارے رب، تیری حمد ہے، کیونکہ اللہ تعالیٰ نے اپنے رسول (صلی اللہ علیہ وآلہ وسلم) کی زبان سے اس کی تصدیق کی ہے۔ کہ اللہ اس کی سنتا ہے جو اس کی تعریف کرتا ہے۔ اور جب وہ (امام) تکبیر کہے اور سجدہ کرے تو تم بھی تکبیر کہو اور سجدہ کرو، کیونکہ امام تم سے پہلے سجدہ کرتا ہے اور تم سے پہلے اٹھتا ہے۔ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: ایک دوسرے کے برابر ہے۔ اور جب وہ (امام) قضا (تشہد کے لیے) بیٹھتا ہے تو تم میں سے ہر ایک کا پہلا کلمہ یہ ہونا چاہیے: تمام خدمات کلمات، عبادات اور تمام نیکیاں اللہ کے لیے ہیں۔ سلام ہو آپ پر یا رسول اللہ کی رحمتیں اور برکات۔ سلام ہو ہم پر اور اللہ کے نیک بندوں پر۔ میں گواہی دیتا ہوں کہ اللہ کے سوا کوئی معبود نہیں اور میں گواہی دیتا ہوں کہ محمد اس کے بندے اور اس کے رسول ہیں۔",
      englishText:
          "Hattan b. `Abdullah al-Raqashi reported:I observed prayer with Abu Musa al-Ash`ari and when he was in the qa`dah, one among the people said: The prayer has been made obligatory along with piety and Zakat. He (the narrator) said: When Abu Musa had finished the prayer after salutation he turned (towards the people) and said: Who amongst you said such and such a thing? A hush fell on the people. He again said: Who amongst you has said such and such a thing? A hush fell on the people. He (Abu Musa) said: Hattan, it is perhaps you that have uttered it. He (Hattan) said No. I have not uttered it. I was afraid that you might be annoyed with me on account of this. A person amongst the people said: It was I who said it, and in this I intended nothing but good. Abu Musa said: Don't you know what you have to recite in your prayers? Verily the Messenger of Allah (ﷺ) addressed us and explained to us all its aspects and taught us how to observe prayer (properly). He (the Holy Prophet) said: When you pray make your rows straight and let anyone amongst you act as your Imam. Recite the takbir when he recites it and when he recites: Not of those with whom Thou art angry, nor of those who go astray, say: Amin. Allah would respond you. And when he (the Imam) recites the takbir, you may also recite the takbir, for the Imam bows before you and raises himself before you. Then the Messenger of Allah (ﷺ) said: The one is equivalent to the other. And when he says: Allah listens to him who praises Him, you should say: O Allah, our Lord, to Thee be the praise, for Allah, the Exalted and Glorious, has vouchsafed (us) through the tongue of His Apostle (ﷺ) that Allah listens to him who praises Him. And when he (the Imam) recites the takbir and prostrates, you should also recite the takbir and prostrate, for the Imam prostrates before you and raises himself before you. The Messenger of Allah (ﷺ) said: The one is equivalent to the other. And when he (the Imam) sits for Qa`da (for tashahhud) the first words of every one amongst you should be: All services rendered by words, acts of worship and all good things are due to Allah. Peace be upon you, O Apostle, and Allah's mercy and blessings. Peace be upon us and upon the upright servants of Allah. I testify that there is no god but Allah, and I testify that Muhammad is His servant and His Messenger.",
      reference: "Sahih Muslim 404 - A"),

  PropheticWayOfPrayerModel(
      id: 66,
      arabicText:
          "حَدَّثَنِي أَبُو الطَّاهِرِ، حَدَّثَنَا ابْنُ وَهْبٍ، عَنْ حَيْوَةَ، أَنَّ أَبَا يُونُسَ، مَوْلَى أَبِي هُرَيْرَةَ حَدَّثَهُ قَالَ سَمِعْتُ أَبَا هُرَيْرَةَ، يَقُولُ عَنْ رَسُولِ اللَّهِ صلى الله عليه وسلم أَنَّهُ قَالَ \" إِنَّمَا جُعِلَ الإِمَامُ لِيُؤْتَمَّ بِهِ فَإِذَا كَبَّرَ فَكَبِّرُوا وَإِذَا رَكَعَ فَارْكَعُوا وَإِذَا قَالَ سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ ‏.‏ فَقُولُوا اللَّهُمَّ رَبَّنَا لَكَ الْحَمْدُ ‏.‏ وَإِذَا صَلَّى قَائِمًا فَصَلُّوا قِيَامًا وَإِذَا صَلَّى قَاعِدًا فَصَلُّوا قُعُودًا أَجْمَعُونَ \"",
      urduText:
          "ابوہریرہ رضی اللہ عنہ بیان کرتے ہیں کہ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا:امام تقلید کے لیے مقرر کیا گیا ہے۔ پس جب وہ پڑھے تو تکبیر کہے، اور جب رکوع کرے تو رکوع کرے اور جب یہ کہے: \" اللہ اس کی سنتا ہے جو اس کی حمد کرتا ہے \" کہو اے اللہ ہمارے رب، تیری حمد ہے۔ اور جب وہ کھڑے ہو کر نماز پڑھے تو تم کھڑے ہو کر نماز پڑھو۔ اور جب وہ بیٹھ کر نماز پڑھے تو تم سب بیٹھ کر پڑھو۔",
      englishText:
          "Abu Huraira reported Allah's Messenger (ﷺ) saying:The Imam is appointed to be followed. So recite takbir when he recites it, and bow down when he bows down and when he utters:\" Allah listens to him who praises Him,\" say\" O Allah, our Lord, for Thee be the praise.\" And when he prays, standing, you should pray standing. And when he prays sitting, all of you should pray sitting.",
      reference: "Sahih Muslim 417"),

  PropheticWayOfPrayerModel(
      id: 67,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ عَبْدِ اللَّهِ بْنِ نُمَيْرٍ، حَدَّثَنَا أَبُو خَالِدٍ، - يَعْنِي الأَحْمَرَ - عَنْ حُسَيْنٍ الْمُعَلِّمِ، ح قَالَ وَحَدَّثَنَا إِسْحَاقُ بْنُ إِبْرَاهِيمَ، - وَاللَّفْظُ لَهُ - قَالَ أَخْبَرَنَا عِيسَى بْنُ يُونُسَ، حَدَّثَنَا حُسَيْنٌ الْمُعَلِّمُ، عَنْ بُدَيْلِ بْنِ مَيْسَرَةَ، عَنْ أَبِي الْجَوْزَاءِ، عَنْ عَائِشَةَ، قَالَتْ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم يَسْتَفْتِحُ الصَّلاَةَ بِالتَّكْبِيرِ وَالْقِرَاءَةَ بِـ ‏{‏ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ‏}‏ وَكَانَ إِذَا رَكَعَ لَمْ يُشْخِصْ رَأْسَهُ وَلَمْ يُصَوِّبْهُ وَلِكَنْ بَيْنَ ذَلِكَ وَكَانَ إِذَا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ لَمْ يَسْجُدْ حَتَّى يَسْتَوِيَ قَائِمًا وَكَانَ إِذَا رَفَعَ رَأْسَهُ مِنَ السَّجْدَةِ لَمْ يَسْجُدْ حَتَّى يَسْتَوِيَ جَالِسًا وَكَانَ يَقُولُ فِي كُلِّ رَكْعَتَيْنِ التَّحِيَّةَ وَكَانَ يَفْرِشُ رِجْلَهُ الْيُسْرَى وَيَنْصِبُ رِجْلَهُ الْيُمْنَى وَكَانَ يَنْهَى عَنْ عُقْبَةِ الشَّيْطَانِ وَيَنْهَى أَنْ يَفْتَرِشَ الرَّجُلُ ذِرَاعَيْهِ افْتِرَاشَ السَّبُعِ وَكَانَ يَخْتِمُ الصَّلاَةَ بِالتَّسْلِيمِ ‏.‏ وَفِي رِوَايَةِ ابْنِ نُمَيْرٍ عَنْ أَبِي خَالِدٍ وَكَانَ يَنْهَى عَنْ عَقِبِ الشَّيْطَانِ ‏.‏",
      urduText:
          "عائشہ رضی اللہ عنہا نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم نماز کا آغاز تکبیر (اللہ اکبر) اور اس کی تلاوت سے کیا کرتے تھے: الحمد للہ رب العالمین۔ جب رکوع کیا تو نہ سر اوپر رکھا اور نہ جھکا بلکہ ان انتہاؤں کے درمیان رکھا۔ جب رکوع کے بعد سر اٹھایا تو اس وقت تک سجدہ نہیں کیا جب تک کھڑا نہ ہو جائے۔ جب سجدہ کے بعد سر اٹھایا تو دوبارہ سجدہ نہ کیا یہاں تک کہ اٹھ بیٹھیں۔ ہر دو رکعت کے آخر میں تحیۃ پڑھی۔ اور اپنا بایاں پاؤں چپٹا (زمین پر) رکھتا تھا اور دائیں کو اوپر اٹھاتا تھا۔ اس نے شیطان کے ایڑیوں پر بیٹھنے کے طریقے سے منع کیا، اور لوگوں کو جنگلی درندے کی طرح بازو پھیلانے سے منع کیا۔ اور تسلیم کے ساتھ نماز ختم کرتے تھے۔",
      englishText:
          "'A'isha reported:The Messenger of Allah (ﷺ) used to begin prayer with takbir (saying Allahu Akbar) and the recitation: \"Praise be to Allah, the Lord of the Universe.\" When he bowed he neither kept his head up nor bent it down, but kept it between these extremes; when he raised his head after bowing he did not prostrate himself till he had stood erect; when he raised his head after prostration he did not prostrate himself again till he sat up. At the end of every two rak'ahs he recited the tahiyya; and he used to place his left foot flat (on the ground) and raise up the right; he prohibited the devil's way of sitting on the heels, and he forbade people to spread out their arms like a wild beast. And he used to finish the prayer with the taslim.",
      reference: "Sahih Muslim 498"),

///////////////////////////////////////////////////////  Bukhari //////////////////////////////////////////////////////////

///////////////////////////////////////////////////////  Ibn Majah //////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 79,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ بَشَّارٍ، حَدَّثَنَا أَبُو عَاصِمٍ، حَدَّثَنَا عَبْدُ الْحَمِيدِ بْنُ جَعْفَرٍ، حَدَّثَنَا مُحَمَّدُ بْنُ عَمْرِو بْنِ عَطَاءٍ، قَالَ سَمِعْتُ أَبَا حُمَيْدٍ السَّاعِدِيَّ، فِي عَشْرَةٍ مِنْ أَصْحَابِ رَسُولِ اللَّهِ ـ صلى الله عليه وسلم ـ فِيهِمْ أَبُو قَتَادَةَ فَقَالَ أَبُو حُمَيْدٍ أَنَا أَعْلَمُكُمْ بِصَلاَةِ رَسُولِ اللَّهِ ـ صلى الله عليه وسلم ـ ‏.‏ قَالُوا لِمَ فَوَاللَّهِ مَا كُنْتَ بِأَكْثَرِنَا لَهُ تَبَعَةً وَلاَ أَقْدَمَنَا لَهُ صُحْبَةً ‏.‏ قَالَ بَلَى ‏.‏ قَالُوا فَاعْرِضْ ‏.‏ قَالَ كَانَ رَسُولُ اللَّهِ ـ صلى الله عليه وسلم ـ إِذَا قَامَ إِلَى الصَّلاَةِ كَبَّرَ ثُمَّ رَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ وَيَقِرَّ كُلُّ عُضْوٍ مِنْهُ فِي مَوْضِعِهِ ثُمَّ يَقْرَأُ ثُمَّ يُكَبِّرُ وَيَرْفَعُ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ ثُمَّ يَرْكَعُ وَيَضَعُ رَاحَتَيْهِ عَلَى رُكْبَتَيْهِ مُعْتَمِدًا لاَ يَصُبُّ رَأْسَهُ وَلاَ يُقْنِعُ مُعْتَدِلاً ثُمَّ يَقُولُ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" وَيَرْفَعُ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ حَتَّى يَقِرَّ كُلُّ عَظْمٍ إِلَى مَوْضِعِهِ ثُمَّ يَهْوِي إِلَى الأَرْضِ وَيُجَافِي يَدَيْهِ عَنْ جَنْبَيْهِ ثُمَّ يَرْفَعُ رَأْسَهُ وَيَثْنِي رِجْلَهُ الْيُسْرَى فَيَقْعُدُ عَلَيْهَا وَيَفْتَخُ أَصَابِعَ رِجْلَيْهِ إِذَا سَجَدَ ثُمَّ يَسْجُدُ ثُمَّ يُكَبِّرُ وَيَجْلِسُ عَلَى رِجْلِهِ الْيُسْرَى حَتَّى يَرْجِعَ كُلُّ عَظْمٍ مِنْهُ إِلَى مَوْضِعِهِ ثُمَّ يَقُومُ فَيَصْنَعُ فِي الرَّكْعَةِ الأُخْرَى مِثْلَ ذَلِكَ ثُمَّ إِذَا قَامَ مِنَ الرَّكْعَتَيْنِ رَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ كَمَا صَنَعَ عِنْدَ افْتِتَاحِ الصَّلاَةِ ثُمَّ يُصَلِّي بَقِيَّةَ صَلاَتِهِ هَكَذَا حَتَّى إِذَا كَانَتِ السَّجْدَةُ الَّتِي يَنْقَضِي فِيهَا التَّسْلِيمُ أَخَّرَ إِحْدَى رِجْلَيْهِ وَجَلَسَ عَلَى شِقِّهِ الأَيْسَرِ مُتَوَرِّكًا ‏.‏ قَالُوا صَدَقْتَ هَكَذَا كَانَ يُصَلِّي رَسُولُ اللَّهِ ـ صلى الله عليه وسلم ـ ‏.‏",
      urduText:
          "محمد بن عمرو بن عطاء نے کہا:جب کہ وہ رسول اللہ صلی اللہ علیہ وسلم کے دس صحابہ میں سے تھے جن میں ابو قتادہ بھی شامل تھے: میں نے ابو حمید السعدی رضی اللہ عنہ کو کہتے سنا: میں تم میں سے رسول اللہ صلی اللہ علیہ وسلم کی نماز کے بارے میں سب سے زیادہ جانتا ہوں۔ انہوں نے کہا: کیوں؟ خدا کی قسم تم نے ہم سے زیادہ اس کی پیروی نہیں کی اور زیادہ دیر تک اس کے ساتھ نہیں رہے، اس نے کہا: ہاں میں ہوں، انہوں نے کہا: ہمیں دکھاؤ، انہوں نے کہا: جب رسول اللہ آپ صلی اللہ علیہ وسلم نماز کے لیے کھڑے ہوئے، آپ صلی اللہ علیہ وسلم تکبیر کہتے، پھر اپنے دونوں ہاتھ اپنے کندھوں کے متوازی اٹھاتے، آپ کے جسم کا ہر حصہ اپنی جگہ جم جاتا۔ پھر تلاوت کرتے، پھر اپنے دونوں ہاتھ اپنے کندھوں اور رکوع کے متوازی اٹھاتے، اپنی ہتھیلیاں گھٹنوں پر رکھتے اور ان پر اپنا وزن رکھتے۔ اس نے نہ اپنا سر نیچے کیا اور نہ ہی اسے اوپر اٹھایا، یہ یکساں طور پر متوازن تھا (کسی بھی انتہا کے درمیان)۔ پھر وہ کہے گا: \"سمیع اللہ لمن حمیدہ (اللہ ان کی سنتا ہے جو اس کی تعریف کرتے ہیں)؛ اور وہ اپنے ہاتھوں کو اپنے کندھوں کے ساتھ متوازی اٹھاتا، یہاں تک کہ ہر ہڈی اپنی جگہ پر واپس آجاتی۔ پھر اپنے بازوؤں کو اطراف سے دور رکھتے ہوئے زمین پر سجدہ کرتے۔ پھر اپنا سر اٹھاتے اور اپنا بایاں پاؤں اپنے نیچے رکھ کر اس پر بیٹھتے اور جب سجدہ کرتے تو انگلیوں کو پھیلاتے پھر سجدہ کرتے، پھر تکبیر کہتے اور بائیں پاؤں پر بیٹھتے، یہاں تک کہ ہر ہڈی واپس لوٹ جاتی۔ اس کی جگہ. پھر کھڑے ہو جاتے اور اگلی رکعت میں ایسا ہی کرتے۔ پھر جب دو رکعتوں کے بعد کھڑے ہوتے تو اپنے ہاتھوں کو اپنے کندھوں کے ساتھ برابر کرتے جیسا کہ نماز کے شروع میں کرتے تھے۔ پھر اپنی بقیہ نماز اسی طرح پڑھتے، یہاں تک کہ جب سجدہ کرتے جس کے بعد تسلیم آتا تو اپنا ایک پاؤں پیچھے کی طرف دھکیلتے اور اپنا وزن اپنی بائیں جانب متوارثین پر رکھ کر بیٹھ جاتے۔ تم نے سچ کہا۔ رسول اللہ صلی اللہ علیہ وسلم اس طرح نماز پڑھا کرتے تھے۔*یعنی وہ ان کو اس طرح لگائے گا کہ وہ قبلہ کی طرف ہوں گے۔** متوارثین: یعنی بائیں پاؤں کو آگے لا کر بیٹھنا تاکہ اس کے کولہوں کا براہ راست زمین سے رابطہ ہو۔",
      englishText:
          "Muhammad bin ‘Amr bin ‘Ata’ said:‘While he was among ten of the Companions of the Messenger of Allah (ﷺ) including Abu Qatadah: “I heard Abu Humaid As-Sa’idi say: ‘I am the most knowledgeable of you concerning the prayer of the Messenger of Allah (ﷺ).’ They said: ‘Why? By Allah, you did not follow him more than we did, and you did not accompany him for longer.’ He said: ‘Yes I am.’ They said: ‘Show us.’ He said: ‘When the Messenger of Allah (ﷺ) stood up for prayer, he would say the Takbir, then he would raise his hands parallel to his shoulders, and every part of his body would settle in place. Then he would recite, then he would raise his hands parallel to his shoulders and bow, placing his palms on his knees and supporting his weight on them. He neither lowered his head nor raised it up, it was evenly balanced (between either extreme). Then he would say: “Sami’ Allahu liman hamidah (Allah hears those who praise Him); and he would raise his hands parallel with his shoulders, until every bone returned to its place. Then he would prostrate himself on the ground, keeping his arms away from his sides. Then he would raise his head and tuck his left foot under him and sit on it, and he would spread his toes when he prostrated.* Then he would prostrate, then say the Takbir and sit on his left foot, until every bone returned to its place. Then he would stand up and do the same in the next Rak’ah. Then when he stood up after two Rak’ah, he would raise his hands level with his shoulders as he did at the beginning of the prayer. Then he would offer the rest of his prayer in like manner until, when he did the prostration after which the Taslim comes, he would push one of his feet back and sit with his weight on his left side, Mutawarrikan.’** They said: ‘You have spoken the truth; this is how the Messenger of Allah (ﷺ) used to perform the prayer.’”* Meaning that he would plant them in such a way that they were facing the Qiblah.** Mutawarrikan: i.e., sitting with the left foot brought forward so that one's buttocks are in direct contact with the ground.",
      reference: "Sunan Ibn Majah 1061"),

///////////////////////////////////////////////////////  Abu Dawood //////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا عُبَيْدُ اللَّهِ بْنُ عُمَرَ بْنِ مَيْسَرَةَ الْجُشَمِيُّ، حَدَّثَنَا عَبْدُ الْوَارِثِ بْنُ سَعِيدٍ، قَالَ حَدَّثَنَا مُحَمَّدُ بْنُ جُحَادَةَ، حَدَّثَنِي عَبْدُ الْجَبَّارِ بْنُ وَائِلِ بْنِ حُجْرٍ، قَالَ كُنْتُ غُلاَمًا لاَ أَعْقِلُ صَلاَةَ أَبِي قَالَ فَحَدَّثَنِي وَائِلُ بْنُ عَلْقَمَةَ عَنْ أَبِي وَائِلِ بْنِ حُجْرٍ قَالَ صَلَّيْتُ مَعَ رَسُولِ اللَّهِ صلى الله عليه وسلم فَكَانَ إِذَا كَبَّرَ رَفَعَ يَدَيْهِ - قَالَ - ثُمَّ الْتَحَفَ ثُمَّ أَخَذَ شِمَالَهُ بِيَمِينِهِ وَأَدْخَلَ يَدَيْهِ فِي ثَوْبِهِ قَالَ فَإِذَا أَرَادَ أَنْ يَرْكَعَ أَخْرَجَ يَدَيْهِ ثُمَّ رَفَعَهُمَا وَإِذَا أَرَادَ أَنْ يَرْفَعَ رَأْسَهُ مِنَ الرُّكُوعِ رَفَعَ يَدَيْهِ ثُمَّ سَجَدَ وَوَضَعَ وَجْهَهُ بَيْنَ كَفَّيْهِ وَإِذَا رَفَعَ رَأْسَهُ مِنَ السُّجُودِ أَيْضًا رَفَعَ يَدَيْهِ حَتَّى فَرَغَ مِنْ صَلاَتِهِ ‏.‏ قَالَ مُحَمَّدٌ فَذَكَرْتُ ذَلِكَ لِلْحَسَنِ بْنِ أَبِي الْحَسَنِ فَقَالَ هِيَ صَلاَةُ رَسُولِ اللَّهِ صلى الله عليه وسلم فَعَلَهُ مَنْ فَعَلَهُ وَتَرَكَهُ مَنْ تَرَكَهُ ‏.‏ قَالَ أَبُو دَاوُدَ رَوَى هَذَا الْحَدِيثَ هَمَّامٌ عَنِ ابْنِ جُحَادَةَ لَمْ يَذْكُرِ الرَّفْعَ مَعَ الرَّفْعِ مِنَ السُّجُودِ ‏.‏",
      urduText:
          "عبد الجبار ب۔ وائل (ب۔ حجر) نے کہا:میں چھوٹا لڑکا تھا اور مجھے اپنے والد کی دعا سمجھ نہیں آتی تھی۔ تو وائل ب۔ علقمہ نے وائل بن کو رپورٹ کیا۔ حجر کہتے ہیں کہ میں نے رسول اللہ صلی اللہ علیہ وسلم کے ساتھ نماز پڑھی۔ آپ جب تکبیر کہتے تھے تو اپنے ہاتھ اٹھاتے تھے، پھر اپنی چادر کو اپنے گرد کھینچتے تھے، پھر اپنا دایاں ہاتھ اپنے بائیں طرف رکھتے تھے، اور اپنے ہاتھ اپنے کپڑے میں داخل کرتے تھے۔ جب وہ رکوع کرنے والا تھا تو اس نے اپنے ہاتھ اپنے کپڑوں سے نکالے اور پھر اٹھائے۔ اور جب رکوع کے بعد سر اٹھایا تو دونوں ہاتھ اٹھائے۔ پھر آپ صلی اللہ علیہ وسلم نے سجدہ کیا اور اپنا چہرہ ( پیشانی) اپنے ہاتھوں کے درمیان رکھا۔ اور جب سجدہ کے بعد سر اٹھایا تو اپنے ہاتھ بھی اٹھائے یہاں تک کہ نماز سے فارغ ہو گئے۔ محمد (ایک راوی) نے کہا: میں نے اس کا ذکر حسن بن عبداللہ سے کیا۔ ابوالحسن کہتے ہیں کہ رسول اللہ صلی اللہ علیہ وسلم نے اس طرح نماز پڑھی تھی۔ کچھ نے کیا اور دوسروں نے اسے چھوڑ دیا۔ابوداؤد کہتے ہیں: اس روایت کو ہمام نے ابن جوہدہ سے روایت کیا ہے، لیکن انہوں نے سجدے کے آخر میں سر اٹھانے کے بعد ہاتھ اٹھانے کا ذکر نہیں کیا۔",
      englishText:
          "‘Abd al-Jabbar b. Wa’il (b.Hujr) said:I was a small boy and I did not understand the prayer of my father. So Wa’Il b. ‘Alqamah reported Wa’il b. Hujr as saying: I offered prayer along with the Messenger of Allah (ﷺ). He used to raise his hands when he pronounced the takbir (Allah is most great), then pulled his garment around him, then placed his right hand on his left, and entered his hands in his garment. When he was about to bow he took his hands out of his garment, and then raised them. And when he raised his head after bowing, he raised his hands. He then prostrated himself and placed his face (forehead on the ground) between his hands. And when he raised his head after prostration, he also raised his hands until he finished his prayer. Muhammad (a narrator) said: I mentioned it to al-Hasan b. Abu al-Hasan who said: This is how the Messenger of Allah(ﷺ) offered prayer; some did it and others abandoned it.Abu Dawud said: This tradition has been narrated by Hammam from ibn Juhadah, but he did not mention the raising of hands after he raised his head at the end of the prostration.",
      reference: " Sunan Abi Dawud 723"),

  PropheticWayOfPrayerModel(
      id: 56,
      arabicText:
          "حَدَّثَنَا مُسَدَّدٌ، حَدَّثَنَا بِشْرُ بْنُ الْمُفَضَّلِ، عَنْ عَاصِمِ بْنِ كُلَيْبٍ، عَنْ أَبِيهِ، عَنْ وَائِلِ بْنِ حُجْرٍ، قَالَ قُلْتُ لأَنْظُرَنَّ إِلَى صَلاَةِ رَسُولِ اللَّهِ صلى الله عليه وسلم كَيْفَ يُصَلِّي قَالَ فَقَامَ رَسُولُ اللَّهِ صلى الله عليه وسلم فَاسْتَقْبَلَ الْقِبْلَةَ فَكَبَّرَ فَرَفَعَ يَدَيْهِ حَتَّى حَاذَتَا أُذُنَيْهِ ثُمَّ أَخَذَ شِمَالَهُ بِيَمِينِهِ فَلَمَّا أَرَادَ أَنْ يَرْكَعَ رَفَعَهُمَا مِثْلَ ذَلِكَ ثُمَّ وَضَعَ يَدَيْهِ عَلَى رُكْبَتَيْهِ فَلَمَّا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ رَفَعَهُمَا مِثْلَ ذَلِكَ فَلَمَّا سَجَدَ وَضَعَ رَأْسَهُ بِذَلِكَ الْمَنْزِلِ مِنْ بَيْنِ يَدَيْهِ ثُمَّ جَلَسَ فَافْتَرَشَ رِجْلَهُ الْيُسْرَى وَوَضَعَ يَدَهُ الْيُسْرَى عَلَى فَخِذِهِ الْيُسْرَى وَحَدَّ مِرْفَقَهُ الأَيْمَنَ عَلَى فَخِذِهِ الْيُمْنَى وَقَبَضَ ثِنْتَيْنِ وَحَلَّقَ حَلْقَةً وَرَأَيْتُهُ يَقُولُ هَكَذَا ‏.‏ وَحَلَّقَ بِشْرٌ الإِبْهَامَ وَالْوُسْطَى وَأَشَارَ بِالسَّبَّابَةِ ‏.‏",
      urduText:
          "وائل بن حجر کہتے ہیں:میں نے جان بوجھ کر رسول اللہ (صلی اللہ علیہ وآلہ وسلم) کی نماز کو دیکھا اور یہ کہ آپ نے کیسے پڑھی تھی۔ رسول اللہ صلی اللہ علیہ وسلم کھڑے ہوئے، قبلہ کی طرف منہ کر کے تکبیر کہی (اللہ سب سے بڑا ہے)، پھر اپنے دونوں ہاتھ اپنے کانوں کے سامنے اٹھائے، پھر دائیں ہاتھ کو بائیں طرف رکھا (ایک دوسرے کو پکڑتے ہوئے)۔ .جب آپ صلی اللہ علیہ وسلم رکوع کرنے والے تھے تو آپ صلی اللہ علیہ وسلم نے انہیں اسی طرح اٹھایا۔ پھر اس نے اپنے گھٹنوں پر ہاتھ رکھا۔ رکوع کے بعد جب سر اٹھایا تو ان کو اسی طرح اٹھایا۔ جب سجدہ کیا تو اپنی پیشانی دونوں ہاتھوں کے درمیان رکھ دی۔پھر وہ بیٹھ گیا اور اپنا بایاں پاؤں پھیلایا اور اپنا بایاں ہاتھ اپنی بائیں ران پر رکھا اور اپنی دائیں کہنی کو دائیں ران سے الگ رکھا۔ اس نے اپنی دونوں انگلیاں بند کیں اور (انگلیوں سے) ایک دائرہ بنایا۔میں نے (عاصم بن کلیب) نے انہیں (بشر ابن المفضل) کو اس طرح کہتے دیکھا۔ بشر نے انگوٹھے اور درمیانی انگلی سے دائرہ بنایا اور شہادت کی انگلی سے اشارہ کیا۔",
      englishText:
          "Narrated Wa'il ibn Hujr:I purposely looked at the prayer of the Messenger of Allah (ﷺ), and how he offered it. The Messenger of Allah (ﷺ) stood up, faced the direction of the qiblah and uttered the takbir (Allah is most great) and then raised his hands in front of his ears, then placed his right hand on his left (catching each other).When he was about to bow, he raised them in the same manner. He then placed his hands on his knees. When he raised his head after bowing, he raised them in the like manner. When he prostrated himself he placed his forehead between his hands.He then sat down and spread his left foot and placed his left hand on his left thigh, and kept his right elbow aloof from his right thigh. He closed his two fingers and made a circle (with the fingers).I (Asim ibn Kulayb) saw him (Bishr ibn al-Mufaddal) say in this manner. Bishr made the circle with the thumb and the middle finger and pointed with the forefinger.",
      reference: "Sunan Abi Dawud 726"),

  PropheticWayOfPrayerModel(
      id: 57,
      arabicText:
          "حَدَّثَنَا الْحَسَنُ بْنُ عَلِيٍّ، حَدَّثَنَا أَبُو الْوَلِيدِ، حَدَّثَنَا زَائِدَةُ، عَنْ عَاصِمِ بْنِ كُلَيْبٍ، بِإِسْنَادِهِ وَمَعْنَاهُ قَالَ فِيهِ ثُمَّ وَضَعَ يَدَهُ الْيُمْنَى عَلَى ظَهْرِ كَفِّهِ الْيُسْرَى وَالرُّسْغِ وَالسَّاعِدِ وَقَالَ فِيهِ ثُمَّ جِئْتُ بَعْدَ ذَلِكَ فِي زَمَانٍ فِيهِ بَرْدٌ شَدِيدٌ فَرَأَيْتُ النَّاسَ عَلَيْهِمْ جُلُّ الثِّيَابِ تَحَرَّكُ أَيْدِيهِمْ تَحْتَ الثِّيَابِ ‏.‏",
      urduText:
          "مندرجہ بالا روایت کو عاصم بن نے روایت کیا ہے۔ کلیب راویوں کے مختلف سلسلے کے ذریعے اور اسی اثر سے۔ اس ورژن میں ہے:\"پھر اس نے اپنا دایاں ہاتھ اپنی بائیں ہتھیلی کی پشت پر اور اپنی کلائی اور بازو پر رکھا۔\" اس میں یہ بھی شامل ہے: \"میں اس کے بعد ایک ایسے موسم میں واپس آیا جب سخت سردی تھی۔ میں نے دیکھا کہ لوگ بھاری کپڑے پہنے ہوئے کپڑوں کے نیچے ہاتھ پھیرتے ہیں (یعنی رکوع سے پہلے اور بعد میں ہاتھ اٹھاتے ہیں)۔",
      englishText:
          "The above tradition has been transmitted by ‘Asim b. Kulaib through a different chain of narrators and to the same effect. This version has:“He then placed his right hand on the back of his left palm and his wrist and forearm.” This also adds: “I then came back afterward in a season when it was severe cold. I saw the people putting on heavy clothes moving their hands under the clothes (i.e. raised their hands before and after bowing).”",
      reference: " Sunan Abi Dawud 727"),
  PropheticWayOfPrayerModel(
      id: 58,
      arabicText:
          "حَدَّثَنَا أَحْمَدُ بْنُ حَنْبَلٍ، حَدَّثَنَا أَبُو عَاصِمٍ الضَّحَّاكُ بْنُ مَخْلَدٍ، ح وَحَدَّثَنَا مُسَدَّدٌ، حَدَّثَنَا يَحْيَى، - وَهَذَا حَدِيثُ أَحْمَدَ قَالَ - أَخْبَرَنَا عَبْدُ الْحَمِيدِ، - يَعْنِي ابْنَ جَعْفَرٍ - أَخْبَرَنِي مُحَمَّدُ بْنُ عَمْرِو بْنِ عَطَاءٍ، قَالَ سَمِعْتُ أَبَا حُمَيْدٍ السَّاعِدِيَّ، فِي عَشْرَةٍ مِنْ أَصْحَابِ رَسُولِ اللَّهِ صلى الله عليه وسلم مِنْهُمْ أَبُو قَتَادَةَ قَالَ أَبُو حُمَيْدٍ أَنَا أَعْلَمُكُمْ بِصَلاَةِ رَسُولِ اللَّهِ صلى الله عليه وسلم ‏.‏ قَالُوا فَلِمَ فَوَاللَّهِ مَا كُنْتَ بِأَكْثَرِنَا لَهُ تَبَعًا وَلاَ أَقْدَمَنَا لَهُ صُحْبَةً ‏.‏ قَالَ بَلَى ‏.‏ قَالُوا فَاعْرِضْ ‏.‏ قَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ إِلَى الصَّلاَةِ يَرْفَعُ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ ثُمَّ يُكَبِّرُ حَتَّى يَقِرَّ كُلُّ عَظْمٍ فِي مَوْضِعِهِ مُعْتَدِلاً ثُمَّ يَقْرَأُ ثُمَّ يُكَبِّرُ فَيَرْفَعُ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ ثُمَّ يَرْكَعُ وَيَضَعُ رَاحَتَيْهِ عَلَى رُكْبَتَيْهِ ثُمَّ يَعْتَدِلُ فَلاَ يَصُبُّ رَأْسَهُ وَلاَ يُقْنِعُ ثُمَّ يَرْفَعُ رَأْسَهُ فَيَقُولُ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" ثُمَّ يَرْفَعُ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ مُعْتَدِلاً ثُمَّ يَقُولُ \" اللَّهُ أَكْبَرُ \" ثُمَّ يَهْوِي إِلَى الأَرْضِ فَيُجَافِي يَدَيْهِ عَنْ جَنْبَيْهِ ثُمَّ يَرْفَعُ رَأْسَهُ وَيَثْنِي رِجْلَهُ الْيُسْرَى فَيَقْعُدُ عَلَيْهَا وَيَفْتَحُ أَصَابِعَ رِجْلَيْهِ إِذَا سَجَدَ وَيَسْجُدُ ثُمَّ يَقُولُ \" اللَّهُ أَكْبَرُ \" وَيَرْفَعُ رَأْسَهُ وَيَثْنِي رِجْلَهُ الْيُسْرَى فَيَقْعُدُ عَلَيْهَا حَتَّى يَرْجِعَ كُلُّ عَظْمٍ إِلَى مَوْضِعِهِ ثُمَّ يَصْنَعُ فِي الأُخْرَى مِثْلَ ذَلِكَ ثُمَّ إِذَا قَامَ مِنَ الرَّكْعَتَيْنِ كَبَّرَ وَرَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ كَمَا كَبَّرَ عِنْدَ افْتِتَاحِ الصَّلاَةِ ثُمَّ يَصْنَعُ ذَلِكَ فِي بَقِيَّةِ صَلاَتِهِ حَتَّى إِذَا كَانَتِ السَّجْدَةُ الَّتِي فِيهَا التَّسْلِيمُ أَخَّرَ رِجْلَهُ الْيُسْرَى وَقَعَدَ مُتَوَرِّكًا عَلَى شِقِّهِ الأَيْسَرِ ‏.‏ قَالُوا صَدَقْتَ هَكَذَا كَانَ يُصَلِّي صلى الله عليه وسلم ‏.‏",
      urduText:
          "ابو حمید السعدی نے ایک دفعہ رسول اللہ صلی اللہ علیہ وسلم کے دس صحابہ سے کہا؛ ابو قتادہ ان میں سے تھے:میں تم میں سے ہوں جو رسول اللہ صلی اللہ علیہ وسلم کے نماز کے طریقہ سے زیادہ باخبر ہوں۔ انہوں نے کہا: خدا کی قسم تم نے ہم سے زیادہ اس کی پیروی کیوں نہیں کی اور نہ ہی ہم سے زیادہ اس کی صحبت میں رہے؟ اس نے کہا: ہاں۔ انہوں نے کہا: پھر بیان کرو (نبی صلی اللہ علیہ وسلم نے کس طرح نماز پڑھی)۔ انہوں نے کہا: جب رسول اللہ صلی اللہ علیہ وسلم نماز کے لیے کھڑے ہوئے تو اپنے دونوں ہاتھ اٹھائے تاکہ انہیں اپنے کندھوں کے مقابل لے آئیں، اور تکبیر کہی، یہاں تک کہ ہر ہڈی اپنی جگہ پر ٹھیک ہو گئی۔ پھر تلاوت کی (قرآن کی کچھ آیات)؛ پھر اس نے تکبیر کہی (اللہ سب سے بڑا ہے)، اپنے ہاتھ اٹھائے تاکہ انہیں اپنے کندھوں کے مقابل لے آئے۔ پھر اس نے سجدہ کیا۔ اپنے ہاتھوں کی ہتھیلیوں کو اپنے گھٹنوں پر رکھنا اور خود کو سیدھا رکھنا، نہ سر اٹھانا اور نہ نیچے کرنا؛ پھر سر اٹھا کر کہا: \" اللہ اس کی سنتا ہے جو اس کی تعریف کرتا ہے \"۔ پھر اپنے ہاتھ اٹھائے تاکہ انہیں اپنے کندھوں کے بالکل مخالف لے آئے۔ پھر کہا: \"اللہ سب سے بڑا ہے\"؛ پھر اپنے بازوؤں کو اطراف سے دور رکھتے ہوئے (سجدہ میں) اپنے آپ کو زمین پر جھکا لیا۔ پھر اپنا سر اٹھایا، بایاں پاؤں جھکا اور اس پر بیٹھ گئے، اور سجدہ کرتے وقت پاؤں کی انگلیوں کو کھول دیا، پھر فرمایا: \"اللہ سب سے بڑا ہے\"۔ پھر اپنا سر اٹھایا، اپنا بایاں پاؤں جھکا اور اس پر بیٹھ گیا تاکہ ہر ہڈی اپنی جگہ پر واپس آجائے۔ پھر دوسری (رکعت) میں بھی ایسا ہی کیا۔ دو رکعتوں کے آخر میں آپ صلی اللہ علیہ وسلم کھڑے ہوئے اور تکبیر کہی۔ پھر رکوع کیا، اپنے ہاتھوں کی ہتھیلیوں کو اپنے گھٹنوں پر رکھا اور اپنے آپ کو سیدھا رکھا، نہ اپنا سر اٹھایا اور نہ نیچے کیا: پھر اپنا سر اٹھایا: \"  اللہ اس کی سنتا ہے جو اس کی تعریف کرتا ہے \"؛ پھر اپنے ہاتھ اٹھائے تاکہ انہیں اپنے کندھوں کے بالکل مخالف لے آئے۔ پھر کہا: \"  اللہ سب سے بڑا ہے \"؛ پھر اپنے بازوؤں کو اطراف سے دور رکھتے ہوئے (سجدہ میں) اپنے آپ کو زمین پر جھکا لیا۔ پھر اپنا سر اٹھایا، اپنا بایاں پاؤں جھکا اور اس پر بیٹھ گیا، اور جب سجدہ کیا تو پاؤں کی انگلیاں کھول دیں۔ پھر سجدہ کیا۔ پھر کہا: \"  اللہ سب سے بڑا ہے \"؛ پھر اپنا سر اٹھایا، اپنا بایاں پاؤں جھکا اور اس پر بیٹھ گیا تاکہ ہر ہڈی اپنی جگہ پر واپس آجائے۔ پھر دوسری (رکعت) میں بھی ایسا ہی کیا۔ دو رکعتوں کے آخر میں آپ صلی اللہ علیہ وسلم کھڑے ہوئے اور تکبیر کہی (اللہ سب سے بڑا ہے)، اپنے ہاتھ اٹھائے تاکہ انہیں اپنے کندھوں کے مقابل لے آئے جس طرح آپ صلی اللہ علیہ وسلم نے تکبیر (اللہ سب سے بڑا ہے) کہا تھا۔ نماز کا آغاز؛ پھر اس نے اپنی باقی نماز میں ایسا کیا۔ اور سجدہ کے بعد سلام پھیرنے کے بعد بایاں پاؤں نکال کر بائیں کولہے پر بیٹھ گئے۔ کہنے لگے: تم نے سچ کہا۔ آپ صلی اللہ علیہ وسلم اس طرح نماز پڑھتے تھے۔",
      englishText:
          "Abu Humaid al-Sa’idi once told a company of ten of the companions of the Messenger of Allah (ﷺ) ; Abu Qatadah was one of them:I am one among you who is more informed of the way the Messenger of Allah (ﷺ) prayed. They said: Why, By Allah, you did not follow him more than us, nor did you remain in his company longer than us? He said: Yes. They said: Then describe (how the Prophet prayed). He said: When the Messenger of Allah (ﷺ) stood up to pray, he raised his hands so as to bring them opposite his shoulders, and uttered the takbir (Allah is the most great), until every bone rested in its place properly: then re recited (some verses from the Quran); then he uttered the takbir (Allah is most great), raising his hands so as to bring them opposite his shoulders; then he bowed; placing the palms of his hands on his knees and keeping himself straight, neither raising nor lowering his head; then raised his head saying: “Allah listens to him who praise Him”; then raised his hands so as to bring them exactly opposite to his shoulders; then uttered: “Allah is most great”; then lowered himself to the ground (in prostration), keeping his arms away from his sides; then raised his head, bent his left foot and sat on it, and opened the toes when he prostrated: then he uttered: “Allah is most great”; then raised his head, bent his left foot and sat on it so that every bone returned to its place properly; then he did the same in the second (rak’ah). At the end of the two Rak’ahs he stood up and uttered the takbir (Allah is most great), raising his hands so as to bring them opposite to his shoulders; then he bowed, placing the palms of his hands on his knees and keeping himself straight, neither raising or lowering his head: then raised his head saying: “Allah listens to him who praises Him”; then raised his hands so as to bring them exactly opposite his shoulders; then uttered: “Allah is most great”; then lowered himself to the ground (in prostration), keeping his arms away from his sides; then raised his head, bent his left foot and sat on it, and opened the toes when he prostrated himself; then he prostrated; then uttered: “Allah is most great”; then raised his head, bent his left foot and sat on it so that every bone returned to its place properly; then he did the same in the second (rak’ah). At the end of two rak’ahs he stood up and uttered the takbir (Allah is most great), raising his hands so as to bring them opposite to his shoulders in the way he had uttered the Takbir (Allah is most great) at the beginning of the prayer; then he did that in the remainder of his prayer; and after prostration which if followed by the taslim (salutation) he out his left foot and sat on his left hip. They said: You have spoken the truth. This is how he(peace be upon him) used to pray.",
      reference: " Sunan Abi Dawud 730"),

  PropheticWayOfPrayerModel(
      id: 59,
      arabicText:
          "حَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ، حَدَّثَنَا ابْنُ لَهِيعَةَ، عَنْ يَزِيدَ، - يَعْنِي ابْنَ أَبِي حَبِيبٍ - عَنْ مُحَمَّدِ بْنِ عَمْرِو بْنِ حَلْحَلَةَ، عَنْ مُحَمَّدِ بْنِ عَمْرٍو الْعَامِرِيِّ، قَالَ كُنْتُ فِي مَجْلِسٍ مِنْ أَصْحَابِ رَسُولِ اللَّهِ صلى الله عليه وسلم فَتَذَاكَرُوا صَلاَةَ رَسُولِ اللَّهِ صلى الله عليه وسلم فَقَالَ أَبُو حُمَيْدٍ فَذَكَرَ بَعْضَ هَذَا الْحَدِيثِ وَقَالَ فَإِذَا رَكَعَ أَمْكَنَ كَفَّيْهِ مِنْ رُكْبَتَيْهِ وَفَرَّجَ بَيْنَ أَصَابِعِهِ ثُمَّ هَصَرَ ظَهْرَهُ غَيْرَ مُقْنِعٍ رَأْسَهُ وَلاَ صَافِحٍ بِخَدِّهِ وَقَالَ فَإِذَا قَعَدَ فِي الرَّكْعَتَيْنِ قَعَدَ عَلَى بَطْنِ قَدَمِهِ الْيُسْرَى وَنَصَبَ الْيُمْنَى فَإِذَا كَانَ فِي الرَّابِعَةِ أَفْضَى بِوَرِكِهِ الْيُسْرَى إِلَى الأَرْضِ وَأَخْرَجَ قَدَمَيْهِ مِنْ نَاحِيَةٍ وَاحِدَةٍ ‏.‏",
      urduText:
          "عمرو العمیری نے کہا:میں (ایک دفعہ) رسول اللہ صلی اللہ علیہ وسلم کے اصحاب کی مجلس میں گیا تھا۔ وہ اس کی نماز پر بحث کرنے لگے۔ ابوحمید نے پھر اسی روایت کا ایک حصہ بیان کیا اور کہا: جب وہ رکوع کرتے تو اپنے گھٹنوں کو اپنی ہتھیلیوں سے جکڑے اور اپنی انگلیاں کھول دیں۔ پھر آپ صلی اللہ علیہ وسلم نے اپنی پیٹھ کو اوپر کیے بغیر جھکایا اور (کسی طرف) منہ نہیں موڑا۔ جب آپ دو رکعت کے اختتام پر بیٹھتے تو اپنے بائیں پاؤں کے تلوے پر بیٹھتے اور دائیں کو اٹھاتے اور چوتھی کے بعد اپنا بایاں کولہا زمین پر رکھتے اور اپنے دونوں پاؤں ایک طرف پھیلاتے۔",
      englishText:
          "‘Amr al-Amiri said:I (once) attended the meeting of the companions of the Messenger of Allah(ﷺ). They began to discuss his namaz. Abu Humaid then narrated a part of the same tradition and said: When he bowed he clutched his knees with his palms, and he opened his fingers; then he bent his back without raising his upwards and did not turn his face (on any side). When he sat at the end of two rak’ahs he sat on the sole of his left foot and raised the right, and after the fourth he placed his left hip on the ground and spread out both his feet one side.",
      reference: " Sunan Abi Dawud 731"),

  PropheticWayOfPrayerModel(
      id: 60,
      arabicText:
          "حَدَّثَنَا عِيسَى بْنُ إِبْرَاهِيمَ الْمِصْرِيُّ، حَدَّثَنَا ابْنُ وَهْبٍ، عَنِ اللَّيْثِ بْنِ سَعْدٍ، عَنْ يَزِيدَ بْنِ مُحَمَّدٍ الْقُرَشِيِّ، وَيَزِيدَ بْنِ أَبِي حَبِيبٍ، عَنْ مُحَمَّدِ بْنِ عَمْرِو بْنِ حَلْحَلَةَ، عَنْ مُحَمَّدِ بْنِ عَمْرِو بْنِ عَطَاءٍ، نَحْوَ هَذَا قَالَ فَإِذَا سَجَدَ وَضَعَ يَدَيْهِ غَيْرَ مُفْتَرِشٍ وَلاَ قَابِضِهِمَا وَاسْتَقْبَلَ بِأَطْرَافِ أَصَابِعِهِ الْقِبْلَةَ ‏.‏",
      urduText:
          "مذکورہ بالا روایت محمد بن عمرو بن عاص نے بھی نقل کی ہے۔ 'عطا' راویوں کے ایک مختلف سلسلے کے ذریعے۔ یہ ورژن شامل کرتا ہے:جب وہ سجدہ کرتا تھا تو اس نے نہ اپنے بازو زمین پر رکھے اور نہ ہی انہیں بند کیا۔ اپنی انگلیاں قبلہ کی طرف بڑھاتے ہوئے",
      englishText:
          "The above-mentioned tradition has also been reported by Muhammad B. ‘Amr b. ‘Ata’ through a different chain of narrators. This version adds:“When he prostrated himself he neither placed his arms on the ground nor closed them; putting forward his fingers towards the qiblah.”",
      reference: " Sunan Abi Dawud 732"),
  PropheticWayOfPrayerModel(
      id: 61,
      arabicText:
          "حَدَّثَنَا أَحْمَدُ بْنُ حَنْبَلٍ، حَدَّثَنَا عَبْدُ الْمَلِكِ بْنُ عَمْرٍو، أَخْبَرَنِي فُلَيْحٌ، حَدَّثَنِي عَبَّاسُ بْنُ سَهْلٍ، قَالَ اجْتَمَعَ أَبُو حُمَيْدٍ وَأَبُو أُسَيْدٍ وَسَهْلُ بْنُ سَعْدٍ وَمُحَمَّدُ بْنُ مَسْلَمَةَ فَذَكَرُوا صَلاَةَ رَسُولِ اللَّهِ صلى الله عليه وسلم فَقَالَ أَبُو حُمَيْدٍ أَنَا أَعْلَمُكُمْ بِصَلاَةِ رَسُولِ اللَّهِ صلى الله عليه وسلم فَذَكَرَ بَعْضَ هَذَا قَالَ ثُمَّ رَكَعَ فَوَضَعَ يَدَيْهِ عَلَى رُكْبَتَيْهِ كَأَنَّهُ قَابِضٌ عَلَيْهِمَا وَوَتَّرَ يَدَيْهِ فَتَجَافَى عَنْ جَنْبَيْهِ قَالَ ثُمَّ سَجَدَ فَأَمْكَنَ أَنْفَهُ وَجَبْهَتَهُ وَنَحَّى يَدَيْهِ عَنْ جَنْبَيْهِ وَوَضَعَ كَفَّيْهِ حَذْوَ مَنْكِبَيْهِ ثُمَّ رَفَعَ رَأْسَهُ حَتَّى رَجَعَ كُلُّ عَظْمٍ فِي مَوْضِعِهِ حَتَّى فَرَغَ ثُمَّ جَلَسَ فَافْتَرَشَ رِجْلَهُ الْيُسْرَى وَأَقْبَلَ بِصَدْرِ الْيُمْنَى عَلَى قِبْلَتِهِ وَوَضَعَ كَفَّهُ الْيُمْنَى عَلَى رُكْبَتِهِ الْيُمْنَى وَكَفَّهُ الْيُسْرَى عَلَى رُكْبَتِهِ الْيُسْرَى وَأَشَارَ بِأُصْبُعِهِ ‏.‏ قَالَ أَبُو دَاوُدَ رَوَى هَذَا الْحَدِيثَ عُتْبَةُ بْنُ أَبِي حَكِيمٍ عَنْ عَبْدِ اللَّهِ بْنِ عِيسَى عَنِ الْعَبَّاسِ بْنِ سَهْلٍ لَمْ يَذْكُرِ التَّوَرُّكَ وَذَكَرَ نَحْوَ حَدِيثِ فُلَيْحٍ وَذَكَرَ الْحَسَنُ بْنُ الْحُرِّ نَحْوَ جِلْسَةِ حَدِيثِ فُلَيْحٍ وَعُتْبَةَ ‏.‏",
      urduText:
          "عباس بی۔ سہل کہا:ابو حمید، ابو اسید، سہل۔ بی سعد اور محمد بن۔ مسیلمہ رضی اللہ عنہ ایک بار اکٹھے ہوئے اور اس پر بحث کی کہ رسول اللہ صلی اللہ علیہ وسلم کس طرح نماز پڑھتے تھے۔ ابو حمید نے کہا: مجھے تم میں سے ہر ایک سے زیادہ رسول اللہ صلی اللہ علیہ وسلم کی نماز کے بارے میں خبر ہے۔ پھر اس کا ایک حصہ ذکر کیا اور فرمایا: پھر رکوع کیا اور اپنے دونوں ہاتھ اپنے گھٹنوں پر رکھے گویا اس نے انہیں پکڑ لیا۔ اور (اس کے بازوؤں) کو اپنے اطراف سے دور رکھتے ہوئے انہیں جھکا دیا۔ انہوں نے سجدہ کیا اور اپنی ناک اور پیشانی (زمین پر) رکھ دی۔ اور اپنے بازوؤں کو اپنے پہلو سے دور رکھا، اور اپنی ہتھیلیوں کو (اس کے کندھوں کے مقابل زمین پر رکھا؛ پھر اپنا سر اٹھایا تاکہ ہر ہڈی اپنی جگہ پر واپس آجائے؛ (پھر دو بار سجدہ کیا) یہاں تک کہ اس سجدے سے فارغ ہو گئے)۔ پھر آپ بیٹھ گئے اور اپنا بایاں پاؤں پھیلا کر اپنے داہنے پاؤں کا اگلا حصہ قبلہ کی طرف رکھتے ہوئے اپنے داہنے ہاتھ کی ہتھیلی کو داہنے گھٹنے پر رکھا اور بائیں ہاتھ کی ہتھیلی کو بائیں گھٹنے پر رکھا اور اس کے ساتھ اشارہ کیا۔ اس کی انگلی.ابوداؤد کہتے ہیں: اس روایت کو ابن المبارک نے فلیح سے روایت کیا ہے جنہوں نے عباس رضی اللہ عنہ سے سنا۔ سہل نے اسے بیان کیا؛ لیکن مجھے یہ یاد نہیں ہے۔ میرے خیال میں اس نے عیسیٰ بن کا ذکر کیا ہے۔ عبد اللہ جس نے عباس کو سنا۔ سہل کہتے ہیں: میں ابو حمید السعدی کے ساتھ تھا۔",
      englishText:
          "‘Abbas b. Sahl. Said:Abu Humaid, Abu Usaid, Sahl. B Sa’d and Muhammad b. Maslamah (once) got together and discussed how the Messenger of Allah(ﷺ) used to offer his prayer. Abu Humaid said: I am more informed than any of you regarding the prayer offered by the Messenger of Allah (ﷺ). Then he mentioned a part of it, and said: He then bowed and placed his hands upon his knees as if he caught hold of them; and bent them, keeping (his arms) away from his sides. He them prostrated himself and placed his nose and forehead (on the ground); and kept his arms away from his side, and placed his palms (on the ground opposite his shoulders; he then raised his head so that every bone returned to its proper place; (he then prostrated twice) until he finished this prostrations). Then he sat down and spread out his left foot, putting forward the front of his right foot towards the qiblah placing the palm of his right hand on his right knee, and the palm of his left hand on his left knee, and he pointed with his finger.Abu Dawud said: This tradition has been narrated by Ibn al-Mubarak from Fulaih who heard ‘Abbas . Sahl narrating it; but I do not remember it. I think he made the mention of ‘Isa b. ‘Abd Allah who heard ‘Abbas b. Sahl saying: I accompanied Abu Humaid al-Sa’idi.",
      reference: " Sunan Abi Dawud 734"),
  PropheticWayOfPrayerModel(
      id: 61,
      arabicText:
          "حَدَّثَنَا مُوسَى بْنُ إِسْمَاعِيلَ، حَدَّثَنَا حَمَّادٌ، عَنْ إِسْحَاقَ بْنِ عَبْدِ اللَّهِ بْنِ أَبِي طَلْحَةَ، عَنْ عَلِيِّ بْنِ يَحْيَى بْنِ خَلاَّدٍ، عَنْ عَمِّهِ، أَنَّ رَجُلاً، دَخَلَ الْمَسْجِدَ فَذَكَرَ نَحْوَهُ قَالَ فِيهِ فَقَالَ النَّبِيُّ صلى الله عليه وسلم \" إِنَّهُ لاَ تَتِمُّ صَلاَةٌ لأَحَدٍ مِنَ النَّاسِ حَتَّى يَتَوَضَّأَ فَيَضَعَ الْوُضُوءَ \" يَعْنِي مَوَاضِعَهُ \" ثُمَّ يُكَبِّرُ وَيَحْمَدُ اللَّهَ جَلَّ وَعَزَّ وَيُثْنِي عَلَيْهِ وَيَقْرَأُ بِمَا تَيَسَّرَ مِنَ الْقُرْآنِ ثُمَّ يَقُولُ اللَّهُ أَكْبَرُ ثُمَّ يَرْكَعُ حَتَّى تَطْمَئِنَّ مَفَاصِلُهُ ثُمَّ يَقُولُ سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ حَتَّى يَسْتَوِيَ قَائِمًا ثُمَّ يَقُولُ اللَّهُ أَكْبَرُ ثُمَّ يَسْجُدُ حَتَّى تَطْمَئِنَّ مَفَاصِلُهُ ثُمَّ يَقُولُ اللَّهُ أَكْبَرُ وَيَرْفَعُ رَأْسَهُ حَتَّى يَسْتَوِيَ قَاعِدًا ثُمَّ يَقُولُ اللَّهُ أَكْبَرُ ثُمَّ يَسْجُدُ حَتَّى تَطْمَئِنَّ مَفَاصِلُهُ ثُمَّ يَرْفَعُ رَأْسَهُ فَيُكَبِّرُ فَإِذَا فَعَلَ ذَلِكَ فَقَدْ تَمَّتْ صَلاَتُهُ \"",
      urduText:
          "رفاعہ بن رافع کہتے ہیں:یہ نسخہ درج ذیل ہے: رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: کسی کی نماز اس وقت تک مکمل نہیں ہوتی جب تک کہ وہ مکمل طور پر وضو نہ کرے۔ اس کے بعد وہ تکبیر کہے اور اللہ تعالیٰ کی حمد کرے اور اس کی تعریف کرے۔ پھر جتنا چاہے قرآن پڑھے۔ پھر وہ کہے: ’’اللہ سب سے بڑا ہے۔‘‘ اس کے بعد وہ رکوع کرے تاکہ اس کے تمام جوڑ اپنی جگہ پر واپس آجائیں۔ پھر وہ کہے: \"اللہ اس کی سنتا ہے جو اس کی تعریف کرتا ہے\" اور کھڑا ہو جائے۔ اس کے بعد اسے یہ کہنا چاہئے: \"اللہ سب سے بڑا ہے\" اور سجدہ کرے تاکہ اس کے تمام جوڑ مکمل طور پر آرام کریں۔ پھر وہ کہے: \"اللہ سب سے بڑا ہے\"۔ اسے چاہیے کہ اپنا سر (سجدہ کے آخر میں) اٹھائے یہاں تک کہ وہ کھڑا ہو جائے۔ پھر وہ کہے: \"اللہ سب سے بڑا ہے\"۔ پھر سجدہ کرے یہاں تک کہ اس کے تمام جوڑ اپنی جگہ پر آجائیں۔ پھر سر اٹھا کر تکبیر کہے۔ جب وہ ایسا کرتا ہے تو اس کی نماز پوری ہوجاتی ہے۔",
      englishText:
          "Narrated Rifa'ah ibn Rafi':The Prophet (ﷺ) said: The prayer of anyone is not perfect unless he performs ablution perfectly; he should then utter the takbir, and praise Allah, the Exalted, and admire Him; he should then recite the Qur'an as much as he desires. He should then say: \"Allah is Most Great\". Next he should bow so that all his joints return to their proper places. Then he should say: \"Allah listens to the one who praises Him\", and stand erect. He should then say:\"Allah is most great,\" and should prostrate himself so that all his joints are completely at rest. Then he should say: \"Allah is most great\"; he should raise his head (at the end of prostration) till he sits erect. Then he should say: \"Allah is most great\"; then he should prostrate himself till all his joints return to their proper places. Then he should raise his head and say the takbir. When he does so, then his prayer is completed",
      reference: "Sunan Abi Dawud 857"),

  PropheticWayOfPrayerModel(
      id: 62,
      arabicText:
          "حَدَّثَنَا زُهَيْرُ بْنُ حَرْبٍ، حَدَّثَنَا جَرِيرٌ، عَنْ عَطَاءِ بْنِ السَّائِبِ، عَنْ سَالِمٍ الْبَرَّادِ، قَالَ أَتَيْنَا عُقْبَةَ بْنَ عَمْرٍو الأَنْصَارِيَّ أَبَا مَسْعُودٍ فَقُلْنَا لَهُ حَدِّثْنَا عَنْ صَلاَةِ، رَسُولِ اللَّهِ صلى الله عليه وسلم فَقَامَ بَيْنَ أَيْدِينَا فِي الْمَسْجِدِ فَكَبَّرَ فَلَمَّا رَكَعَ وَضَعَ يَدَيْهِ عَلَى رُكْبَتَيْهِ وَجَعَلَ أَصَابِعَهُ أَسْفَلَ مِنْ ذَلِكَ وَجَافَى بَيْنَ مِرْفَقَيْهِ حَتَّى اسْتَقَرَّ كُلُّ شَىْءٍ مِنْهُ ثُمَّ قَالَ سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ فَقَامَ حَتَّى اسْتَقَرَّ كُلُّ شَىْءٍ مِنْهُ ثُمَّ كَبَّرَ وَسَجَدَ وَوَضَعَ كَفَّيْهِ عَلَى الأَرْضِ ثُمَّ جَافَى بَيْنَ مِرْفَقَيْهِ حَتَّى اسْتَقَرَّ كُلُّ شَىْءٍ مِنْهُ ثُمَّ رَفَعَ رَأْسَهُ فَجَلَسَ حَتَّى اسْتَقَرَّ كُلُّ شَىْءٍ مِنْهُ فَفَعَلَ مِثْلَ ذَلِكَ أَيْضًا ثُمَّ صَلَّى أَرْبَعَ رَكَعَاتٍ مِثْلَ هَذِهِ الرَّكْعَةِ فَصَلَّى صَلاَتَهُ ثُمَّ قَالَ هَكَذَا رَأَيْنَا رَسُولَ اللَّهِ صلى الله عليه وسلم يُصَلِّي ‏.‏",
      urduText:
          "عقبہ بن عمرو انصاری کہتے ہیں:سالم البراد کہتے ہیں کہ ہم ابومسعود عقبہ بن عمرو انصاری کے پاس آئے اور ان سے کہا: ہمیں رسول اللہ صلی اللہ علیہ وسلم کی نماز کے بارے میں بتائیے؟وہ مسجد میں ہمارے سامنے کھڑے ہوئے اور تکبیر کہی۔ جب آپ صلی اللہ علیہ وسلم نے رکوع کیا تو آپ صلی اللہ علیہ وسلم نے اپنے دونوں ہاتھ گھٹنوں پر رکھے اور اپنی انگلیاں نیچے رکھیں، اور اپنی کہنیوں (بازوؤں) کو اطراف سے دور رکھا، تو ہر چیز اپنی جگہ پر واپس آ گئی۔ پھر فرمایا: اللہ اس کی سنتا ہے جو اس کی تعریف کرتا ہے۔ پھر وہ کھڑا ہوا تاکہ ہر چیز اپنی جگہ پر واپس آجائے۔ پھر تکبیر کہی اور سجدہ کیا اور ہاتھ کی ہتھیلیاں زمین پر رکھ دیں۔ اس نے اپنی کہنی (بازوؤں) کو اپنے اطراف سے دور رکھا، تاکہ ہر چیز اپنی جگہ پر واپس آجائے۔ پھر اس نے اپنا سر اٹھایا اور بیٹھ گیا کہ سب کچھ اپنی جگہ پر لوٹ آیا۔ اس نے پھر اسے اسی طرح دہرایا۔ پھر اس رکعت کی طرح چار رکعت نماز پڑھی اور نماز پوری کی۔پھر فرمایا: اس طرح ہم نے رسول اللہ صلی اللہ علیہ وسلم کو نماز پڑھتے دیکھا۔",
      englishText:
          "Narrated Uqbah ibn Amr al-Ansari:Salim al-Barrad said: We came to AbuMas'ud Uqbah ibn Amr al-Ansari and said to him: Tell us about the prayer of the Messenger of Allah (ﷺ).He stood up before us in the mosque and said the takbir. When he bowed, he placed his hands upon his knees and put his fingers below, and kept his elbows (arms) away from his sides, so everything returned properly to its place. Then he said: \"Allah listens to him who praises Him\"; then he stood up so that everything returned properly to its place; then he said the takbir and prostrated and put the palms of his hands on the ground; he kept his elbow (arms) away from his sides, so that everything returned to its proper place. Then he raised his head and sat so that everything returned to its place; he then repeated it in a similar way. Then he offered four rak'ahs of prayer like this rak'ah and completed his prayer.Then he said: Thus we witnessed the Messenger of Allah (ﷺ) offering his prayer.",
      reference: "Sunan Abi Dawud 863"),

  PropheticWayOfPrayerModel(
      id: 63,
      arabicText:
          "حَدَّثَنَا عَمْرُو بْنُ عَوْنٍ، أَخْبَرَنَا أَبُو عَوَانَةَ، عَنْ قَتَادَةَ، ح وَحَدَّثَنَا أَحْمَدُ بْنُ حَنْبَلٍ، حَدَّثَنَا يَحْيَى بْنُ سَعِيدٍ، حَدَّثَنَا هِشَامٌ، عَنْ قَتَادَةَ، عَنْ يُونُسَ بْنِ جُبَيْرٍ، عَنْ حِطَّانَ بْنِ عَبْدِ اللَّهِ الرَّقَاشِيِّ، قَالَ صَلَّى بِنَا أَبُو مُوسَى الأَشْعَرِيُّ فَلَمَّا جَلَسَ فِي آخِرِ صَلاَتِهِ قَالَ رَجُلٌ مِنَ الْقَوْمِ أُقِرَّتِ الصَّلاَةُ بِالْبِرِّ وَالزَّكَاةِ ‏.‏ فَلَمَّا انْفَتَلَ أَبُو مُوسَى أَقْبَلَ عَلَى الْقَوْمِ فَقَالَ أَيُّكُمُ الْقَائِلُ كَلِمَةَ كَذَا وَكَذَا فَأَرَمَّ الْقَوْمُ فَقَالَ أَيُّكُمُ الْقَائِلُ كَلِمَةَ كَذَا وَكَذَا فَأَرَمَّ الْقَوْمُ قَالَ فَلَعَلَّكَ يَا حِطَّانُ أَنْتَ قُلْتَهَا ‏.‏ قَالَ مَا قُلْتُهَا وَلَقَدْ رَهِبْتُ أَنْ تَبْكَعَنِي بِهَا ‏.‏ قَالَ فَقَالَ رَجُلٌ مِنَ الْقَوْمِ أَنَا قُلْتُهَا وَمَا أَرَدْتُ بِهَا إِلاَّ الْخَيْرَ ‏.‏ فَقَالَ أَبُو مُوسَى أَمَا تَعْلَمُونَ كَيْفَ تَقُولُونَ فِي صَلاَتِكُمْ إِنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم خَطَبَنَا فَعَلَّمَنَا وَبَيَّنَ لَنَا سُنَّتَنَا وَعَلَّمَنَا صَلاَتَنَا فَقَالَ \" إِذَا صَلَّيْتُمْ فَأَقِيمُوا صُفُوفَكُمْ ثُمَّ لْيَؤُمَّكُمْ أَحَدُكُمْ فَإِذَا كَبَّرَ فَكَبِّرُوا وَإِذَا قَرَأَ ‏{‏ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلاَ الضَّالِّينَ ‏}‏ فَقُولُوا آمِينَ يُجِبْكُمُ اللَّهُ وَإِذَا كَبَّرَ وَرَكَعَ فَكَبِّرُوا وَارْكَعُوا فَإِنَّ الإِمَامَ يَرْكَعُ قَبْلَكُمْ وَيَرْفَعُ قَبْلَكُمْ \" قَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" فَتِلْكَ بِتِلْكَ وَإِذَا قَالَ سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ فَقُولُوا اللَّهُمَّ رَبَّنَا لَكَ الْحَمْدُ يَسْمَعِ اللَّهُ لَكُمْ فَإِنَّ اللَّهَ تَعَالَى قَالَ عَلَى لِسَانِ نَبِيِّهِ صلى الله عليه وسلم سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ وَإِذَا كَبَّرَ وَسَجَدَ فَكَبِّرُوا وَاسْجُدُوا فَإِنَّ الإِمَامَ يَسْجُدُ قَبْلَكُمْ وَيَرْفَعُ قَبْلَكُمْ \" قَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" فَتِلْكَ بِتِلْكَ فَإِذَا كَانَ عِنْدَ الْقَعْدَةِ فَلْيَكُنْ مِنْ أَوَّلِ قَوْلِ أَحَدِكُمْ أَنْ يَقُولَ التَّحِيَّاتُ الطَّيِّبَاتُ الصَّلَوَاتُ لِلَّهِ السَّلاَمُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ السَّلاَمُ عَلَيْنَا وَعَلَى عِبَادِ اللَّهِ الصَّالِحِينَ أَشْهَدُ أَنْ لاَ إِلَهَ إِلاَّ اللَّهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ \" لَمْ يَقُلْ أَحْمَدُ \" وَبَرَكَاتُهُ \" وَلاَ قَالَ \" وَأَشْهَدُ \" قَالَ \" وَأَنَّ مُحَمَّدًا \"",
      urduText:
          "ابوموسیٰ اشعری رضی اللہ عنہ روایت کرتے ہیں:حطان بن عبداللہ الرقاشی کہتے ہیں کہ ابوموسیٰ اشعری نے ہمیں نماز پڑھائی۔جب آپ صلی اللہ علیہ وسلم نماز کے اختتام پر بیٹھے تو لوگوں میں سے ایک نے کہا: نماز فضیلت اور طہارت سے قائم ہوئی ہے۔جب ابوموسیٰ (اپنی نماز سے فارغ ہوئے) واپس آئے تو لوگوں کی طرف متوجہ ہوئے اور فرمایا: تم میں سے فلاں فلاں کلمہ کہنے والا کون ہے؟ لوگ خاموش رہے۔ تم میں سے فلاں فلاں کلمہ کہنے والا کون ہے؟ لوگ خاموش رہے۔ اس نے کہا: تم نے انہیں کہا ہوگا، ہٹن۔ اس نے جواب دیا: میں نے نہیں کہا۔ مجھے ڈر تھا کہ تم مجھے سزا دو گے۔ لوگوں میں سے ایک نے کہا: میں نے یہ کہا اور میں نے ان سے (کسی چیز) کا ارادہ نہیں کیا سوائے خیر کے۔ابوموسیٰ نے کہا: کیا تم نہیں جانتے کہ تم اپنی نماز میں (انہیں) کس طرح کہتے ہو؟ رسول اللہ (صلی اللہ علیہ وآلہ وسلم) نے ہم سے خطاب کیا اور ہمیں سکھایا اور ہمارے عمل کرنے کا طریقہ بتایا اور ہمیں ہماری نماز سکھائی۔آپ نے فرمایا: جب تم (جماعت) نماز پڑھو تو اپنی صفیں سیدھی کرو، پھر تم میں سے کوئی تمہاری امامت کرے۔ جب وہ تکبیر کہے (اللہ سب سے بڑا ہے) تو تکبیر کہے، اور جب وہ آیات پڑھے \"نہ ان پر جن پر تیرا غضب ہے اور نہ غلطی کرنے والوں کی\" (یعنی سورۃ اول کا آخر)، آمین کہو؛ اللہ آپ پر احسان کرے گا۔ جب وہ کہے \"اللہ سب سے بڑا ہے\" اور رکوع کرو تو کہو \"اللہ سب سے بڑا ہے\" اور رکوع کرو، کیونکہ امام آپ کے سامنے سجدہ کرے گا، اور آپ کے سامنے (اپنا سر) اٹھائے گا۔رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: یہ اسی کے لیے ہے۔ جب وہ کہتا ہے \"اللہ اس کی سنتا ہے جو اس کی تعریف کرتا ہے\" تو کہو: \"اے اللہ، ہمارے رب، تیری حمد ہو، اللہ کی حمد ہو،\" اللہ تمہاری سن لے گا، کیونکہ اللہ تعالیٰ نے اپنی زبان سے فرمایا۔ آپ صلی اللہ علیہ وسلم نے فرمایا: اللہ اس کی سنتا ہے جو اس کی تعریف کرتا ہے۔ جب وہ \"اللہ سب سے بڑا ہے\" کہے اور سجدہ کرے تو کہو: \"اللہ سب سے بڑا ہے\" اور سجدہ کرو، کیونکہ امام آپ کے سامنے سجدہ کرتا ہے اور آپ کے سامنے اپنا سر اٹھاتا ہے۔رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: یہ اسی کے لیے ہے۔ جب وہ بیٹھ جائے تو تم میں سے ہر ایک کہے کہ \"زبان کی عبادت، تمام نیکیاں اور عبادات اللہ ہی کے لیے ہیں، سلام ہو آپ پر اے نبی صلی اللہ علیہ وسلم، اور اللہ کی رحمتیں اور برکتیں، سلامتی ہو ہم پر۔ اللہ کے نیک بندوں پر، میں گواہی دیتا ہوں کہ اللہ کے سوا کوئی معبود نہیں اور میں گواہی دیتا ہوں کہ محمد صلی اللہ علیہ وسلم اس کے بندے اور رسول ہیں۔احمد کے اس نسخے میں \"اور اس کی برکات\" کے الفاظ اور نہ ہی \"اور میں گواہی دیتا ہوں\" کا ذکر نہیں ہے۔ اس کے بجائے، اس میں \"وہ محمد\" کے الفاظ ہیں۔",
      englishText:
          "Narrated AbuMusa al-Ash'ari:Hittan ibn Abdullah ar-Ruqashi said: AbuMusa al-Ash'ari led us in prayerWhen he sat at the end of his prayer, one of the people said: Prayer has been established by virtue and purity.When AbuMusa returned (from his prayer or finished his prayer), he gave his attention to the people, and said: Which of you is the speaker of such and such words? The people remained silent. Which of you is the speaker of such and such words? The people remained silent. He said: You might have said them, Hittan. He replied: I did not say them. I was afraid you might punish me. One of the people said: I said them and I did not intend by them (anything) except good.AbuMusa said: Do you not know how you utter (them) in your prayer? The Messenger of Allah (ﷺ) addressed us and taught us and explained to us our way of doing and taught us our prayer.He said: When you pray a (congregational) prayer, straighten your rows, then one of you should lead you in prayer. When he says the takbir (Allah is Most Great), say the Takbir, and when he recites verses \"Not of those upon whom is Thy anger, nor of those who err\" (i.e. the end of Surah i.), say Amin; Allah will favor you. When he says \"Allah is most great,\" and bows, say \"Allah is most great\" and bow, for the imam will bow before you, and will raise (his head) before you.The Messenger of Allah (ﷺ) said: This is for that. When he says \"Allah listens to the one who praises Him,\" say: \"O Allah, our Lord, to Thee be praise, Allah be praised,\" Allah will listen to you, for Allah, the Exalted, said by the tongue of His Prophet (ﷺ): \"Allah listens to the one who praises Him.\" When he says \"Allah is most great\" and prostrates, say: \"Allah is most great\" and prostrate, for the imam prostrates before you and raises his head before you.The Messenger of Allah (ﷺ) said: This is for that. When he sits, each one of you should say \"The adorations of the tongue, all good things, and acts of worship are due to Allah. Peace be upon you, O Prophet, and Allah's mercy and His blessings. Peace be upon us and Allah's upright servants. I testify that there is no god but Allah, and I testify that Muhammad is His servant and Apostle.\"This version of Ahmad does not mention the words \"and His blessings\" nor the phrase \"and I testify\"; instead, it has the words \"that Muhammad.\"",
      reference: "Sunan Abi Dawud 972"),

///////////////////////////////////////////////////////  Nasai //////////////////////////////////////////////////////////

///////////////////////////////////////////////////////  Tarimzi //////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ بَشَّارٍ، وَمُحَمَّدُ بْنُ الْمُثَنَّى، قَالاَ حَدَّثَنَا يَحْيَى بْنُ سَعِيدٍ الْقَطَّانُ، حَدَّثَنَا عَبْدُ الْحَمِيدِ بْنُ جَعْفَرٍ، حَدَّثَنَا مُحَمَّدُ بْنُ عَمْرِو بْنِ عَطَاءٍ، عَنْ أَبِي حُمَيْدٍ السَّاعِدِيِّ، قَالَ سَمِعْتُهُ وَهُوَ، فِي عَشَرَةٍ مِنْ أَصْحَابِ النَّبِيِّ صلى الله عليه وسلم أَحَدُهُمْ أَبُو قَتَادَةَ بْنُ رِبْعِيٍّ يَقُولُ أَنَا أَعْلَمُكُمْ بِصَلاَةِ رَسُولِ اللَّهِ صلى الله عليه وسلم ‏.‏ قَالُوا مَا كُنْتَ أَقْدَمَنَا لَهُ صُحْبَةً وَلاَ أَكْثَرَنَا لَهُ إِتْيَانًا قَالَ بَلَى ‏.‏ قَالُوا فَاعْرِضْ ‏.‏ فَقَالَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَامَ إِلَى الصَّلاَةِ اعْتَدَلَ قَائِمًا وَرَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ فَإِذَا أَرَادَ أَنْ يَرْكَعَ رَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ ثُمَّ قَالَ \" اللَّهُ أَكْبَرُ \" وَرَكَعَ ثُمَّ اعْتَدَلَ فَلَمْ يُصَوِّبْ رَأْسَهُ وَلَمْ يُقْنِعْ وَوَضَعَ يَدَيْهِ عَلَى رُكْبَتَيْهِ ثُمَّ قَالَ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" وَرَفَعَ يَدَيْهِ وَاعْتَدَلَ حَتَّى يَرْجِعَ كُلُّ عَظْمٍ فِي مَوْضِعِهِ مُعْتَدِلاً ثُمَّ أَهْوَى إِلَى الأَرْضِ سَاجِدًا ثُمَّ قَالَ \" اللَّهُ أَكْبَرُ \" ثُمَّ جَافَى عَضُدَيْهِ عَنْ إِبْطَيْهِ وَفَتَخَ أَصَابِعَ رِجْلَيْهِ ثُمَّ ثَنَى رِجْلَهُ الْيُسْرَى وَقَعَدَ عَلَيْهَا ثُمَّ اعْتَدَلَ حَتَّى يَرْجِعَ كُلُّ عَظْمٍ فِي مَوْضِعِهِ مُعْتَدِلاً ثُمَّ أَهْوَى سَاجِدًا ثُمَّ قَالَ \" اللَّهُ أَكْبَرُ \" ثُمَّ ثَنَى رِجْلَهُ وَقَعَدَ وَاعْتَدَلَ حَتَّى يَرْجِعَ كُلُّ عَظْمٍ فِي مَوْضِعِهِ ثُمَّ نَهَضَ ثُمَّ صَنَعَ فِي الرَّكْعَةِ الثَّانِيَةِ مِثْلَ ذَلِكَ حَتَّى إِذَا قَامَ مِنَ السَّجْدَتَيْنِ كَبَّرَ وَرَفَعَ يَدَيْهِ حَتَّى يُحَاذِيَ بِهِمَا مَنْكِبَيْهِ كَمَا صَنَعَ حِينَ افْتَتَحَ الصَّلاَةَ ثُمَّ صَنَعَ كَذَلِكَ حَتَّى كَانَتِ الرَّكْعَةُ الَّتِي تَنْقَضِي فِيهَا صَلاَتُهُ أَخَّرَ رِجْلَهُ الْيُسْرَى وَقَعَدَ عَلَى شِقِّهِ مُتَوَرِّكًا ثُمَّ سَلَّمَ ‏.‏ قَالَ أَبُو عِيسَى هَذَا حَدِيثٌ حَسَنٌ صَحِيحٌ ‏.‏ قَالَ وَمَعْنَى قَوْلِهِ وَرَفَعَ يَدَيْهِ إِذَا قَامَ مِنَ السَّجْدَتَيْنِ يَعْنِي قَامَ مِنَ الرَّكْعَتَيْنِ ‏.‏",
      urduText:
          "محمد بن عمرو بن عطاء نے ابو حمید السعدی سے روایت کی ہے:آپ صلی اللہ علیہ وسلم نے فرمایا: میں نے انہیں یہ کہتے ہوئے سنا کہ وہ رسول اللہ صلی اللہ علیہ وسلم کے دس اصحاب میں سے تھے، جن میں سے ایک ابو قتادہ بن ربیع تھا، میں تم میں رسول اللہ صلی اللہ علیہ وسلم کی نماز کا سب سے زیادہ علم رکھنے والا ہوں۔ انہوں نے کہا: تم ان کی صحبت میں ہم پر سبقت نہیں رکھتے اور نہ ان کی صحبت میں ہم سے زیادہ تھے۔ اس نے کہا: 'اب بھی۔ کہنے لگے: آگے بڑھو۔ تو انہوں نے کہا: جب رسول اللہ صلی اللہ علیہ وسلم نماز کے لیے کھڑے ہوتے تو اپنی پیٹھ سیدھی کر کے کھڑے ہوتے اور اپنے دونوں ہاتھ اٹھاتے یہاں تک کہ وہ کندھے کے برابر ہو جاتے۔ پھر آپ صلی اللہ علیہ وسلم فرماتے: (اللہ اکبر) \"اللہ سب سے بڑا ہے\" اور رکوع کرو۔ پھر آپ صلی اللہ علیہ وسلم (اپنی پیٹھ) کو سیدھا کرتے تاکہ آپ اپنا سر نیچے نہ کریں اور نہ ہی اٹھائیں اور اپنے دونوں ہاتھ گھٹنوں پر رکھے۔ پھر فرمایا: (سمیع اللہ لمن حمدہ) ’’اللہ ان کی سنتا ہے جو اس کی تعریف کرتے ہیں۔ اور وہ اپنے ہاتھ اٹھا کر سیدھا کھڑا رہا یہاں تک کہ اس کی تمام ہڈیاں مکمل طور پر اپنی جگہ پر لوٹ آئیں۔ پھر آپ صلی اللہ علیہ وسلم سجدہ کرتے ہوئے زمین پر گرے، پھر فرمایا: (اللہ اکبر) اللہ سب سے بڑا ہے۔ پھر آپ صلی اللہ علیہ وسلم نے اپنے اوپری بازوؤں کو اپنے درمیان سے دور رکھا اور اپنے پیروں کی انگلیوں کو (قبلہ کی طرف منہ کر کے) کھول دیا، پھر آپ اپنا بایاں پاؤں موڑ کر اس پر بیٹھ گئے، پھر اس وقت تک سیدھا ہو گئے جب تک آپ کی تمام ہڈیاں اپنی جگہ پر واپس نہ آ جائیں۔ سجدے میں چلا گیا. پھر آپ نے فرمایا: (اللہ اکبر) \" اللہ سب سے بڑا ہے  \" پھر آپ صلی اللہ علیہ وسلم اپنا پاؤں جھکا کر بیٹھ گئے اور سیدھے ہوئے یہاں تک کہ آپ کی تمام ہڈیاں اپنی جگہ پر واپس آ گئیں۔ پھر وہ اٹھ گیا۔ پھر دوسری رکعت میں بھی آپ صلی اللہ علیہ وسلم نے ایسا ہی کیا، اس طرح کہ جب آپ صلی اللہ علیہ وسلم دونوں سجدوں سے کھڑے ہوئے تو تکبیر کو ادا کیا اور اپنے دونوں ہاتھ اٹھائے یہاں تک کہ وہ کندھوں کے برابر ہو گئے جیسا کہ آپ صلی اللہ علیہ وسلم نے نماز کھولتے وقت کیا تھا۔ پھر آپ نے ایسا ہی کیا یہاں تک کہ وہ رکعت ہو گئی جس میں آپ کی نماز ختم ہونے والی تھی، جب آپ اپنا بایاں پاؤں اوپر لے گئے اور اپنے پہلو پر بیٹھ گئے۔ پھر تسلیم کہا۔''",
      englishText:
          "Muhammad bin Amr bin Ata' narrated from Abu Humaid As-Saidi, : He (Muhammad) said: \"I heard him saying - while he was among ten of the Companions of the Prophet, one of whom was Abu Qatadah bin Ribi - 'I am the most knowledgeable among you of the Salat of the Allah's Messenger.' They said: 'You did not precede us in his companionship, nor were you in his company more than us.' He said: 'Even still.\" They said: 'Go ahead.' So he said: 'When Allah's Messenger stood for Salat he would stand with his back straight and raise his hands until they were at the level of his shoulder. Then he would say: (Allahu Akbar) \"Allah is Most Great\" and bow. Then he would straighten (his back) so that he would not lower his head, nor raise it, and he placed his hands on his knees. Then he said: (Sami Allahu liman hamidah) \"Allah listens to those who praise Him.\" And he raised his hands and stood up straight until all of his bones completely returned to their places. Then he went down to the ground prostrating, then he said: (Allahu Akbar) \"Allah is Most Great.\" Then he held his upper arms away from his midsection, and opened his toes on his feet (facing the Qiblah), then he bend his left foot and sat on it then straightened up until all of his bones completely returned to their placed, then he went down to prostrate. Then he said: (Allahu Akbar) \"Allah is Most Great,\" then he bent his foot and sat and straightened up until all of his bones completely returned to their places. Then he got up. Then in the second Rak'ah he did the same as that, such that when he stood from the two prostrations, he sad the Takbir and raised his hands until they were at the level of his shoulders as he did when he opened the Salat. Then he did like that until it was the Rak'ah in which his Salat was to end, when he moved his left foot over and sat on his side (in the Mutawarrik postion). Then he said the Taslim.'\"",
      reference: "Jami` at-Tirmidhi 304"),

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////// Prohibition in Namaz  /////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////// Abu Dawud ///////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُسَدَّدٌ، حَدَّثَنَا أَبُو مُعَاوِيَةَ، ح وَحَدَّثَنَا عُثْمَانُ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا جَرِيرٌ، - وَهَذَا حَدِيثُهُ وَهُوَ أَتَمُّ - عَنِ الأَعْمَشِ، عَنِ الْمُسَيَّبِ بْنِ رَافِعٍ، عَنْ تَمِيمِ بْنِ طَرَفَةَ الطَّائِيِّ، عَنْ جَابِرِ بْنِ سَمُرَةَ، - قَالَ عُثْمَانُ - قَالَ دَخَلَ رَسُولُ اللَّهِ صلى الله عليه وسلم الْمَسْجِدَ فَرَأَى فِيهِ نَاسًا يُصَلُّونَ رَافِعِي أَيْدِيهِمْ إِلَى السَّمَاءِ - ثُمَّ اتَّفَقَا - فَقَالَ \" لَيَنْتَهِيَنَّ رِجَالٌ يَشْخَصُونَ أَبْصَارَهُمْ إِلَى السَّمَاءِ - قَالَ مُسَدَّدٌ فِي الصَّلاَةِ - أَوْ لاَ تَرْجِعُ إِلَيْهِمْ أَبْصَارُهُمْ \"",
      urduText:
          "جابر بی۔ سمرہ نے کہا (یہ راوی عثمان کا قول ہے):رسول اللہ صلی اللہ علیہ وسلم مسجد میں داخل ہوئے تو دیکھا کہ کچھ لوگ آسمان کی طرف ہاتھ اٹھا کر دعا کر رہے ہیں۔ (یہ عام نسخہ ہے:) آپ نے فرمایا: لوگ آسمان کی طرف آنکھیں اٹھانا چھوڑ دیں۔ راوی مصدّد نے کہا: نماز کے دوران، ورنہ ان کی بینائی جاتی رہے گی۔",
      englishText:
          "Jabir b. Samurah said(this is the version of the narrator ‘Uthman):The Messenger of Allah(ﷺ) entered the mosque and saw there some people praying raising their hand towards the heaven. (This Is the common version: ) He said : People must stop raising their eyes to the heaven. The narrator Musaddad said: During prayer, otherwise their sight will be taken away.",
      reference: "Sunan Abi Dawud 912"),

////////////////////////////////////////////////////  Ibn Majah  //////////////////////////////////////////////////////////

  PropheticWayOfPrayerModel(
      id: 78,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا مُحَمَّدُ بْنُ عُبَيْدٍ، عَنِ الأَعْمَشِ، عَنْ أَبِي صَالِحٍ، عَنْ أَبِي هُرَيْرَةَ، قَالَ كَانَ النَّبِيُّ ـ صلى الله عليه وسلم ـ يُعَلِّمُنَا أَنْ لاَ نُبَادِرَ الإِمَامَ بِالرُّكُوعِ وَالسُّجُودِ وَإِذَا كَبَّرَ فَكَبِّرُوا وَإِذَا سَجَدَ فَاسْجُدُوا ‏.‏",
      urduText:
          "ابوہریرہ رضی اللہ عنہ سے روایت ہے کہ:\"رسول اللہ صلی اللہ علیہ وسلم ہمیں امام کے آگے رکوع اور سجدہ نہ کرنے کی تعلیم دیتے تھے۔ جب وہ تکبیر کہے تو تکبیر کہو اور جب وہ سجدہ کرے تو تم سجدہ کرو۔",
      englishText:
          "It was narrated that Abu Hurairah said:“The Prophet (ﷺ) used to teach us not to bow or prostrate before the Imam; when he says the Takbir then say the Takbir, and when he prostrates, you should prostrate.”",
      reference: "Sunan Ibn Majah 960"),

  //////////////////////////////////////////////////////////////
  ///

  // Important  Hadith

  // hadith on sitting in namaz (Attahiyaat) .

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُسَدَّدٌ، حَدَّثَنَا عَبْدُ الْوَارِثِ بْنُ سَعِيدٍ، عَنْ حُسَيْنٍ الْمُعَلِّمِ، عَنْ بُدَيْلِ بْنِ مَيْسَرَةَ، عَنْ أَبِي الْجَوْزَاءِ، عَنْ عَائِشَةَ، قَالَتْ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم يَفْتَتِحُ الصَّلاَةَ بِالتَّكْبِيرِ وَالْقِرَاءَةَ بِـ ‏{‏ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ‏}‏ وَكَانَ إِذَا رَكَعَ لَمْ يُشْخِصْ رَأْسَهُ وَلَمْ يُصَوِّبْهُ وَلَكِنْ بَيْنَ ذَلِكَ وَكَانَ إِذَا رَفَعَ رَأْسَهُ مِنَ الرُّكُوعِ لَمْ يَسْجُدْ حَتَّى يَسْتَوِيَ قَائِمًا وَكَانَ إِذَا رَفَعَ رَأْسَهُ مِنَ السُّجُودِ لَمْ يَسْجُدْ حَتَّى يَسْتَوِيَ قَاعِدًا وَكَانَ يَقُولُ فِي كُلِّ رَكْعَتَيْنِ \" التَّحِيَّاتُ \" وَكَانَ إِذَا جَلَسَ يَفْرِشُ رِجْلَهُ الْيُسْرَى وَيَنْصِبُ رِجْلَهُ الْيُمْنَى وَكَانَ يَنْهَى عَنْ عَقِبِ الشَّيْطَانِ وَعَنْ فِرْشَةِ السَّبُعِ وَكَانَ يَخْتِمُ الصَّلاَةَ بِالتَّسْلِيمِ ‏.‏",
      urduText:
          "عائشہ نے کہا:رسول اللہ صلی اللہ علیہ وسلم نے نماز کا آغاز تکبیر (اللہ سب سے بڑا ہے) اور \"الحمد للہ رب العالمین\" کے ساتھ کیا۔ اور جب رکوع کیا تو نہ سر اٹھایا اور نہ نیچے کیا بلکہ دونوں حالتوں کے درمیان رکھا۔ اور جب رکوع کے بعد سر اٹھایا تو اس وقت تک سجدہ نہ کیا جب تک کہ سیدھے کھڑے نہ ہو گئے۔ اور جب سجدہ کے بعد سر اٹھایا تو (دوسری بار) سجدہ نہ کیا جب تک کہ ٹھیک سے نہ بیٹھ گئے۔ اور آپ نے ہر رکعت کے بعد التحیات پڑھی۔ اور جب وہ بیٹھا تو اس نے اپنا بایاں پاؤں پھیلایا اور دائیں کو اٹھایا۔ شیطان کے بیٹھنے کی طرح بیٹھنے اور جانوروں کی طرح ہاتھ (سجدہ میں زمین پر) پھیلانے سے منع فرمایا۔ آپ صلی اللہ علیہ وسلم سلام پھیر کر نماز ختم کرتے تھے۔",
      englishText:
          "‘A’ishah said:The Messenger of Allah(ﷺ) began prayer with the takbir (Allah is most great) and with reciting “Praise be to Allah, the Lord of the Universe”. And when he bowed, he neither raised up nor lowered down his head, but kept it between the two (conditions). And when he raised his head after bowing, he did not prostrate himself until he stood up straight; and when he raised his head after prostration, he did not prostrate (the second time) until he sat down properly; and he recited al-tahiyyat after every pair of rak’ahs; and when he sat, he spread out his left foot and raised his right. He forbade to sit like the sitting of the devil, and to spread out to hands (on the ground in prostration) like animals. He used to finish prayer with uttering the salutation.",
      reference: "Sunan Abi Dawud 783"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُسَدَّدٌ، حَدَّثَنَا بِشْرُ بْنُ الْمُفَضَّلِ، عَنْ عَاصِمِ بْنِ كُلَيْبٍ، عَنْ أَبِيهِ، عَنْ وَائِلِ بْنِ حُجْرٍ، قَالَ قُلْتُ لأَنْظُرَنَّ إِلَى صَلاَةِ رَسُولِ اللَّهِ صلى الله عليه وسلم كَيْفَ يُصَلِّي فَقَامَ رَسُولُ اللَّهِ صلى الله عليه وسلم فَاسْتَقْبَلَ الْقِبْلَةَ فَكَبَّرَ فَرَفَعَ يَدَيْهِ حَتَّى حَاذَتَا بِأُذُنَيْهِ ثُمَّ أَخَذَ شِمَالَهُ بِيَمِينِهِ فَلَمَّا أَرَادَ أَنْ يَرْكَعَ رَفَعَهُمَا مِثْلَ ذَلِكَ - قَالَ - ثُمَّ جَلَسَ فَافْتَرَشَ رِجْلَهُ الْيُسْرَى وَوَضَعَ يَدَهُ الْيُسْرَى عَلَى فَخِذِهِ الْيُسْرَى وَحَدَّ مِرْفَقَهُ الأَيْمَنَ عَلَى فَخِذِهِ الْيُمْنَى وَقَبَضَ ثِنْتَيْنِ وَحَلَّقَ حَلَقَةً وَرَأَيْتُهُ يَقُولُ هَكَذَا وَحَلَّقَ بِشْرٌ الإِبْهَامَ وَالْوُسْطَى وَأَشَارَ بِالسَّبَّابَةِ ‏",
      urduText:
          "وائل بن حجر کہتے ہیں:میں نے کہا کہ میں رسول اللہ صلی اللہ علیہ وسلم کی نماز کو دیکھوں اور آپ صلی اللہ علیہ وسلم کی نماز کیسے پڑھتے ہیں؟ رسول اللہ صلی اللہ علیہ وسلم نے کھڑے ہو کر قبلہ کی طرف رخ کیا اور تکبیر کہی۔ پھر اپنے ہاتھ اٹھائے یہاں تک کہ کانوں کے سامنے لائے۔ پھر اس نے اپنے بائیں ہاتھ کو اپنے دائیں ہاتھ سے پکڑا (یعنی ہاتھ جوڑ کر)۔جب آپ صلی اللہ علیہ وسلم رکوع کرنے والے تھے تو آپ صلی اللہ علیہ وسلم نے انہیں (اپنے ہاتھ) اسی طرح اٹھایا۔ پھر بیٹھا، اپنا بایاں پاؤں (اس پر بیٹھنے کے لیے) پھیلایا، اپنا بایاں ہاتھ اپنی بائیں ران پر رکھا، اور اپنی دائیں کہنی کی نوک کو دائیں ران سے دور رکھا، دو انگلیوں کو ملا کر ایک انگوٹھی بنائی، ایسا کرنے کے لیے۔ . اور راوی بشر نے انگوٹھے اور درمیانی انگلی سے انگوٹھی بنوائی۔",
      englishText:
          "Narrated Wa'il ibn Hujr:I said that I should look at the prayer of the Messenger of Allah (ﷺ) and how he prays. The Messenger of Allah (ﷺ) stood up and faced the qiblah (i.e. the direction of Ka'bah) and uttered the takbir (Allah is most great); then he raised his hands till he brought them in front of his ears; then he caught hold of his left hand with his right hand (i.e. folded his hands).When he was about to bow, he raised them (his hands) in a like manner. Then he sat, stretched out his left foot (to sit on it), placed his left hand on his left thigh, and kept away the tip of his right elbow from his right thigh, joined two fingers, formed a ring, to do so. And the narrator Bishr made a ring with the thumb and the middle finger.",
      reference: "Sunan Abi Dawud 957"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا أَحْمَدُ بْنُ حَنْبَلٍ، حَدَّثَنَا عَبْدُ الْمَلِكِ بْنُ عَمْرٍو، أَخْبَرَنِي فُلَيْحٌ، أَخْبَرَنِي عَبَّاسُ بْنُ سَهْلٍ، قَالَ اجْتَمَعَ أَبُو حُمَيْدٍ وَأَبُو أُسَيْدٍ وَسَهْلُ بْنُ سَعْدٍ وَمُحَمَّدُ بْنُ مَسْلَمَةَ فَذَكَرَ هَذَا الْحَدِيثَ وَلَمْ يَذْكُرِ الرَّفْعَ إِذَا قَامَ مِنْ ثِنْتَيْنِ وَلاَ الْجُلُوسَ قَالَ حَتَّى فَرَغَ ثُمَّ جَلَسَ فَافْتَرَشَ رِجْلَهُ الْيُسْرَى وَأَقْبَلَ بِصَدْرِ الْيُمْنَى عَلَى قِبْلَتِهِ ‏.‏",
      urduText:
          "عباس بی۔ سہل نے کہا:ابو حمید، ابو اسید، سہل بن۔ سعد اور محمد بن۔ مسلمہ اکٹھا ہو گیا۔ پھر اس نے یہ روایت بیان کی۔ دو رکعتوں کے بعد کھڑے ہونے پر ہاتھ اٹھانے کا ذکر نہیں کیا اور نہ بیٹھنے کا ذکر کیا۔ آپ صلی اللہ علیہ وسلم نے فرمایا: جب وہ سجدہ سے فارغ ہوا تو اپنا پاؤں (زمین پر) پھیلایا اور اپنے دائیں پاؤں کی انگلیوں کو قبلہ کی طرف پھیر لیا (پھر اپنے بائیں پاؤں پر بیٹھ گیا)۔",
      englishText:
          "‘Abbas b. Sahl said:Abu Humaid, Abu usaid, Sahl b. Sa’d and Muhammad b. Maslamah got together. Then he narrated this tradition. He did not mention the raising of hands when he stood after two rak’ahs, nor did he mention sitting. He said: When he finished (his prostration), he spread his foot (on the ground) and turned the toes of his right feet towards the qiblah(and then he sat on his left foot).",
      reference: "Sunan Abi Dawud 967"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا الْقَعْنَبِيُّ، عَنْ مَالِكٍ، عَنْ مُسْلِمِ بْنِ أَبِي مَرْيَمَ، عَنْ عَلِيِّ بْنِ عَبْدِ الرَّحْمَنِ الْمُعَاوِيِّ، قَالَ رَآنِي عَبْدُ اللَّهِ بْنُ عُمَرَ وَأَنَا أَعْبَثُ بِالْحَصَى فِي الصَّلاَةِ فَلَمَّا انْصَرَفَ نَهَانِي وَقَالَ اصْنَعْ كَمَا كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم يَصْنَعُ ‏.‏ فَقُلْتُ وَكَيْفَ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم يَصْنَعُ قَالَ كَانَ إِذَا جَلَسَ فِي الصَّلاَةِ وَضَعَ كَفَّهُ الْيُمْنَى عَلَى فَخِذِهِ الْيُمْنَى وَقَبَضَ أَصَابِعَهُ كُلَّهَا وَأَشَارَ بِأُصْبُعِهِ الَّتِي تَلِي الإِبْهَامَ وَوَضَعَ كَفَّهُ الْيُسْرَى عَلَى فَخِذِهِ الْيُسْرَى ‏.‏",
      urduText:
          "عبدالرحمن المؤل نے کہا:عبداللہ بی۔ عمر رضی اللہ عنہ نے مجھے نماز میں کنکریاں کھیلتے دیکھا۔ جب آپ صلی اللہ علیہ وسلم نماز سے فارغ ہوئے تو آپ صلی اللہ علیہ وسلم نے مجھے منع فرمایا اور فرمایا: جیسا کہ رسول اللہ صلی اللہ علیہ وسلم کیا کرتے تھے۔ میں نے پوچھا: رسول اللہ صلی اللہ علیہ وسلم کیسے کرتے؟ آپ صلی اللہ علیہ وسلم نے فرمایا: جب وہ نماز میں بیٹھتے (تشہد کے لیے) تو اپنا دایاں ہاتھ اپنی داہنی ران پر رکھتے، اور اپنی تمام انگلیاں مسلتے، اور انگوٹھے کے ساتھ والی انگلی سے اشارہ کرتے، اور اپنا بایاں ہاتھ رکھا۔ اس کی بائیں ران پر.",
      englishText:
          "’Abd al-Rahman al-Mu’awl said:‘Abd Allah b. ‘Umar saw me playing with pebbles during prayer. When he finished his prayer, he forbade me (to do so) and said: Do as the Apostle (ﷺ) used to do. I asked him: How would the Messenger of Allah(ﷺ) do? He said: When he sat during the prayer (for reciting the tashahhud), he placed his right hand on his right thigh, and clenched all his fingers, and pointed with the finger which is adjacent to the thumb, and he placed his left hand on his left thigh.",
      reference: "Sunan Abi Dawud 987 , Sunan Abi Dawud 988"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا إِبْرَاهِيمُ بْنُ الْحَسَنِ الْمِصِّيصِيُّ، حَدَّثَنَا حَجَّاجٌ، عَنِ ابْنِ جُرَيْجٍ، عَنْ زِيَادٍ، عَنْ مُحَمَّدِ بْنِ عَجْلاَنَ، عَنْ عَامِرِ بْنِ عَبْدِ اللَّهِ، عَنْ عَبْدِ اللَّهِ بْنِ الزُّبَيْرِ، أَنَّهُ ذَكَرَ أَنَّ النَّبِيَّ صلى الله عليه وسلم كَانَ يُشِيرُ بِأُصْبُعِهِ إِذَا دَعَا وَلاَ يُحَرِّكُهَا ‏.‏ قَالَ ابْنُ جُرَيْجٍ وَزَادَ عَمْرُو بْنُ دِينَارٍ قَالَ أَخْبَرَنِي عَامِرٌ عَنْ أَبِيهِ أَنَّهُ رَأَى النَّبِيَّ صلى الله عليه وسلم يَدْعُو كَذَلِكَ وَيَتَحَامَلُ النَّبِيُّ صلى الله عليه وسلم بِيَدِهِ الْيُسْرَى عَلَى فَخِذِهِ الْيُسْرَى ‏.‏",
      urduText:
          "عبداللہ بن زبیر رضی اللہ عنہ روایت کرتے ہیں:رسول اللہ صلی اللہ علیہ وسلم ( تشہد کے آخر میں ) انگلی سے اشارہ کرتے تھے اور اسے حرکت نہیں دیتے تھے۔ابن جریج نے کہا: \"اور عمرو بن دینار نے مزید کہا: انہوں نے (زیاد) کہا: \"مجھے عامر نے اپنے والد سے خبر دی کہ میں نے رسول اللہ صلی اللہ علیہ وسلم کو اس طرح دعا کرتے ہوئے دیکھا ہے۔ اور رسول اللہ صلی اللہ علیہ وسلم اپنے بائیں ہاتھ کو بائیں گھٹنے پر باندھتے تھے۔",
      englishText:
          "Narrated Abdullah ibn az-Zubayr:The Prophet (ﷺ) used to point with his finger (at the end of the tashahhud) and he would not move it.Ibn Juraij said: \"And 'Amr bin Dinar added: 'He (Ziyad) said: \"'Amir informed me from his father that he saw the Prophet (ﷺ) supplicating like that. And the Prophet (ﷺ) would brace himself with his left hand on his left knee",
      reference: "Sunan Abi Dawud 989"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا أَبُو كُرَيْبٍ، حَدَّثَنَا عَبْدُ اللَّهِ بْنُ إِدْرِيسَ، حَدَّثَنَا عَاصِمُ بْنُ كُلَيْبٍ الْجَرْمِيُّ، عَنْ أَبِيهِ، عَنْ وَائِلِ بْنِ حُجْرٍ، قَالَ قَدِمْتُ الْمَدِينَةَ قُلْتُ لأَنْظُرَنَّ إِلَى صَلاَةِ رَسُولِ اللَّهِ صلى الله عليه وسلم فَلَمَّا جَلَسَ - يَعْنِي - لِلتَّشَهُّدِ افْتَرَشَ رِجْلَهُ الْيُسْرَى وَوَضَعَ يَدَهُ الْيُسْرَى يَعْنِي عَلَى فَخِذِهِ الْيُسْرَى وَنَصَبَ رِجْلَهُ الْيُمْنَى ‏.‏ قَالَ أَبُو عِيسَى هَذَا حَدِيثٌ حَسَنٌ صَحِيحٌ ‏.‏ وَالْعَمَلُ عَلَيْهِ عِنْدَ أَكْثَرِ أَهْلِ الْعِلْمِ وَهُوَ قَوْلُ سُفْيَانَ الثَّوْرِيِّ وَأَهْلِ الْكُوفَةِ وَابْنِ الْمُبَارَكِ ‏.‏",
      urduText:
          "وائل بن حجر نے کہا:میں مدینہ منورہ پہنچا اور میں نے کہا کہ مجھے رسول اللہ صلی اللہ علیہ وسلم کی نماز پڑھنے دو۔ جب وہ بیٹھا - جس کا مطلب تشہد ہے - اس نے اپنا بایاں پاؤں پھیلایا، اور اپنا بایاں ہاتھ - یعنی اپنی بائیں ران پر - اور اپنا دایاں پاؤں کھڑا رکھا۔\"",
      englishText:
          "Wa'il bin Hujr said:\"I arrived in Al-Madinah and I said, 'Let me look at the Salat of Allah's Messenger.' When he sat - meaning for At-Tashah-hud - he spread his left foot, and placed his left hand - meaning on his left thigh - and held his right foot erect.\"",
      reference: "Jami` at-Tirmidhi 292"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مَحْمُودُ بْنُ غَيْلاَنَ، وَيَحْيَى بْنُ مُوسَى، وَغَيْرُ، وَاحِدٍ، قَالُوا حَدَّثَنَا عَبْدُ الرَّزَّاقِ، عَنْ مَعْمَرٍ، عَنْ عُبَيْدِ اللَّهِ بْنِ عُمَرَ، عَنْ نَافِعٍ، عَنِ ابْنِ عُمَرَ، أَنَّ النَّبِيَّ صلى الله عليه وسلم كَانَ إِذَا جَلَسَ فِي الصَّلاَةِ وَضَعَ يَدَهُ الْيُمْنَى عَلَى رُكْبَتِهِ وَرَفَعَ إِصْبَعَهُ الَّتِي تَلِي الإِبْهَامَ الْيُمْنَى يَدْعُو بِهَا وَيَدُهُ الْيُسْرَى عَلَى رُكْبَتِهِ بَاسِطَهَا عَلَيْهِ ‏.‏ قَالَ وَفِي الْبَابِ عَنْ عَبْدِ اللَّهِ بْنِ الزُّبَيْرِ وَنُمَيْرٍ الْخُزَاعِيِّ وَأَبِي هُرَيْرَةَ وَأَبِي حُمَيْدٍ وَوَائِلِ بْنِ حُجْرٍ ‏.‏ قَالَ أَبُو عِيسَى حَدِيثُ ابْنِ عُمَرَ حَدِيثٌ حَسَنٌ غَرِيبٌ لاَ نَعْرِفُهُ مِنْ حَدِيثِ عُبَيْدِ اللَّهِ بْنِ عُمَرَ إِلاَّ مِنْ هَذَا الْوَجْهِ ‏.‏ وَالْعَمَلُ عَلَيْهِ عِنْدَ بَعْضِ أَهْلِ الْعِلْمِ مِنْ أَصْحَابِ النَّبِيِّ صلى الله عليه وسلم وَالتَّابِعِينَ يَخْتَارُونَ الإِشَارَةَ فِي التَّشَهُّدِ وَهُوَ قَوْلُ أَصْحَابِنَا ‏.‏",
      urduText:
          "ابن عمر نے بیان کیا:\"نبی کریم صلی اللہ علیہ وسلم جب نماز میں بیٹھتے تو اپنا دایاں ہاتھ گھٹنے پر رکھتے اور اپنی انگلی اٹھاتے جو کہ [دائیں] انگوٹھے کے پاس ہے، اس کے ساتھ دعا کرتے، اور آپ کا بایاں ہاتھ اپنے گھٹنے پر پھیلایا جاتا۔ بائیں گھٹنے.\"",
      englishText:
          "Ibn Umar narrated:\"When the Prophet would sit during the Salat, he would place his right hand on his knee, and raise his finger, the one that is next to the [right] thumb, supplicating with it, and his left hand was spread flat on his left knee.\"",
      reference: "Jami` at-Tirmidhi 294"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ يَحْيَى، وَالْحَسَنُ بْنُ عَلِيٍّ، وَإِسْحَاقُ بْنُ مَنْصُورٍ، قَالُوا حَدَّثَنَا عَبْدُ الرَّزَّاقِ، حَدَّثَنَا مَعْمَرٌ، عَنْ عُبَيْدِ اللَّهِ، عَنْ نَافِعٍ، عَنِ ابْنِ عُمَرَ، أَنَّ النَّبِيَّ ـ صلى الله عليه وسلم ـ كَانَ إِذَا جَلَسَ فِي الصَّلاَةِ وَضَعَ يَدَيْهِ عَلَى رُكْبَتَيْهِ وَرَفَعَ إِصْبَعَهُ الْيُمْنَى الَّتِي تَلِي الإِبْهَامَ فَيَدْعُو بِهَا وَالْيُسْرَى عَلَى رُكْبَتِهِ بَاسِطَهَا عَلَيْهَا ‏.‏",
      urduText:
          "سیدنا ابن عمر رضی اللہ عنہما سے روایت ہے کہ رسول اللہ صلی اللہ علیہ وسلم نماز میں بیٹھتے تھے، اپنے دونوں ہاتھ گھٹنوں پر رکھتے تھے اور اپنی داہنی انگلی اٹھاتے تھے جو آپ کے انگوٹھے کے پاس تھی، اس کے ساتھ دعا کرتے تھے، اور اپنے بائیں ہاتھ سے (پھیلاؤ) کرتے تھے۔ اس کے گھٹنے پر.",
      englishText:
          "It was narrated from Ibn ‘Umar that the Prophet (ﷺ) used to sit during prayer, putting his hands on his knees and raising his right finger which was next to his thumb, supplicating with it, and with his left hand (spread out) on his knee.",
      reference: "Sunan Ibn Majah 913"),

  // Hadith on how to end the namaz .

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، وَأَبُو كُرَيْبٍ قَالاَ حَدَّثَنَا أَبُو مُعَاوِيَةَ، عَنِ الأَعْمَشِ، عَنِ الْمُسَيَّبِ بْنِ رَافِعٍ، عَنْ تَمِيمِ بْنِ طَرَفَةَ، عَنْ جَابِرِ بْنِ سَمُرَةَ، قَالَ خَرَجَ عَلَيْنَا رَسُولُ اللَّهِ صلى الله عليه وسلم فَقَالَ \" مَا لِي أَرَاكُمْ رَافِعِي أَيْدِيكُمْ كَأَنَّهَا أَذْنَابُ خَيْلٍ شُمْسٍ اسْكُنُوا فِي الصَّلاَةِ \" قَالَ ثُمَّ خَرَجَ عَلَيْنَا فَرَآنَا حَلَقًا فَقَالَ \" مَا لِي أَرَاكُمْ عِزِينَ \" قَالَ ثُمَّ خَرَجَ عَلَيْنَا فَقَالَ \" أَلاَ تَصُفُّونَ كَمَا تَصُفُّ الْمَلاَئِكَةُ عِنْدَ رَبِّهَا \" فَقُلْنَا يَا رَسُولَ اللَّهِ وَكَيْفَ تَصُفُّ الْمَلاَئِكَةُ عِنْدَ رَبِّهَا قَالَ \" يُتِمُّونَ الصُّفُوفَ الأُوَلَ وَيَتَرَاصُّونَ فِي الصَّفِّ \"",
      urduText:
          "جابر بی۔ سمورا نے اطلاع دی:رسول اللہ صلی اللہ علیہ وسلم ہمارے پاس تشریف لائے اور فرمایا: ”یہ کیسا ہے کہ میں تمہیں اپنے ہاتھ مضبوط گھوڑوں کی دموں کی طرح اٹھاتے ہوئے دیکھ رہا ہوں؟ نماز میں آرام کرو۔ اس نے (راوی) کہا: وہ پھر ہمارے پاس آیا اور ہمیں حلقوں میں (بیٹھا) دیکھا۔ اس نے کہا: یہ کیسا ہے کہ میں تمہیں الگ الگ گروہوں میں دیکھتا ہوں؟ اس نے (راوی) کہا: وہ پھر ہمارے پاس آیا اور کہا: تم اپنے آپ کو صف بندی کیوں نہیں کر لیتے جس طرح فرشتے اپنے رب کے سامنے کھڑے ہوتے ہیں؟ ہم نے عرض کیا: اللہ کے رسول، فرشتے اپنے رب کی بارگاہ میں کیسے صفیں باندھتے ہیں؟ آپ صلی اللہ علیہ وسلم نے فرمایا: ”وہ پہلی صفوں کو مکمل کرتے ہیں اور صف میں ایک دوسرے کے قریب رکھتے ہیں۔",
      englishText:
          "Jabir b. Samura reported:The Messenger of Allah (ﷺ) came to us and said: \"How is it that I see you lifting your hands like the tails of headstrong horses? Be calm in prayer.\" He (the narrator) said: He then again came to us and saw us (sitting) in circles. He said: \"How is it that I see you in separate groups?\" He (the narrator) said: He again came to us and said: \"Why don't you draw yourselves up in rows as angels do in the presence of their Lord?\" We said: Messenger of Allah, how do the angels draw themselves up in rows in the presence of their Lord? He (the Holy Prophet) said: \"They make the first rows complete and keep close together in the row.\"",
      reference: "Sahih Muslim 430 - A"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، قَالَ حَدَّثَنَا وَكِيعٌ، عَنْ مِسْعَرٍ، ح وَحَدَّثَنَا أَبُو كُرَيْبٍ، - وَاللَّفْظُ لَهُ - قَالَ أَخْبَرَنَا ابْنُ أَبِي زَائِدَةَ، عَنْ مِسْعَرٍ، حَدَّثَنِي عُبَيْدُ اللَّهِ ابْنُ الْقِبْطِيَّةِ، عَنْ جَابِرِ بْنِ سَمُرَةَ، قَالَ كُنَّا إِذَا صَلَّيْنَا مَعَ رَسُولِ اللَّهِ صلى الله عليه وسلم قُلْنَا السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللَّهِ السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللَّهِ ‏.‏ وَأَشَارَ بِيَدِهِ إِلَى الْجَانِبَيْنِ فَقَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" عَلاَمَ تُومِئُونَ بِأَيْدِيكُمْ كَأَنَّهَا أَذْنَابُ خَيْلٍ شُمُسٍ إِنَّمَا يَكْفِي أَحَدَكُمْ أَنْ يَضَعَ يَدَهُ عَلَى فَخِذِهِ ثُمَّ يُسَلِّمُ عَلَى أَخِيهِ مَنْ عَلَى يَمِينِهِ وَشِمَالِهِ \"",
      urduText:
          "جابر بی۔ سمورا نے اطلاع دی:جب ہم نے رسول اللہ صلی اللہ علیہ وسلم کے ساتھ نماز پڑھی تو ہم نے یہ کہا: السلام علیکم و رحمۃ اللہ و برکاتہ، اور دونوں طرف ہاتھ کا اشارہ کیا۔ اس پر رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: تم اپنے ہاتھوں سے کس چیز کی طرف اشارہ کرتے ہو گویا وہ مضبوط گھوڑوں کی دم ہیں، تمہارے لیے یہی کافی ہے کہ کوئی شخص اپنی ران پر ہاتھ رکھے اور پھر سلام کرے۔ اپنے بھائی پر دائیں طرف اور پھر بائیں طرف۔",
      englishText:
          "Jabir b. Samura reported:When we said prayer with the Messenger of Allah (ﷺ), we pronounced: Peace be upon you and Mercy of Allah, peace be upon you and Mercy of Allah, and made gesture with the hand on both the sides. Upon this the Messenger of Allah (may peace be upon him said: What do you point out with your hands as if they are the tails of headstrong horses? This is enough for you that one should place one's hand on one's thigh and then pronounce salutation upon one's brother on the right side and then on the left.",
      reference: "Sahih Muslim 431 - A"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "وَحَدَّثَنَا الْقَاسِمُ بْنُ زَكَرِيَّاءَ، حَدَّثَنَا عُبَيْدُ اللَّهِ بْنُ مُوسَى، عَنْ إِسْرَائِيلَ، عَنْ فُرَاتٍ، - يَعْنِي الْقَزَّازَ - عَنْ عُبَيْدِ اللَّهِ، عَنْ جَابِرِ بْنِ سَمُرَةَ، قَالَ صَلَّيْتُ مَعَ رَسُولِ اللَّهِ صلى الله عليه وسلم فَكُنَّا إِذَا سَلَّمْنَا قُلْنَا بِأَيْدِينَا السَّلاَمُ عَلَيْكُمْ السَّلاَمُ عَلَيْكُمْ فَنَظَرَ إِلَيْنَا رَسُولُ اللَّهِ صلى الله عليه وسلم فَقَالَ \" مَا شَأْنُكُمْ تُشِيرُونَ بِأَيْدِيكُمْ كَأَنَّهَا أَذْنَابُ خَيْلٍ شُمُسٍ إِذَا سَلَّمَ أَحَدُكُمْ فَلْيَلْتَفِتْ إِلَى صَاحِبِهِ وَلاَ يُومِئْ بِيَدِهِ",
      urduText:
          "جابر بی۔ سمورا نے اطلاع دی:ہم نے رسول اللہ صلی اللہ علیہ وسلم کے ساتھ نماز پڑھی اور سلام پھیرتے ہوئے اپنے ہاتھوں سے اشارہ کیا کہ السلام علیکم۔ رسول اللہ صلی اللہ علیہ وسلم نے ہماری طرف دیکھا اور فرمایا: تم اپنے ہاتھوں سے گھوڑوں کی دموں کی طرح اشارہ کیوں کرتے ہو؟ جب تم میں سے کوئی (نماز میں) سلام پڑھے تو صرف اپنے ساتھی کی طرف منہ کرے اور ہاتھ سے اشارہ نہ کرے۔",
      englishText:
          "Jabir b. Samura reported:We said our prayer with the Messenger of Allah (ﷺ) and, while pronouncing salutations, we made gestures with our hands (indicating)\" Peace be upon you, peace be upon you.\" The Messenger of Allah (ﷺ) looked toward us and said: Why is it that you make gestures with your hands like the tails of headstrong horses? When any one of you pro- nounces salutation (in prayer) he should only turn his face towards his companion and should not make a gesture with his hand.",
      reference: "Sahih Muslim 431 - B"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا عُثْمَانُ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا يَحْيَى بْنُ زَكَرِيَّا، وَوَكِيعٌ، عَنْ مِسْعَرٍ، عَنْ عُبَيْدِ اللَّهِ ابْنِ الْقِبْطِيَّةِ، عَنْ جَابِرِ بْنِ سَمُرَةَ، قَالَ كُنَّا إِذَا صَلَّيْنَا خَلْفَ رَسُولِ اللَّهِ صلى الله عليه وسلم فَسَلَّمَ أَحَدُنَا أَشَارَ بِيَدِهِ مِنْ عَنْ يَمِينِهِ وَمِنْ عَنْ يَسَارِهِ فَلَمَّا صَلَّى قَالَ \" مَا بَالُ أَحَدِكُمْ يَرْمِي بِيَدِهِ كَأَنَّهَا أَذْنَابُ خَيْلٍ شُمْسٍ إِنَّمَا يَكْفِي أَحَدَكُمْ - أَوْ أَلاَ يَكْفِي أَحَدَكُمْ - أَنْ يَقُولَ هَكَذَا \" وَأَشَارَ بِأُصْبُعِهِ \" يُسَلِّمُ عَلَى أَخِيهِ مَنْ عَنْ يَمِينِهِ وَمَنْ عَنْ شِمَالِهِ \"",
      urduText:
          "جابر بی۔ سمرہ نے کہا:جب ہم نے رسول اللہ صلی اللہ علیہ وسلم کے پیچھے نماز پڑھی تو ہم میں سے ایک نے سلام پھیرا اور ہاتھ سے اس شخص کی طرف اشارہ کیا جو اس کے دائیں اور بائیں جانب تھا۔ جب آپ صلی اللہ علیہ وسلم نماز سے فارغ ہوئے تو آپ صلی اللہ علیہ وسلم نے فرمایا: کیا بات ہے کہ تم میں سے کوئی اپنے ہاتھ سے (نماز کے دوران) اس طرح اشارہ کرتا ہے جس طرح گھوڑوں کی دم ہوتی ہے۔ تم میں سے کسی کے لیے یہ کافی ہے یا تم میں سے کسی کے لیے اس طرح کہنا کافی نہیں ہے؟ اور اس نے انگلی سے اشارہ کیا۔ اپنے بھائی کو دائیں بائیں سلام کرنا چاہیے۔",
      englishText:
          "Jabir b. Samurah said:When we prayed behind the Messenger of Allah(ﷺ), one of us gave the salutation and pointed with his hand to the man to his right side and left side. When he finished his prayer, he said: What is the matter that one of you points with his hand (during prayer) just like the tails of restive horses. It is sufficient for one of you, or is it not sufficient for one of you to say in this manner? And he pointed with his finger; one should salute his brother at his right and left side.",
      reference: "Sunan Abi Dawud 998"),

  // Sajdaa ka tarika .

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "وَحَدَّثَنَا هَارُونُ بْنُ مَعْرُوفٍ، وَعَمْرُو بْنُ سَوَّادٍ، قَالاَ حَدَّثَنَا عَبْدُ اللَّهِ بْنُ وَهْبٍ، عَنْ عَمْرِو بْنِ الْحَارِثِ، عَنْ عُمَارَةَ بْنِ غَزِيَّةَ، عَنْ سُمَىٍّ، مَوْلَى أَبِي بَكْرٍ أَنَّهُ سَمِعَ أَبَا صَالِحٍ، ذَكْوَانَ يُحَدِّثُ عَنْ أَبِي هُرَيْرَةَ، أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم قَالَ \" أَقْرَبُ مَا يَكُونُ الْعَبْدُ مِنْ رَبِّهِ وَهُوَ سَاجِدٌ فَأَكْثِرُوا الدُّعَاءَ \"",
      urduText:
          "ابوہریرہ نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: بندہ اپنے رب کے سب سے زیادہ قریب اس وقت ہوتا ہے جب وہ سجدہ میں ہوتا ہے، لہٰذا (اسی حالت میں) دعا کیا کرو۔",
      englishText:
          "Abu Huraira reported:The Messenger of Allah (ﷺ) said: The nearest a servant comes to his Lord is when he is prostrating himself, so make supplication (in this state).",
      reference: "Sahih Muslim 482"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "وَحَدَّثَنِي أَبُو الطَّاهِرِ، وَيُونُسُ بْنُ عَبْدِ الأَعْلَى، قَالاَ أَخْبَرَنَا ابْنُ وَهْبٍ، أَخْبَرَنِي يَحْيَى بْنُ أَيُّوبَ، عَنْ عُمَارَةَ بْنِ غَزِيَّةَ، عَنْ سُمَىٍّ، مَوْلَى أَبِي بَكْرٍ عَنْ أَبِي صَالِحٍ، عَنْ أَبِي هُرَيْرَةَ، أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم كَانَ يَقُولُ فِي سُجُودِهِ \" اللَّهُمَّ اغْفِرْ لِي ذَنْبِي كُلَّهُ دِقَّهُ وَجِلَّهُ وَأَوَّلَهُ وَآخِرَهُ وَعَلاَنِيَتَهُ وَسِرَّهُ ‏\"",
      urduText:
          "ابوہریرہ نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم سجدہ کرتے ہوئے کہا کرتے تھے: اے میرے رب میرے چھوٹے بڑے، اول و آخر، کھلے اور پوشیدہ تمام گناہ معاف فرما۔",
      englishText:
          "Abu Huraira reported:The Messenger of Allah (ﷺ) used to say while prostrating himself: O Lord, forgive me all my sins, small and great, first and last, open and secret.",
      reference: "Sahih Muslim 483"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا زُهَيْرُ بْنُ حَرْبٍ، وَإِسْحَاقُ بْنُ إِبْرَاهِيمَ، قَالَ زُهَيْرٌ حَدَّثَنَا جَرِيرٌ، عَنْ مَنْصُورٍ، عَنْ أَبِي الضُّحَى، عَنْ مَسْرُوقٍ، عَنْ عَائِشَةَ، قَالَتْ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم يُكْثِرُ أَنْ يَقُولَ فِي رُكُوعِهِ وَسُجُودِهِ \" سُبْحَانَكَ اللَّهُمَّ رَبَّنَا وَبِحَمْدِكَ اللَّهُمَّ اغْفِرْ لِي \" يَتَأَوَّلُ الْقُرْآنَ ",
      urduText:
          "عائشہ رضی اللہ عنہا نے بیان کیا:اللہ کے رسول صلی اللہ علیہ وسلم اکثر رکوع اور سجدہ کرتے ہوئے کہا کرتے تھے: \"اے اللہ، ہمارے رب، تیری پاکی ہے، اور تیری حمد ہے، اے اللہ، مجھے بخش دے،\" اس طرح (اے اللہ!) حکم میں) قرآن۔",
      englishText:
          "'A'isha reported:The Messenger of Allah (may peace be upon him') often said while bowing and prostrating himself:\" Glory be to Thee, O Allah, our Lord, and praise be to Thee, O Allah, forgive me,\" thus complying with the (command in) the Qur'an.",
      reference: "Sahih Muslim 484 - A"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "وَحَدَّثَنِي حَسَنُ بْنُ عَلِيٍّ الْحُلْوَانِيُّ، وَمُحَمَّدُ بْنُ رَافِعٍ، قَالاَ حَدَّثَنَا عَبْدُ الرَّزَّاقِ، أَخْبَرَنَا ابْنُ جُرَيْجٍ، قَالَ قُلْتُ لِعَطَاءٍ كَيْفَ تَقُولُ أَنْتَ فِي الرُّكُوعِ قَالَ أَمَّا سُبْحَانَكَ وَبِحَمْدِكَ لاَ إِلَهَ إِلاَّ أَنْتَ فَأَخْبَرَنِي ابْنُ أَبِي مُلَيْكَةَ عَنْ عَائِشَةَ قَالَتِ افْتَقَدْتُ النَّبِيَّ صلى الله عليه وسلم ذَاتَ لَيْلَةٍ فَظَنَنْتُ أَنَّهُ ذَهَبَ إِلَى بَعْضِ نِسَائِهِ فَتَحَسَّسْتُ ثُمَّ رَجَعْتُ فَإِذَا هُوَ رَاكِعٌ أَوْ سَاجِدٌ يَقُولُ \" سُبْحَانَكَ وَبِحَمْدِكَ لاَ إِلَهَ إِلاَّ أَنْتَ \" فَقُلْتُ بِأَبِي أَنْتَ وَأُمِّي إِنِّي لَفِي شَأْنٍ وَإِنَّكَ لَفِي آخَرَ",
      urduText:
          "ابن جریج نے بیان کیا:میں نے عطاء سے پوچھا: جب تم رکوع کی حالت میں ہو تو کیا پڑھتے ہو؟ فرمایا: تو پاک ہے اور تیری حمد کے ساتھ تیرے سوا کوئی معبود نہیں۔ مجھ سے عبدالملیقہ کے بیٹے نے عائشہ رضی اللہ عنہا سے بیان کیا کہ میں نے ایک رات رسول اللہ صلی اللہ علیہ وسلم کو (اپنے بستر سے) یاد کیا۔ میں نے سوچا کہ وہ اپنی دوسری بیویوں میں سے کسی کے پاس گیا ہوگا۔ میں نے اسے تلاش کیا اور پھر واپس آیا اور رکوع یا سجدے کی حالت میں پایا، اور کہا: پاک اور تیری حمد کے ساتھ۔ تیرے سوا کوئی معبود نہیں۔ میں نے کہا: میرے والد کے ساتھ آپ کا فدیہ لیا جائے اور میری والدہ کے ساتھ۔ میں (ایک اور) معاملے کے بارے میں سوچ رہا تھا، جب کہ آپ کسی اور معاملے میں (مقبول) ہیں۔",
      englishText:
          "Ibn Juraij reported:I asked 'Ata': What do you recite when you are in a state of bowing (in prayer)? He said:\" Hallowed be Thou, and with Thy praise, there is no god but Thou.\" Son of Abd Mulaika narrated to me on the anthority of 'A'isha (who reported): I missed one night the Messenger of Allah (ﷺ) (from his bed). I thought that he might have gone to one of his other wives. I searched for him and then came back and (found him) in a state of bowing, or prostration, saying: Hallowed be Thou and with Thy praise; there is no god but Thou. I said: With my father mayest thou be ransomed and with my mother. I was thinking of (another) affair, whereas you are (occupied) in another one.",
      reference: "Sahih Muslim 485"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا أَبُو أُسَامَةَ، حَدَّثَنِي عُبَيْدُ اللَّهِ بْنُ عُمَرَ، عَنْ مُحَمَّدِ بْنِ يَحْيَى بْنِ حَبَّانَ، عَنِ الأَعْرَجِ، عَنْ أَبِي هُرَيْرَةَ، عَنْ عَائِشَةَ، قَالَتْ فَقَدْتُ رَسُولَ اللَّهِ صلى الله عليه وسلم لَيْلَةً مِنَ الْفِرَاشِ فَالْتَمَسْتُهُ فَوَقَعَتْ يَدِي عَلَى بَطْنِ قَدَمَيْهِ وَهُوَ فِي الْمَسْجِدِ وَهُمَا مَنْصُوبَتَانِ وَهُوَ يَقُولُ \" اللَّهُمَّ أَعُوذُ بِرِضَاكَ مِنْ سَخَطِكَ وَبِمُعَافَاتِكَ مِنْ عُقُوبَتِكَ وَأَعُوذُ بِكَ مِنْكَ لاَ أُحْصِي ثَنَاءً عَلَيْكَ أَنْتَ كَمَا أَثْنَيْتَ عَلَى نَفْسِكَ \"",
      urduText:
          "عائشہ رضی اللہ عنہا نے بیان کیا:ایک رات میں نے رسول اللہ صلی اللہ علیہ وسلم کو بستر سے یاد کیا، جب میں نے آپ کو ڈھونڈا تو میرا ہاتھ آپ کے پاؤں کے تلووں کو چھو گیا جب آپ سجدے کی حالت میں تھے۔ وہ (پاؤں) اٹھائے ہوئے تھے اور آپ کہہ رہے تھے: اے اللہ میں تیری ناراضگی سے تیری رضا کی پناہ مانگتا ہوں اور تیرے عذاب سے تیری بخشش کی پناہ چاہتا ہوں اور تجھ سے تیری پناہ مانگتا ہوں، میں تیرا حساب نہیں لگا سکتا۔ تعریف۔ آپ ایسے ہیں جیسے آپ نے اپنی تعریف کی ہے۔\"",
      englishText:
          "'A'isha reported:One night I missed Allah's Messenger (ﷺ) from the bed, and when I sought him my hand touched the soles of his feet while he was in the state of prostration; they (feet) were raised and he was saying:\" O Allah, I seek refuge in Thy pleasure from Thy anger, and in Thy forgiveness from Thy punishment, and I seek refuge in Thee from Thee (Thy anger). I cannot reckon Thy praise. Thou art as Thou hast lauded Thyself.\"",
      reference: "Sahih Muslim 486"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا مُحَمَّدُ بْنُ بِشْرٍ الْعَبْدِيُّ، حَدَّثَنَا سَعِيدُ بْنُ أَبِي عَرُوبَةَ، عَنْ قَتَادَةَ، عَنْ مُطَرِّفِ بْنِ عَبْدِ اللَّهِ بْنِ الشِّخِّيرِ، أَنَّ عَائِشَةَ، نَبَّأَتْهُ أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم كَانَ يَقُولُ فِي رُكُوعِهِ وَسُجُودِهِ \" سُبُّوحٌ قُدُّوسٌ رَبُّ الْمَلاَئِكَةِ وَالرُّوحِ \"",
      urduText:
          "عائشہ رضی اللہ عنہا بیان کرتی ہیں کہ رسول اللہ صلی اللہ علیہ وسلم رکوع اور سجدہ میں یہ کہتے تھے:تمام جلالی، تمام مقدس، فرشتوں اور روح کا رب۔",
      englishText:
          "'A'isha reported that the Messenger of Allah (may peace he upon him) used to pronounce while bowing and prostrating himself:All Glorious, All Holy, Lord of the Angels and the Spirit.",
      reference: "Sahih Muslim 487 - A / B"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُحَمَّدُ بْنُ حَاتِمٍ، حَدَّثَنَا بَهْزٌ، حَدَّثَنَا وُهَيْبٌ، حَدَّثَنَا عَبْدُ اللَّهِ بْنُ طَاوُسٍ، عَنْ طَاوُسٍ، عَنِ ابْنِ عَبَّاسٍ، أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم قَالَ \" أُمِرْتُ أَنْ أَسْجُدَ عَلَى سَبْعَةِ أَعْظُمٍ الْجَبْهَةِ - وَأَشَارَ بِيَدِهِ عَلَى أَنْفِهِ - وَالْيَدَيْنِ وَالرِّجْلَيْنِ وَأَطْرَافِ الْقَدَمَيْنِ وَلاَ نَكْفِتَ الثِّيَابَ وَلاَ الشَّعْرَ \"",
      urduText:
          "ابن عباس رضی اللہ عنہما بیان کرتے ہیں کہ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا:مجھے سات ہڈیوں پر سجدہ کرنے کا حکم دیا گیا ہے: پیشانی، اور پھر اپنے ہاتھ سے ناک، ہاتھ، پاؤں، اور پاؤں کی انتہا کی طرف اشارہ کیا۔ اور ہمیں کپڑوں اور بالوں کو پیچھے کرنے سے منع کیا گیا تھا۔",
      englishText:
          "Ibn Abbas reported that the Messenger of Allah (ﷺ) said:I have been commanded to prostrate myself on seven bones:\" forehead,\" and then pointed with his hand towards his nose, hands, feet, and the extremities of the feet; and we were forbidden to fold back clothing and hair.",
      reference: "Sahih Muslim 490 - (A , D , E) , Sahih Muslim 491"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ، حَدَّثَنَا وَكِيعٌ، عَنْ شُعْبَةَ، عَنْ قَتَادَةَ، عَنْ أَنَسٍ، قَالَ قَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" اعْتَدِلُوا فِي السُّجُودِ وَلاَ يَبْسُطْ أَحَدُكُمْ ذِرَاعَيْهِ انْبِسَاطَ الْكَلْبِ \"",
      urduText:
          "انس نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: سجدے میں اعتدال کا خیال رکھو اور تم میں سے کوئی اپنے بازو (زمین پر) کتے کی طرح نہ پھیلائے۔",
      englishText:
          "Anas reported:The Messenger of Allah (ﷺ) said: Observe moderation in prostration, and let none of you stretch out his forearms (on the ground) like a dog.",
      reference: "Sahih Muslim 493 - A / B"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا يَحْيَى بْنُ يَحْيَى، قَالَ أَخْبَرَنَا عُبَيْدُ اللَّهِ بْنُ إِيَادٍ، عَنْ إِيَادٍ، عَنِ الْبَرَاءِ، قَالَ قَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" إِذَا سَجَدْتَ فَضَعْ كَفَّيْكَ وَارْفَعْ مِرْفَقَيْكَ \"",
      urduText:
          "البیرا (بی عازب) نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا۔ جب آپ سجدہ کریں تو اپنے ہاتھوں کی ہتھیلیاں زمین پر رکھیں اور کہنیوں کو اونچا کریں۔",
      englishText:
          "Al-Bira' (b. 'Azib) reported:The Messenger of Allah (ﷺ) said. When you prostrate yourself, place the palms of your hands on the ground and raise your elbows.",
      reference: "Sahih Muslim 494"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا عَمْرُو بْنُ سَوَّادٍ، أَخْبَرَنَا عَبْدُ اللَّهِ بْنُ وَهْبٍ، أَخْبَرَنَا عَمْرُو بْنُ الْحَارِثِ، وَاللَّيْثُ بْنُ سَعْدٍ، كِلاَهُمَا عَنْ جَعْفَرِ بْنِ رَبِيعَةَ، بِهَذَا الإِسْنَادِ ‏.‏ وَفِي رِوَايَةِ عَمْرِو بْنِ الْحَارِثِ كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا سَجَدَ يُجَنِّحُ فِي سُجُودِهِ حَتَّى يُرَى وَضَحُ إِبْطَيْهِ ‏.‏ وَفِي رِوَايَةِ اللَّيْثِ أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم كَانَ إِذَا سَجَدَ فَرَّجَ يَدَيْهِ عَنْ إِبْطَيْهِ حَتَّى إِنِّي لأَرَى بَيَاضَ إِبْطَيْهِ ‏.‏",
      urduText:
          "اس حدیث کو جعفر بن ربیع نے اسی سند کے ساتھ روایت کیا ہے۔ اور عمرو بن کی روایت میں ہے۔ الحارث (الفاظ یہ ہیں):\"رسول اللہ صلی اللہ علیہ وسلم جب سجدہ کرتے تو اپنے بازو اس طرح پھیلاتے تھے کہ آپ کی بغلوں کی سفیدی نظر آتی تھی۔\" اور لیث کی روایت میں یہ الفاظ ہیں: \" جب رسول اللہ صلی اللہ علیہ وسلم سجدہ کرتے تو آپ نے اپنے ہاتھ بغلوں سے پھیلائے تاکہ میں نے ان کی سفیدی دیکھی۔  \"",
      englishText:
          "This hadith has been narrated by Ja'far B. Rabi' with the same chain of transmitters. And in the narration transmitted by 'Amr b. al-Harith (the words are):\" When the Messenger of Allah (rtiay peace be upon him) prostrated, he spread out his arms so that the whiteness of his armpits was visible.\" And in the narration transmitted by al-Laith (the words are:\" When the Messenger of Allah (ﷺ) prostrated. he spread his hands from the armpits so that I saw their whiteness.\"",
      reference: "Sahih Muslim 495 - B , Sahih Muslim 497 , A - B"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا يَحْيَى بْنُ يَحْيَى، وَابْنُ أَبِي عُمَرَ، جَمِيعًا عَنْ سُفْيَانَ، - قَالَ يَحْيَى أَخْبَرَنَا سُفْيَانُ بْنُ عُيَيْنَةَ، - عَنْ عُبَيْدِ اللَّهِ بْنِ عَبْدِ اللَّهِ بْنِ الأَصَمِّ، عَنْ عَمِّهِ، يَزِيدَ بْنِ الأَصَمِّ عَنْ مَيْمُونَةَ، قَالَتْ كَانَ النَّبِيُّ صلى الله عليه وسلم إِذَا سَجَدَ لَوْ شَاءَتْ بَهْمَةٌ أَنْ تَمُرَّ بَيْنَ يَدَيْهِ لَمَرَّتْ ‏.‏",
      urduText:
          "میمونہ نے اطلاع دی:جب رسول اللہ صلی اللہ علیہ وسلم سجدہ کرتے تو اگر کوئی بھیڑ کا بچہ ان کے بازوؤں کے درمیان سے گزرنا چاہے تو گزر سکتا ہے۔",
      englishText:
          "Maimuna reported:When the Messenger of Allah (ﷺ) prostrated himself, if a lamb wanted to pass between his arms, it could pass.",
      reference: "Sahih Muslim 496"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا سَعِيدُ بْنُ مَنْصُورٍ، حَدَّثَنَا عَبْدُ الْعَزِيزِ بْنُ مُحَمَّدٍ، حَدَّثَنِي مُحَمَّدُ بْنُ عَبْدِ اللَّهِ بْنِ حَسَنٍ، عَنْ أَبِي الزِّنَادِ، عَنِ الأَعْرَجِ، عَنْ أَبِي هُرَيْرَةَ، قَالَ قَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" إِذَا سَجَدَ أَحَدُكُمْ فَلاَ يَبْرُكْ كَمَا يَبْرُكُ الْبَعِيرُ وَلْيَضَعْ يَدَيْهِ قَبْلَ رُكْبَتَيْهِ \"",
      urduText:
          "حضرت ابوہریرہ رضی اللہ عنہ سے روایت ہے کہ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا:جب تم میں سے کوئی سجدہ کرے تو وہ اونٹ کی طرح گھٹنے نہ ٹیکے بلکہ اپنے دونوں ہاتھ گھٹنوں سے پہلے رکھے۔",
      englishText:
          "Abu Hurairah reported the Messenger of Allah (ﷺ) as saying:when one of you prostrates himself he must not kneel in the manner of camel, but should put down his hands before his knees.",
      reference: "Sunan Abi Dawud 840 , Sunan Abi Dawud 841"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا أَحْمَدُ بْنُ حَنْبَلٍ، حَدَّثَنَا إِسْمَاعِيلُ، - يَعْنِي ابْنَ إِبْرَاهِيمَ - عَنْ أَيُّوبَ، عَنْ نَافِعٍ، عَنِ ابْنِ عُمَرَ، رَفَعَهُ قَالَ \" إِنَّ الْيَدَيْنِ تَسْجُدَانِ كَمَا يَسْجُدُ الْوَجْهُ فَإِذَا وَضَعَ أَحَدُكُمْ وَجْهَهُ فَلْيَضَعْ يَدَيْهِ وَإِذَا رَفَعَ فَلْيَرْفَعْهُمَا \"",
      urduText:
          "عبداللہ بن عمر رضی اللہ عنہما کہتے ہیں:آپ صلی اللہ علیہ وسلم نے فرمایا: دونوں ہاتھ اس طرح سجدہ کریں جیسے چہرہ سجدہ کرتا ہے۔ جب تم میں سے کوئی اپنا چہرہ (زمین پر) رکھے تو اپنے ہاتھ بھی (زمین پر) رکھے۔ اور جب وہ اٹھائے تو ان کو بھی اٹھائے۔",
      englishText:
          "Narrated Abdullah ibn Umar:The Prophet (ﷺ) said: Both hands prostrate as the face prostrates. When one of you puts his face (on the ground) he should put his hands too (on the ground). And when he raises it, he should raise them too.",
      reference: "Sunan Abi Dawud 892"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا قُتَيْبَةُ، حَدَّثَنَا بَكْرُ بْنُ مُضَرَ، عَنِ ابْنِ الْهَادِ، عَنْ مُحَمَّدِ بْنِ إِبْرَاهِيمَ، عَنْ عَامِرِ بْنِ سَعْدِ بْنِ أَبِي وَقَّاصٍ، عَنِ الْعَبَّاسِ بْنِ عَبْدِ الْمُطَّلِبِ، أَنَّهُ سَمِعَ رَسُولَ اللَّهِ صلى الله عليه وسلم يَقُولُ \" إِذَا سَجَدَ الْعَبْدُ سَجَدَ مَعَهُ سَبْعَةُ آرَابٍ وَجْهُهُ وَكَفَّاهُ وَرُكْبَتَاهُ وَقَدَمَاهُ \" قَالَ وَفِي الْبَابِ عَنِ ابْنِ عَبَّاسٍ وَأَبِي هُرَيْرَةَ وَجَابِرٍ وَأَبِي سَعِيدٍ ‏.‏ قَالَ أَبُو عِيسَى حَدِيثُ الْعَبَّاسِ حَدِيثٌ حَسَنٌ صَحِيحٌ وَعَلَيْهِ الْعَمَلُ عِنْدَ أَهْلِ الْعِلْمِ ‏.‏",
      urduText:
          "عباس بن عبدالمطلب نے بیان کیا کہ میں نے سنا:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: ”جب نمازی اس کے ساتھ سجدہ کرتا ہے: اس کا چہرہ، اس کے ہاتھ، اس کے گھٹنے اور اس کے پاؤں۔",
      englishText:
          "Al-Abbas bin Abdul-Muttalib narrated that he heard :Allah's Messenger Saying: \"When the worshipper prostrates with him: His face, his hands, his knees, and his feet.\"",
      reference: "Jami` at-Tirmidhi 272"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا يَعْقُوبُ بْنُ حُمَيْدِ بْنِ كَاسِبٍ، حَدَّثَنَا عَبْدُ الْعَزِيزِ بْنُ أَبِي حَازِمٍ، عَنْ يَزِيدَ بْنِ الْهَادِ، عَنْ مُحَمَّدِ بْنِ إِبْرَاهِيمَ التَّيْمِيِّ، عَنْ عَامِرِ بْنِ سَعْدٍ، عَنِ الْعَبَّاسِ بْنِ عَبْدِ الْمُطَّلِبِ، أَنَّهُ سَمِعَ النَّبِيَّ ـ صلى الله عليه وسلم ـ يَقُولُ \" إِذَا سَجَدَ الْعَبْدُ سَجَدَ مَعَهُ سَبْعَةُ آرَابٍ: وَجْهُهُ وَكَفَّاهُ وَرُكْبَتَاهُ وَقَدَمَاهُ \"",
      urduText:
          "حضرت عباس بن عبدالمطلب رضی اللہ عنہ سے روایت ہے کہ انہوں نے رسول اللہ صلی اللہ علیہ وسلم کو فرماتے سنا:\"جب بندہ سجدہ کرتا ہے تو اس کے جسم کے سات حصے اس کے ساتھ سجدہ کرتے ہیں: اس کا چہرہ، اس کے دونوں ہاتھ، اس کے دونوں گھٹنے اور اس کے دونوں پاؤں۔\"",
      englishText:
          "It was narrated from ‘Abbas bin ‘Abdul-Muttalib that he heard the Prophet (ﷺ) say:“When a person prostrates, seven parts of his body prostrate with him: His face, his two hands, his two knees, and his two feet.”",
      reference: "Sunan Ibn Majah 885"),

  // hadith on length of namaz .

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُوسَى بْنُ إِسْمَاعِيلَ، حَدَّثَنَا حَمَّادٌ، أَخْبَرَنَا ثَابِتٌ، وَحُمَيْدٌ، عَنْ أَنَسِ بْنِ مَالِكٍ، قَالَ مَا صَلَّيْتُ خَلْفَ رَجُلٍ أَوْجَزَ صَلاَةً مِنْ رَسُولِ اللَّهِ صلى الله عليه وسلم فِي تَمَامٍ وَكَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِذَا قَالَ \" سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ \" قَامَ حَتَّى نَقُولَ قَدْ أَوْهَمَ ثُمَّ يُكَبِّرُ وَيَسْجُدُ وَكَانَ يَقْعُدُ بَيْنَ السَّجْدَتَيْنِ حَتَّى نَقُولَ قَدْ أَوْهَمَ ‏.‏",
      urduText:
          "انس بی مالک نے کہا:میں نے کسی کے پیچھے رسول اللہ صلی اللہ علیہ وسلم کی نماز سے زیادہ مختصر نماز نہیں پڑھی اور وہ کامل تھی۔ جب رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: اللہ اس کی سنتا ہے جو اس کی حمد کرتا ہے، تو وہ لمبا کھڑا رہا، ہم نے سوچا کہ اس نے کوئی چیز چھوڑ دی ہے۔ پھر آپ صلی اللہ علیہ وسلم نے تکبیر کہی اور سجدہ کیا اور دونوں سجدوں کے درمیان اتنا لمبا بیٹھتے کہ ہم سمجھتے کہ آپ صلی اللہ علیہ وسلم نے کوئی چیز چھوڑ دی ہے۔",
      englishText:
          "Anas b. Malik said : I did not offer prayer behind anyone more brief than the one offered by the Messenger of Allah(ﷺ) and that was perfect. When the Messenger of Allah(ﷺ) said: “Allah listens to him who praises Him,” he stood long we thought that he had omitted something; then he said takbir(Allah is most great) and prostrate, and would sit between the two prostrations so long that we thought that he had omitted something.",
      reference: "Sunan Abi Dawud 853"),

  // Hadith on wudhu .

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا عَبَّادُ بْنُ مُوسَى الْخُتَّلِيُّ، حَدَّثَنَا إِسْمَاعِيلُ، - يَعْنِي ابْنَ جَعْفَرٍ - أَخْبَرَنِي يَحْيَى بْنُ عَلِيِّ بْنِ يَحْيَى بْنِ خَلاَّدِ بْنِ رَافِعٍ الزُّرَقِيُّ، عَنْ أَبِيهِ، عَنْ جَدِّهِ، عَنْ رِفَاعَةَ بْنِ رَافِعٍ، أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم فَقَصَّ هَذَا الْحَدِيثَ قَالَ فِيهِ \" فَتَوَضَّأْ كَمَا أَمَرَكَ اللَّهُ جَلَّ وَعَزَّ ثُمَّ تَشَهَّدْ فَأَقِمْ ثُمَّ كَبِّرْ فَإِنْ كَانَ مَعَكَ قُرْآنٌ فَاقْرَأْ بِهِ وَإِلاَّ فَاحْمَدِ اللَّهَ وَكَبِّرْهُ وَهَلِّلْهُ \" وَقَالَ فِيهِ \" وَإِنِ انْتَقَصْتَ مِنْهُ شَيْئًا انْتَقَصْتَ مِنْ صَلاَتِكَ \"",
      urduText:
          "رفاعہ ب۔ رافضی نے بھی اس روایت کو رسول اللہ صلی اللہ علیہ وسلم سے مختلف سند سے نقل کیا ہے۔ یہ ورژن جاتا ہے:پھر اس طرح وضو کرو جس طرح اللہ تعالیٰ نے تمہیں حکم دیا ہے، پھر شہادت کہو اور اٹھ کر تکبیر کہو۔ پھر اگر تمہیں کوئی قرآن معلوم ہو تو اس کی تلاوت کرو۔ دوسری صورت میں کہو: \"الحمد للہ\"؛ \"اللہ سب سے بڑا ہے\"؛ \" اللہ کے سوا کوئی معبود نہیں \" آپ (راوی) نے اس نسخہ میں یہ بھی فرمایا: اگر اس میں کچھ عیب رہ گیا تو وہ عیب تمہاری نماز میں رہے گا۔",
      englishText:
          "Rifa’ah b. Rafi has also narrated this tradition through a different chain from the Messenger of Allah(ﷺ). This version goes:Then perform ablution in a way Allah, the exalted, has commanded you, then say the shahadah and get up and say the takbir. Then if you know any of the Qur’an, recite it; otherwise say: “Praise be to Allah”; “Allah is most great”; “ There is no god but Allah” He ( the narrator) also said in this version: If some defect remains in this, that detect will remain in your prayer.",
      reference: "Sunan Abi Dawud 861"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنِي مُحَمَّدُ بْنُ رَافِعٍ، وَحَسَنُ بْنُ عَلِيٍّ الْحُلْوَانِيُّ، جَمِيعًا عَنْ عَبْدِ الرَّزَّاقِ، قَالَ ابْنُ رَافِعٍ حَدَّثَنَا عَبْدُ الرَّزَّاقِ، أَخْبَرَنَا ابْنُ جُرَيْجٍ، حَدَّثَنِي ابْنُ شِهَابٍ، عَنْ حَدِيثِ، عَبَّادِ بْنِ زِيَادٍ أَنَّ عُرْوَةَ بْنَ الْمُغِيرَةِ بْنِ شُعْبَةَ، أَخْبَرَهُ أَنَّ الْمُغِيرَةَ بْنَ شُعْبَةَ أَخْبَرَهُ أَنَّهُ، غَزَا مَعَ رَسُولِ اللَّهِ صلى الله عليه وسلم تَبُوكَ - قَالَ الْمُغِيرَةُ - فَتَبَرَّزَ رَسُولُ اللَّهِ صلى الله عليه وسلم قِبَلَ الْغَائِطِ فَحَمَلْتُ مَعَهُ إِدَاوَةً قَبْلَ صَلاَةِ الْفَجْرِ فَلَمَّا رَجَعَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِلَىَّ أَخَذْتُ أُهَرِيقُ عَلَى يَدَيْهِ مِنَ الإِدَاوَةِ وَغَسَلَ يَدَيْهِ ثَلاَثَ مَرَّاتٍ ثُمَّ غَسَلَ وَجْهَهُ ثُمَّ ذَهَبَ يُخْرِجُ جُبَّتَهُ عَنْ ذِرَاعَيْهِ فَضَاقَ كُمَّا جُبَّتِهِ فَأَدْخَلَ يَدَيْهِ فِي الْجُبَّةِ حَتَّى أَخْرَجَ ذِرَاعَيْهِ مِنْ أَسْفَلِ الْجُبَّةِ ‏.‏ وَغَسَلَ ذِرَاعَيْهِ إِلَى الْمِرْفَقَيْنِ ثُمَّ تَوَضَّأَ عَلَى خُفَّيْهِ ثُمَّ أَقْبَلَ - قَالَ الْمُغِيرَةُ - فَأَقْبَلْتُ مَعَهُ حَتَّى نَجِدُ النَّاسَ قَدْ قَدَّمُوا عَبْدَ الرَّحْمَنِ بْنَ عَوْفٍ فَصَلَّى لَهُمْ فَأَدْرَكَ رَسُولُ اللَّهِ صلى الله عليه وسلم إِحْدَى الرَّكْعَتَيْنِ فَصَلَّى مَعَ النَّاسِ الرَّكْعَةَ الآخِرَةَ فَلَمَّا سَلَّمَ عَبْدُ الرَّحْمَنِ بْنُ عَوْفٍ قَامَ رَسُولُ اللَّهِ صلى الله عليه وسلم يُتِمُّ صَلاَتَهُ فَأَفْزَعَ ذَلِكَ الْمُسْلِمِينَ فَأَكْثَرُوا التَّسْبِيحَ فَلَمَّا قَضَى النَّبِيُّ صلى الله عليه وسلم صَلاَتَهُ أَقْبَلَ عَلَيْهِمْ ثُمَّ قَالَ \" أَحْسَنْتُمْ \" أَوْ قَالَ \" قَدْ أَصَبْتُمْ \" يَغْبِطُهُمْ أَنْ صَلَّوُا الصَّلاَةَ لِوَقْتِهَا ‏.‏",
      urduText:
          "مغیرہ بی۔ شعبہ رضی اللہ عنہ سے روایت ہے کہ انہوں نے رسول اللہ صلی اللہ علیہ وسلم کے ساتھ غزوہ تبوک میں شرکت کی۔ رسول اللہ صلی اللہ علیہ وسلم صبح کی نماز سے پہلے فطرت کی پکار پر لبیک کہنے نکلے۔ اور میں اس کے ساتھ ایک گھڑا (پانی سے بھرا ہوا) لے گیا۔ جب رسول اللہ صلی اللہ علیہ وسلم میرے پاس (حاجت کے بعد) واپس آئے۔ میں برتن میں سے ان کے ہاتھوں پر پانی ڈالنے لگا، اس نے تین بار اپنے ہاتھ دھوئے، پھر تین بار اپنا چہرہ دھویا۔ اس کے بعد اس نے اپنی چادر کی آستینیں بازوؤں پر باندھنے کی کوشش کی لیکن آستینیں تنگ ہونے کی وجہ سے اس نے اپنے ہاتھ چادر میں ڈالے اور پھر اپنے بازوؤں کو چادر کے نیچے کہنی تک لے آئے اور پھر اپنے جوتوں پر مسح کیا اور پھر حرکت کی۔ پر مغیرہ نے کہا:میں بھی اس کے ساتھ چل پڑا یہاں تک کہ وہ لوگوں کے پاس آیا اور (انہوں نے دیکھا) کہ وہ عبد الرحمن بن کی امامت میں نماز پڑھ رہے تھے۔ 'عوف۔ رسول اللہ صلی اللہ علیہ وسلم دو میں سے ایک رکعت حاصل کر سکتے تھے اور لوگوں کے ساتھ (یہ) آخری رکعت کہی۔ جب عبدالرحمٰن بی۔ عوف نے سلام کیا تو رسول اللہ صلی اللہ علیہ وسلم نماز مکمل کرنے کے لیے اٹھے۔ اس سے مسلمان خوفزدہ ہو گئے اور ان میں سے اکثر رب کی تسبیح پڑھنے لگے۔ جب رسول اللہ صلی اللہ علیہ وسلم نماز سے فارغ ہوئے تو آپ صلی اللہ علیہ وسلم ان کی طرف متوجہ ہوئے اور فرمایا: تم نے اچھا کیا، یا خوشی کے ساتھ کہا: تم نے ٹھیک کیا جو وقت مقررہ پر پڑھا۔",
      englishText:
          "Mughira b. Shu'ba reported that he participated In the expedition of Tabuk along with the Messenger of Allah (ﷺ). The Messenger of Allah (ﷺ) went out to answer the call of nature before the morning prayer. and I carried along with him a jar (full of water). When the Messenger of Allah (ﷺ) came back to me (after relieving himself). I began to pour water upon his hands out of the jar and he washed his hands three times, then washed his face three times. He then tried to tuck up the sleeves of his cloak upon his forearms but since the sleeves were tight he inserted his hands in the cloak and then brought out his forearms up to the elbow below the cloak, and then wiped over his shoes and then moved on. Mughira said:I also moved along with him till he came to the people and (he found) that they had been saying their prayer under the Imamah of 'Abd al-Rahman b. 'Auf. The Messenger of Allah (ﷺ) could get one rak ah out of two and said (this) last rak'ah along with the people. When Abd al-Rahman b. 'Auf pronounced the salutation, the Messenger of Allah (ﷺ) got up to complete the prayer. This made the Muslims terrified and most of them began to recite the glory of the Lord. When the Messenger of Allah (ﷺ) finished his prayer, he turned towards them and then said: You did well, or said with a sense of joy: You did the right thing that you said prayer at the appointed hour.",
      reference: "Muslim 274l"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا الْحَسَنُ بْنُ عَلِيٍّ، حَدَّثَنَا هِشَامُ بْنُ عَبْدِ الْمَلِكِ، وَالْحَجَّاجُ بْنُ مِنْهَالٍ، قَالاَ حَدَّثَنَا هَمَّامٌ، حَدَّثَنَا إِسْحَاقُ بْنُ عَبْدِ اللَّهِ بْنِ أَبِي طَلْحَةَ، عَنْ عَلِيِّ بْنِ يَحْيَى بْنِ خَلاَّدٍ، عَنْ أَبِيهِ، عَنْ عَمِّهِ، رِفَاعَةَ بْنِ رَافِعٍ بِمَعْنَاهُ قَالَ فَقَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" إِنَّهَا لاَ تَتِمُّ صَلاَةُ أَحَدِكُمْ حَتَّى يُسْبِغَ الْوُضُوءَ كَمَا أَمَرَهُ اللَّهُ عَزَّ وَجَلَّ فَيَغْسِلَ وَجْهَهُ وَيَدَيْهِ إِلَى الْمِرْفَقَيْنِ وَيَمْسَحَ بِرَأْسِهِ وَرِجْلَيْهِ إِلَى الْكَعْبَيْنِ ثُمَّ يُكَبِّرُ اللَّهَ عَزَّ وَجَلَّ وَيَحْمَدُهُ ثُمَّ يَقْرَأُ مِنَ الْقُرْآنِ مَا أُذِنَ لَهُ فِيهِ وَتَيَسَّرَ \" فَذَكَرَ نَحْوَ حَدِيثِ حَمَّادٍ قَالَ \" ثُمَّ يُكَبِّرُ فَيَسْجُدُ فَيُمَكِّنُ وَجْهَهُ \" قَالَ هَمَّامٌ وَرُبَّمَا قَالَ \" جَبْهَتَهُ مِنَ الأَرْضِ حَتَّى تَطْمَئِنَّ مَفَاصِلُهُ وَتَسْتَرْخِيَ ثُمَّ يُكَبِّرُ فَيَسْتَوِي قَاعِدًا عَلَى مَقْعَدِهِ وَيُقِيمُ صُلْبَهُ \" فَوَصَفَ الصَّلاَةَ هَكَذَا أَرْبَعَ رَكَعَاتٍ حَتَّى فَرَغَ \" لاَ تَتِمُّ صَلاَةُ أَحَدِكُمْ حَتَّى يَفْعَلَ ذَلِكَ \"",
      urduText:
          "رفاعہ بن رافع کہتے ہیں:اس روایت میں (حدیث نمبر 856) کا اضافہ ہے: رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: تم میں سے کسی کی نماز اس وقت تک مکمل نہیں ہوتی جب تک کہ وہ بالکل ٹھیک وضو نہ کرے جیسا کہ اللہ تعالیٰ نے تمہیں حکم دیا ہے۔ وہ اپنا چہرہ اور ہاتھ کہنیوں تک دھوئے اور اپنے سر کا مسح کرے اور ٹخنوں تک پاؤں دھوئے۔ پھر وہ اللہ کی تسبیح کرے اور اس کی حمد کرے۔ پھر اسے چاہیے کہ جتنا قرآن اس کے لیے آسان ہو پڑھے۔(راوی نے پھر حماد کی حدیث نمبر 856 کی طرح روایت کی)۔ آپ نے فرمایا: پھر وہ خود تکبیر کہے اور سجدہ کرے تاکہ اس کا چہرہ سکون میں رہے۔ہمام (ذیلی راوی) نے کہا: بعض اوقات اس نے بیان کیا: اس لیے کہ اس کی پیشانی زمین پر ٹھہر جائے اور اس کے جوڑ اپنی جگہ پر لوٹ جائیں اور ڈھیلے ہو جائیں۔ اس کے بعد تکبیر کہے اور اپنے کولہوں پر سیدھے بیٹھ کر پیٹھ کو کھڑا کرے۔ اس نے نماز کی نوعیت اس طرح بیان کی کہ چار رکعت پڑھی یہاں تک کہ اس سے فارغ ہو گئے۔ تم میں سے کسی کی نماز اس وقت تک پوری نہیں ہوتی جب تک وہ ایسا نہ کرے۔",
      englishText:
          "Narrated Rifa'ah ibn Rafi':This version (of Hadith No 856) adds: The Messenger of Allah (ﷺ) said: The prayer of any of you is not complete until he performs ablution perfectly, as Allah, the Exalted, has ordered you. He should wash his face and hands up to the elbows, and wipe his head and (wash) his feet up to the ankles. Then he should exalt Allah and praise Him. Then he should recite the Qur'an as much as it is convenient for him.(Narrator then narrated the tradition like Hammad's, No. 856). He said: He then utter the takbir and prostration himself so that his face is at rest.Hammam (sub-narrator) said: Sometimes he reported: So that his forehead is at rest on the ground, and his joints return to their places and are loosened. Then he should say the takbir and then sit right on his hips and erect his back. He described the nature of prayer in this way by offering four rak'ahs until he finished it. The prayer of any of you is not complete unless he does so.",
      reference: "Sunan Abi Dawud 858"),

  // If some one forget namaz .

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا قُتَيْبَةُ، حَدَّثَنَا اللَّيْثُ، عَنِ ابْنِ شِهَابٍ، عَنِ الأَعْرَجِ، عَنْ عَبْدِ اللَّهِ ابْنِ بُحَيْنَةَ الأَسَدِيِّ، حَلِيفِ بَنِي عَبْدِ الْمُطَّلِبِ أَنَّ النَّبِيَّ صلى الله عليه وسلم قَامَ فِي صَلاَةِ الظُّهْرِ وَعَلَيْهِ جُلُوسٌ فَلَمَّا أَتَمَّ صَلاَتَهُ سَجَدَ سَجْدَتَيْنِ يُكَبِّرُ فِي كُلِّ سَجْدَةٍ وَهُوَ جَالِسٌ قَبْلَ أَنْ يُسَلِّمَ وَسَجَدَهُمَا النَّاسُ مَعَهُ مَكَانَ مَا نَسِيَ مِنَ الْجُلُوسِ ‏.‏ قَالَ وَفِي الْبَابِ عَنْ عَبْدِ الرَّحْمَنِ بْنِ عَوْفٍ ‏.‏",
      urduText:
          "بنو عبدالمطلب کے حلیف عبداللہ بن بوہینہ الاسدی نے بیان کیا:\"رسول اللہ صلی اللہ علیہ وسلم ظہر کی نماز کے لیے کھڑے ہوئے، اور آپ کے پاس بیٹھنے کے لیے بیٹھنا تھا، تو جب آپ صلی اللہ علیہ وسلم نے اپنی نماز پوری کی تو آپ نے دو سجدے کیے، ہر سجدے کے لیے تکبیر کہی، چنانچہ آپ صلی اللہ علیہ وسلم سلام کرنے سے پہلے بیٹھے تھے۔ لوگوں نے اس کے ساتھ بیٹھنے کی جگہ سجدہ کیا جسے وہ بھول گیا تھا۔",
      englishText:
          "Abdullah bin Buhainah Al-Asdi the ally of Banu Abdul-Muttalib narrated:\"The Prophet (S) stood for the Zuhr prayer, and he had a sitting to perform, so when he completed his Salat, he performed two prostrations, saying the Takbir for each prostration. So he was sitting before saying the Salam and the people prostrated with him in place of the sitting he forgot.",
      reference: "Jami` at-Tirmidhi 391"),

  // Saff bananey ka byan

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا عِيسَى بْنُ إِبْرَاهِيمَ الْغَافِقِيُّ، حَدَّثَنَا ابْنُ وَهْبٍ، ح وَحَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ، حَدَّثَنَا اللَّيْثُ، - وَحَدِيثُ ابْنِ وَهْبٍ أَتَمُّ - عَنْ مُعَاوِيَةَ بْنِ صَالِحٍ، عَنْ أَبِي الزَّاهِرِيَّةِ، عَنْ كَثِيرِ بْنِ مُرَّةَ، عَنْ عَبْدِ اللَّهِ بْنِ عُمَرَ، - قَالَ قُتَيْبَةُ عَنْ أَبِي الزَّاهِرِيَّةِ، عَنْ أَبِي شَجَرَةَ، لَمْ يَذْكُرِ ابْنَ عُمَرَ - أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم قَالَ \" أَقِيمُوا الصُّفُوفَ وَحَاذُوا بَيْنَ الْمَنَاكِبِ وَسُدُّوا الْخَلَلَ وَلِينُوا بِأَيْدِي إِخْوَانِكُمْ \" لَمْ يَقُلْ عِيسَى \" بِأَيْدِي إِخْوَانِكُمْ \" \" وَلاَ تَذَرُوا فُرُجَاتٍ لِلشَّيْطَانِ وَمَنْ وَصَلَ صَفًّا وَصَلَهُ اللَّهُ وَمَنْ قَطَعَ صَفًّا قَطَعَهُ اللَّهُ \" قَالَ أَبُو دَاوُدَ أَبُو شَجَرَةَ كَثِيرُ بْنُ مُرَّةَ ‏.‏ قَالَ أَبُو دَاوُدَ وَمَعْنَى \" وَلِينُوا بِأَيْدِي إِخْوَانِكُمْ \" إِذَا جَاءَ رَجُلٌ إِلَى الصَّفِّ فَذَهَبَ يَدْخُلُ فِيهِ فَيَنْبَغِي أَنْ يُلَيِّنَ لَهُ كُلُّ رَجُلٍ مَنْكِبَيْهِ حَتَّى يَدْخُلَ فِي الصَّفِّ ‏.‏",
      urduText:
          "عبداللہ بن عمر رضی اللہ عنہما کہتے ہیں:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: صفیں ترتیب دو، کندھے سے کندھا ملا کر کھڑے رہو، فاصلوں کو بند کرو، اپنے بھائیوں کے ہاتھ میں نرمی اختیار کرو، اور شیطان کے لیے جگہ نہ چھوڑو۔ جو شخص صف باندھے گا اللہ اس کو جوڑ دے گا اور جو صف کو توڑ دے گا اللہ اسے کاٹ دے گا۔ابوداؤد کہتے ہیں: ابو شجرہ کا نام کثیر ہے۔ مرہ",
      englishText:
          "Narrated Abdullah ibn Umar:The Prophet (ﷺ) said: Set the rows in order, stand shoulder to shoulder, close the gaps, be pliant in the hands of your brethren, and do not leave openings for the devil. If anyone joins up a row, Allah will join him up, but if anyone breaks a row, Allah will cut him off.Abu Dawud said: The name of Abu Shjrah is Kathir b. Murrah.",
      reference: "Sunan Abi Dawud 666"),

  PropheticWayOfPrayerModel(
      id: 55,
      arabicText:
          "حَدَّثَنَا مُسْلِمُ بْنُ إِبْرَاهِيمَ، حَدَّثَنَا أَبَانُ، عَنْ قَتَادَةَ، عَنْ أَنَسِ بْنِ مَالِكٍ، عَنْ رَسُولِ اللَّهِ صلى الله عليه وسلم قَالَ \" رُصُّوا صُفُوفَكُمْ وَقَارِبُوا بَيْنَهَا وَحَاذُوا بِالأَعْنَاقِ فَوَالَّذِي نَفْسِي بِيَدِهِ إِنِّي لأَرَى الشَّيْطَانَ يَدْخُلُ مِنْ خَلَلِ الصَّفِّ كَأَنَّهَا الْحَذَفُ \"",
      urduText:
          "انس بن مالک رضی اللہ عنہ روایت کرتے ہیں:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: اپنی صفوں میں ایک دوسرے کے قریب کھڑے ہو جاؤ، انہیں ایک دوسرے کے قریب لاؤ، اور گردن کے ساتھ کھڑے ہو جاؤ، کیونکہ اس ذات کی قسم جس کے ہاتھ میں میری جان ہے، میں شیطان کو صفوں کے سوراخوں سے اس طرح اندر آتا ہوا دیکھتا ہوں جیسے چھوٹی کالی بھیڑ",
      englishText:
          "Narrated Anas ibn Malik:The Prophet (ﷺ) said: Stand close together in your rows, bring them near one another, and stand neck to neck, for by Him in Whose hand my soul is, I see the devil coming in through openings in the row just like a small black sheep.",
      reference: "Sunan Abi Dawud 667"),

  // PropheticWayOfPrayerModel(
  //     id: 62,
  //     arabicText: arabicText,
  //     urduText: urduText,
  //     englishText: englishText,
  //     reference: reference),
];

// Tashah-hud(188)باب الإِشَارَةِ فِي التَّشَهُّدِ

// Qunut


// Prohibition
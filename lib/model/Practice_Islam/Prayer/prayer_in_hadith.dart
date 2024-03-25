// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PrayerInHadithModel {
  int id;
  String quranicVerseArabicText;
  String quranicVerseUrduText;
  String quranicVerseEnglishText;
  String quranicVerseReference;
  PrayerInHadithModel({
    required this.id,
    required this.quranicVerseArabicText,
    required this.quranicVerseUrduText,
    required this.quranicVerseEnglishText,
    required this.quranicVerseReference,
  });

  PrayerInHadithModel copyWith({
    int? id,
    String? quranicVerseArabicText,
    String? quranicVerseUrduText,
    String? quranicVerseEnglishText,
    String? quranicVerseReference,
  }) {
    return PrayerInHadithModel(
      id: id ?? this.id,
      quranicVerseArabicText:
          quranicVerseArabicText ?? this.quranicVerseArabicText,
      quranicVerseUrduText: quranicVerseUrduText ?? this.quranicVerseUrduText,
      quranicVerseEnglishText:
          quranicVerseEnglishText ?? this.quranicVerseEnglishText,
      quranicVerseReference:
          quranicVerseReference ?? this.quranicVerseReference,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'quranicVerseArabicText': quranicVerseArabicText,
      'quranicVerseUrduText': quranicVerseUrduText,
      'quranicVerseEnglishText': quranicVerseEnglishText,
      'quranicVerseReference': quranicVerseReference,
    };
  }

  factory PrayerInHadithModel.fromMap(Map<String, dynamic> map) {
    return PrayerInHadithModel(
      id: map['id'] as int,
      quranicVerseArabicText: map['quranicVerseArabicText'] as String,
      quranicVerseUrduText: map['quranicVerseUrduText'] as String,
      quranicVerseEnglishText: map['quranicVerseEnglishText'] as String,
      quranicVerseReference: map['quranicVerseReference'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PrayerInHadithModel.fromJson(String source) =>
      PrayerInHadithModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PrayerInHadithModel(id: $id, quranicVerseArabicText: $quranicVerseArabicText, quranicVerseUrduText: $quranicVerseUrduText, quranicVerseEnglishText: $quranicVerseEnglishText, quranicVerseReference: $quranicVerseReference)';
  }

  @override
  bool operator ==(covariant PrayerInHadithModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.quranicVerseArabicText == quranicVerseArabicText &&
        other.quranicVerseUrduText == quranicVerseUrduText &&
        other.quranicVerseEnglishText == quranicVerseEnglishText &&
        other.quranicVerseReference == quranicVerseReference;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        quranicVerseArabicText.hashCode ^
        quranicVerseUrduText.hashCode ^
        quranicVerseEnglishText.hashCode ^
        quranicVerseReference.hashCode;
  }
}

List<PrayerInHadithModel> prayerInTheLightOfHadithDataList =
    <PrayerInHadithModel>[
  PrayerInHadithModel(
      id: 1,
      quranicVerseArabicText:
          "وعنه قال: قال رسول الله صلى الله عليه وسلم : \"ليس صلاة أثقل على المنافقين من صلاة الفجر والعشاء ولو يعلمون ما فيهما لأتوهما ولو حبوًا\" \(متفق عليه\).",
      quranicVerseUrduText:
          "ابوہریرہ رضی اللہ عنہ نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: ”منافقوں پر فجر اور عشاء کی نماز سے زیادہ کوئی نماز بھاری نہیں، اور اگر وہ ان کی فضیلت کو جان لیں تو ان کے پاس پہنچیں، خواہ وہ ان کے لیے نماز پڑھے۔ ایسا کرنے کے لیے رینگنا پڑا۔\"[بخاری و مسلم]۔",
      quranicVerseEnglishText:
          "Abu Hurairah (May Allah be pleased with him) reported:The Messenger of Allah (ﷺ) said, \"No Salat is more burdensome to the hypocrites than the Fajr (dawn) prayer and the 'Isha' (night) prayer; and if they knew their merits, they would come to them even if they had to crawl to do so.\"[Al-Bukhari and Muslim].",
      quranicVerseReference: "Riyad as-Salihin 1073"),
  PrayerInHadithModel(
      id: 2,
      quranicVerseArabicText:
          "حَدَّثَنَا مَحْمُودُ بْنُ غَيْلاَنَ، حَدَّثَنَا بِشْرُ بْنُ السَّرِيِّ، حَدَّثَنَا سُفْيَانُ، عَنْ عُثْمَانَ بْنِ حَكِيمٍ، عَنْ عَبْدِ الرَّحْمَنِ بْنِ أَبِي عَمْرَةَ، عَنْ عُثْمَانَ بْنِ عَفَّانَ، قَالَ قَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم \" مَنْ شَهِدَ الْعِشَاءَ فِي جَمَاعَةٍ كَانَ لَهُ قِيَامُ نِصْفِ لَيْلَةٍ وَمَنْ صَلَّى الْعِشَاءَ وَالْفَجْرَ فِي جَمَاعَةٍ كَانَ لَهُ كَقِيَامِ لَيْلَةٍ \" قَالَ وَفِي الْبَابِ عَنِ ابْنِ عُمَرَ وَأَبِي هُرَيْرَةَ وَأَنَسٍ وَعُمَارَةَ بْنِ رُوَيْبَةَ وَجُنْدَبِ بْنِ عَبْدِ اللَّهِ بْنِ سُفْيَانَ الْبَجَلِيِّ وَأُبَىِّ بْنِ كَعْبٍ وَأَبِي مُوسَى وَبُرَيْدَةَ . قَالَ أَبُو عِيسَى حَدِيثُ عُثْمَانَ حَدِيثٌ حَسَنٌ . وَقَدْ رُوِيَ هَذَا الْحَدِيثُ عَنْ عَبْدِ الرَّحْمَنِ بْنِ أَبِي عَمْرَةَ عَنْ عُثْمَانَ مَوْقُوفًا وَرُوِيَ مِنْ غَيْرِ وَجْهٍ عَنْ عُثْمَانَ مَرْفُوعًا .",
      quranicVerseUrduText:
          "عثمان بن عفان نے بیان کیا کہ:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: جس نے عشاء کی نماز باجماعت پڑھی، اس کے لیے نصف رات کے قیام کا ثواب ہے، اور جس نے عشاء اور فجر کی نماز جماعت کے ساتھ پڑھی، اس کے لیے گویا اس کے قیام کا ثواب ہے۔ پوری رات کھڑے (نماز میں) گزاری تھی۔",
      quranicVerseEnglishText:
          "Uthman bin Affan narrated that :Allah's Messenger said: \"Whoever attends Isha (prayer) in congregation, then he has (the reward as if he had) stood half of the night. And whoever prays Isha and Fajr in congregation, then he has (the reward as if he had) spend the entire night standing (in prayer).",
      quranicVerseReference: "Jami` at-Tirmidhi 221"),
  PrayerInHadithModel(
      id: 3,
      quranicVerseArabicText:
          "حَدَّثَنَا قُتَيْبَةُ، حَدَّثَنَا جَرِيرٌ، وَأَبُو مُعَاوِيَةَ عَنِ الأَعْمَشِ، عَنْ أَبِي سُفْيَانَ، عَنْ جَابِرٍ، أَنَّ النَّبِيَّ صلى الله عليه وسلم قَالَ \" بَيْنَ الْكُفْرِ وَالإِيمَانِ تَرْكُ الصَّلاَةِ \" ",
      quranicVerseUrduText:
          "جابر رضی اللہ عنہ بیان کرتے ہیں:کہ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: کفر اور ایمان کے درمیان نماز کا ترک کرنا ہے۔",
      quranicVerseEnglishText:
          "Narrated Jabir:that the Prophet (ﷺ) said: \"Between disbelief and faith is abandoning the Salat.\"",
      quranicVerseReference: "Jami` at-Tirmidhi 2618"),
  PrayerInHadithModel(
      id: 4,
      quranicVerseArabicText:
          "قَالَ رَسُولُ اللٌّهِ (ص): أَوَّلُ مَا افْتَرَضَ اللٌّهُ عَلى أُمَّتِي الصَّلَوَاتُ الْخَمْسُ وَ أَوَّلُ مَا يُرفَعُ مِنْ أَعْمَالِهِمْ الصَّلَوَاتُ الْخَمْسُ وَ أَوَّلُ مَا يُسْأَلُونَ عَـنْهُ الصَّلَوَاتُ الْخَمْسُ.",
      quranicVerseUrduText:
          "رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: اللہ تعالیٰ نے میری امت پر سب سے پہلے پانچ نمازیں فرض کیں اور ان کی عبادتوں میں سے سب سے پہلی چیز پانچ نمازیں ہوں گی۔ ; اور ان سے سب سے پہلے پانچوں نمازوں کے بارے میں سوال کیا جائے گا۔",
      quranicVerseEnglishText:
          "The Messenger of Allah (peace be upon him and his progeny) said: “The first thing that Allah made obligatory upon my Ummah was the five prayers, and the first thing from their acts of worship that shall be taken up will be the five prayers; and the first thing that they will be questioned about will be the five prayers ",
      quranicVerseReference: "Kanzul `Ummal, Volume 7, Tradition 18859"),
  PrayerInHadithModel(
      id: 5,
      quranicVerseArabicText:
          "قَالَ رَسُولُ اللٌّهِ (ص): خَمْسُ صَلَوَاتٍ مَنْ حَافَظَ عَلَيْهِنَّ كَانَتْ لَهُ نُوراً وَ بُرْهَاناً وَ نَجَاةً يَومَ الْقِيَامَةِ.",
      quranicVerseUrduText:
          "رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: جو شخص پانچوں نمازوں کی پابندی کرے گا، یہ اس کے لیے قیامت کے دن روشنی اور نجات کا ذریعہ ہوں گی۔",
      quranicVerseEnglishText:
          "The Messenger of Allah (peace be upon him and his progeny) said: “One who adheres to the five (daily) prayers diligently, they shall be a means of illumination and salvation for him on the Day of Judgment.”",
      quranicVerseReference: "Kanzul `Ummal, Volume 7, Tradition 18862"),
  PrayerInHadithModel(
      id: 6,
      quranicVerseArabicText:
          "قَالَ رَسُولُ اللٌّهِ (ص): عَلَمُ الإِسْلاَمِ الصَّلاةُ فَمَنْ فَرَّغَ لَـهَا قَلْبَهُ وَ حَافَظَ عَلَيْهَا بِحَدِّهَا وَ وَقْـتِهَا وَ سُـنَـنِهَا فَهُوَ مُؤْمِنٌ.",
      quranicVerseUrduText:
          "رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: نماز اسلام کا معیار ہے۔ جو نماز کو پسند کرتا ہے اور ان کی حدود و قیود اور طریقوں کی پابندی کرتا ہے وہ سچا مومن ہے۔‘‘",
      quranicVerseEnglishText:
          "The Messenger of Allah (peace be upon him and his progeny) said: “The prayer is the standard of Islam. Whosoever loves prayers, and observes their limits, timings, and methods, is a true believer.”",
      quranicVerseReference: "Kanzul `Ummal, Volume 7, Tradition 18870"),
  PrayerInHadithModel(
      id: 7,
      quranicVerseArabicText:
          "قَالَ رَسُولُ اللٌّهِ (ص): مَثَلُ الصَّلَوَاتِ الْخَمْسِ كَمَثَلِ نَهْرٍ جَارٍ عَذْبٍ عَلى بَابِ أَحَدِكُمْ يَغْتَسِلُ فِيهِ كُلُّ يَومٍ خَمْسَ مَرَّاتٍ فَمَا يَبقَى ذٌلِكَ مِنَ الدَّنَسِ.",
      quranicVerseUrduText:
          "رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: ”پانچوں نمازوں کی مثال تمہارے گھروں کے سامنے صاف پانی کی ندی کی سی ہے جس میں آدمی دن میں پانچ مرتبہ غسل کرتا ہے۔ اسے تمام گندگی سے پاک کرتا ہے۔",
      quranicVerseEnglishText:
          "The Messenger of Allah (peace be upon him and his progeny) said: “The example of the five (daily) prayers is like that of a clear-water river flowing in front of your houses in which a person washes five times a day – cleansing him from all dirt.”",
      quranicVerseReference: "Kanzul `Ummal, Volume 7, Tradition 18931"),
  PrayerInHadithModel(
      id: 8,
      quranicVerseArabicText:
          "عَنْ رَسُولِ اللٌّهِ (ص): قَالَ اللٌّهُ تَعَالـى: إِفتَرَضْتُ عَلى أُمَّتِكَ خَمْسَ صَلَوَاتٍ وَ عَهِدتُ عِنْدِي عَهْداً أَنَّهُ مَنْ حَافَظَ عَلَيْهِنَّ لِوَقْـتِهَا أَدْخَلْـتُهُ الْجَـنَّةَ وَ مَنْ لَمْ يُحَافِظْ عَلَيْهِنَّ فَلاَ عَهْدَ لَهُ عِنْدِي.",
      quranicVerseUrduText:
          "رسول اللہ صلی اللہ علیہ وسلم فرماتے ہیں کہ اللہ تعالیٰ کا ارشاد ہے کہ میں نے آپ کی امت پر پانچوں نمازیں فرض کی ہیں اور اپنے آپ سے عہد لیا ہے کہ جو اپنی نمازوں کو ان کے اوقات کے مطابق ادا کرے گا۔ میں اسے جنت میں جگہ دوں گا۔ رہی بات جو وقت کی پابندی نہیں کرتا اس سے میرا کوئی عہد نہیں ہے۔",
      quranicVerseEnglishText:
          "The Messenger of Allah (peace be upon him and his progeny) states that Allah, The Exalted has said: “I have made the five prayers obligatory upon your Ummah and have made a covenant with Myself that one who maintains his prayers concerning their timings, I shall place him in Paradise. As for the one, who does not maintain the timings, I have no covenant (with him).”",
      quranicVerseReference: "Kanzul `Ummal, Volume 7, Tradition 18872"),
  PrayerInHadithModel(
      id: 9,
      quranicVerseArabicText:
          "قَالَ النَّبِيُّ (ص): مَنْ تَرَكَ صَلاَةً لاَ يَرْجُو ثَوَابَهَا وَ لاَ يَخَافُ عِقَابَهَا فَلاَ أُبَالِي أَيَمُوتُ يَهُودِيًّا أوْ نَصْرَانِـيًّا أوْ مَجُوسِيًّا.",
      quranicVerseUrduText:
          "رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: ”جو شخص اپنی نماز کو اس طرح ترک کر دے کہ نہ اس کے ثواب کی خواہش رکھتا ہو اور نہ اس کے عذاب سے ڈرتا ہو تو مجھے اس کی کوئی پرواہ نہیں کہ وہ یہودی ہو کر مرے یا عیسائی۔ یا جادوگر؟",
      quranicVerseEnglishText:
          "The Noble Prophet (peace be upon him and his progeny) has said: “If a person abandons his prayer such that he neither desires its rewards nor fears its chastisement, for such a person I do not care if he dies a Jew, a Christian or a Magian",
      quranicVerseReference: "Biharul Anwar, Volume 82, Page 202"),

  PrayerInHadithModel(
      id: 10,
      quranicVerseArabicText:
          "حَدَّثَنَا عَبْدُ اللَّهِ بْنُ يُوسُفَ، قَالَ أَخْبَرَنَا مَالِكٌ، عَنْ صَالِحِ بْنِ كَيْسَانَ، عَنْ عُرْوَةَ بْنِ الزُّبَيْرِ، عَنْ عَائِشَةَ أُمِّ الْمُؤْمِنِينَ، قَالَتْ \" فَرَضَ اللَّهُ الصَّلاَةَ حِينَ فَرَضَهَا رَكْعَتَيْنِ رَكْعَتَيْنِ فِي الْحَضَرِ وَالسَّفَرِ، فَأُقِرَّتْ صَلاَةُ السَّفَرِ، وَزِيدَ فِي صَلاَةِ الْحَضَرِ \"",
      quranicVerseUrduText:
          "عائشہ رضی اللہ عنہا نے بیان کیا:مؤمنوں کی ماں: اللہ تعالیٰ نے جب نماز کا حکم دیا تو وہ دو رکعتیں تھیں (ہر نماز میں) قیام میں ہو یا سفر میں۔ پھر سفر میں پڑھی جانے والی نمازیں وہی رہیں لیکن غیر مسافروں کی (رکعت) نمازیں بڑھا دی گئیں۔",
      quranicVerseEnglishText:
          "the mother of believers: Allah enjoined the prayer when He enjoined it, it was two rak`at only (in every prayer) both when in residence or on the journey. Then the prayers offered on journey remained the same, but (the rak`at of) the prayers for non-travelers were increased.",
      quranicVerseReference: "Sahih al-Bukhari 350")

  // PrayerInHadithModel(
  //     id: 10,
  //     quranicVerseArabicText:
  //         "حَدَّثَنَا يَحْيَى بْنُ بُكَيْرٍ، قَالَ حَدَّثَنَا اللَّيْثُ، عَنْ يُونُسَ، عَنِ ابْنِ شِهَابٍ، عَنْ أَنَسِ بْنِ مَالِكٍ، قَالَ كَانَ أَبُو ذَرٍّ يُحَدِّثُ أَنَّ رَسُولَ اللَّهِ صلى الله عليه وسلم قَالَ \" فُرِجَ عَنْ سَقْفِ بَيْتِي وَأَنَا بِمَكَّةَ، فَنَزَلَ جِبْرِيلُ فَفَرَجَ صَدْرِي، ثُمَّ غَسَلَهُ بِمَاءِ زَمْزَمَ، ثُمَّ جَاءَ بِطَسْتٍ مِنْ ذَهَبٍ مُمْتَلِئٍ حِكْمَةً وَإِيمَانًا، فَأَفْرَغَهُ فِي صَدْرِي ثُمَّ أَطْبَقَهُ، ثُمَّ أَخَذَ بِيَدِي فَعَرَجَ بِي إِلَى السَّمَاءِ الدُّنْيَا، فَلَمَّا جِئْتُ إِلَى السَّمَاءِ الدُّنْيَا قَالَ جِبْرِيلُ لِخَازِنِ السَّمَاءِ افْتَحْ. قَالَ مَنْ هَذَا قَالَ هَذَا جِبْرِيلُ. قَالَ هَلْ مَعَكَ أَحَدٌ قَالَ نَعَمْ مَعِي مُحَمَّدٌ صلى الله عليه وسلم. فَقَالَ أُرْسِلَ إِلَيْهِ قَالَ نَعَمْ. فَلَمَّا فَتَحَ عَلَوْنَا السَّمَاءَ الدُّنْيَا، فَإِذَا رَجُلٌ قَاعِدٌ عَلَى يَمِينِهِ أَسْوِدَةٌ وَعَلَى يَسَارِهِ أَسْوِدَةٌ، إِذَا نَظَرَ قِبَلَ يَمِينِهِ ضَحِكَ، وَإِذَا نَظَرَ قِبَلَ يَسَارِهِ بَكَى، فَقَالَ مَرْحَبًا بِالنَّبِيِّ الصَّالِحِ وَالاِبْنِ الصَّالِحِ. قُلْتُ لِجِبْرِيلَ مَنْ هَذَا قَالَ هَذَا آدَمُ. وَهَذِهِ الأَسْوِدَةُ عَنْ يَمِينِهِ وَشِمَالِهِ نَسَمُ بَنِيهِ، فَأَهْلُ الْيَمِينِ مِنْهُمْ أَهْلُ الْجَنَّةِ، وَالأَسْوِدَةُ الَّتِي عَنْ شِمَالِهِ أَهْلُ النَّارِ، فَإِذَا نَظَرَ عَنْ يَمِينِهِ ضَحِكَ، وَإِذَا نَظَرَ قِبَلَ شِمَالِهِ بَكَى، حَتَّى عَرَجَ بِي إِلَى السَّمَاءِ الثَّانِيَةِ فَقَالَ لِخَازِنِهَا افْتَحْ. فَقَالَ لَهُ خَازِنُهَا مِثْلَ مَا قَالَ الأَوَّلُ فَفَتَحَ \" قَالَ أَنَسٌ فَذَكَرَ أَنَّهُ وَجَدَ فِي السَّمَوَاتِ آدَمَ وَإِدْرِيسَ وَمُوسَى وَعِيسَى وَإِبْرَاهِيمَ ـ صَلَوَاتُ اللَّهِ عَلَيْهِمْ ـ وَلَمْ يُثْبِتْ كَيْفَ مَنَازِلُهُمْ، غَيْرَ أَنَّهُ ذَكَرَ أَنَّهُ وَجَدَ آدَمَ فِي السَّمَاءِ الدُّنْيَا، وَإِبْرَاهِيمَ فِي السَّمَاءِ السَّادِسَةِ. قَالَ أَنَسٌ فَلَمَّا مَرَّ جِبْرِيلُ بِالنَّبِيِّ صلى الله عليه وسلم بِإِدْرِيسَ قَالَ مَرْحَبًا بِالنَّبِيِّ الصَّالِحِ وَالأَخِ الصَّالِحِ. فَقُلْتُ مَنْ هَذَا قَالَ هَذَا إِدْرِيسُ. ثُمَّ مَرَرْتُ بِمُوسَى فَقَالَ مَرْحَبًا بِالنَّبِيِّ الصَّالِحِ وَالأَخِ الصَّالِحِ. قُلْتُ مَنْ هَذَا قَالَ هَذَا مُوسَى. ثُمَّ مَرَرْتُ بِعِيسَى فَقَالَ مَرْحَبًا بِالأَخِ الصَّالِحِ وَالنَّبِيِّ الصَّالِحِ. قُلْتُ مَنْ هَذَا قَالَ هَذَا عِيسَى. ثُمَّ مَرَرْتُ بِإِبْرَاهِيمَ فَقَالَ مَرْحَبًا بِالنَّبِيِّ الصَّالِحِ وَالاِبْنِ الصَّالِحِ. قُلْتُ مَنْ هَذَا قَالَ هَذَا إِبْرَاهِيمُ صلى الله عليه وسلم \" قَالَ ابْنُ شِهَابٍ فَأَخْبَرَنِي ابْنُ حَزْمٍ أَنَّ ابْنَ عَبَّاسٍ وَأَبَا حَبَّةَ الأَنْصَارِيَّ كَانَا يَقُولاَنِ قَالَ النَّبِيُّ صلى الله عليه وسلم \" ثُمَّ عُرِجَ بِي حَتَّى ظَهَرْتُ لِمُسْتَوًى أَسْمَعُ فِيهِ صَرِيفَ الأَقْلاَمِ \" قَالَ ابْنُ حَزْمٍ وَأَنَسُ بْنُ مَالِكٍ قَالَ النَّبِيُّ صلى الله عليه وسلم \" فَفَرَضَ اللَّهُ عَلَى أُمَّتِي خَمْسِينَ صَلاَةً، فَرَجَعْتُ بِذَلِكَ حَتَّى مَرَرْتُ عَلَى مُوسَى فَقَالَ مَا فَرَضَ اللَّهُ لَكَ عَلَى أُمَّتِكَ قُلْتُ فَرَضَ خَمْسِينَ صَلاَةً. قَالَ فَارْجِعْ إِلَى رَبِّكَ، فَإِنَّ أُمَّتَكَ لاَ تُطِيقُ ذَلِكَ. فَرَاجَعْتُ فَوَضَعَ شَطْرَهَا، فَرَجَعْتُ إِلَى مُوسَى قُلْتُ وَضَعَ شَطْرَهَا. فَقَالَ رَاجِعْ رَبَّكَ، فَإِنَّ أُمَّتَكَ لاَ تُطِيقُ، فَرَاجَعْتُ فَوَضَعَ شَطْرَهَا، فَرَجَعْتُ إِلَيْهِ فَقَالَ ارْجِعْ إِلَى رَبِّكَ، فَإِنَّ أُمَّتَكَ لاَ تُطِيقُ ذَلِكَ، فَرَاجَعْتُهُ. فَقَالَ هِيَ خَمْسٌ وَهْىَ خَمْسُونَ، لاَ يُبَدَّلُ الْقَوْلُ لَدَىَّ. فَرَجَعْتُ إِلَى مُوسَى فَقَالَ رَاجِعْ رَبَّكَ. فَقُلْتُ اسْتَحْيَيْتُ مِنْ رَبِّي. ثُمَّ انْطَلَقَ بِي حَتَّى انْتَهَى بِي إِلَى سِدْرَةِ الْمُنْتَهَى، وَغَشِيَهَا أَلْوَانٌ لاَ أَدْرِي مَا هِيَ، ثُمَّ أُدْخِلْتُ الْجَنَّةَ، فَإِذَا فِيهَا حَبَايِلُ اللُّؤْلُؤِ، وَإِذَا تُرَابُهَا الْمِسْكُ \"",
  //     quranicVerseUrduText:
  //         "حضرت ابو ذر (رض) نبیِ کریم ﷺ سے روایت کرتے ہیں کہ آپ ﷺ نے فرمایا: \"جب میں مکہ میں تھا تو میرے گھر کا چھت کھول دی گئی اور جبرائیل علیہ السلام نیچے اتر آئے، میری سینہ کو کھول کر زم زم کے پانی سے دھوا، پھر انہوں نے ایک سونے کا تھال لے کر آیا جس میں حکمت و ایمان کی پوری بھراس کی گئی تھی اور اس کے مواد کو میرے سینہ میں ڈال کر بند کیا۔ پھر انہوں نے میرا ہاتھ پکڑا اور میرے ساتھ اسمان کی سب سے قریبی منزل تک چھلانگ لگائی، جب میں سب سے قریبی اسمان تک پہنچا تو جبرائیل نے اسمان کے دروازے کے داروغے سے کہا، 'کھولو'۔ داروغہ نے پوچھا، 'کون ہے؟' جبرائیل نے جواب دیا: 'جبرائیل'۔ اس نے پوچھا، 'کیا تمہارے ساتھ کوئی ہے؟' جبرائیل نے جواب دیا، 'جی ہاں، محمد ﷺ میرے ساتھ ہیں'۔ اس نے پوچھا، 'کیا اس نے بلایا ہے؟' جبرائیل نے کہا، 'جی ہاں'۔ اس پر دروازہ کھل گیا اور ہم نے سب سے قریب اسمان کو گزر کر وہاں ایک شخص بیٹھے ہوئے پائے جو کچھ لوگوں کے دائیں اور کچھ بائیں طرف بیٹھے تھے۔ جب وہ اپنی دائیں طرف دیکھتے تو ہنسے اور جب بائیں طرف دیکھتے تو روتے۔ پھر انہوں نے فرمایا، 'خوش آمدید! اے پرہیزگار نبی اور پرہیزگار بیٹے'۔ میں نے جبرائیل سے پوچھا، 'یہ کون ہے؟' انہوں نے جواب دیا، 'یہ آدم علیہ السلام ہیں اور ان کے دائیں اور بائیں طرف بیٹھے لوگ ان کی اولاد کے روح ہیں۔ ان کے دائیں طرف والے جنت کے لوگ اور ان کے بائیں طرف والے جہنم کے لوگ ہیں اور جب وہ اپنی دائیں طرف دیکھتے ہیں تو ہنسی اور جب وہ اپنی بائیں طرف دیکھتے ہیں تو روتے ہیں'۔ پھر انہوں نے میرے ساتھ دوسرے اسمان تک چھلانگ لگائی اور انہوں نے اسمان کے داروغے سے کہا، 'کھولو'۔ داروغہ نے اسی طرح جواب دیا جیسا کہ پہلے اسمان کے دروازے کے داروغہ نے کیا تھا اور اس نے دروازہ کھولا۔ آنس نے کہا: \"ابو ذر نے یہ شامل کیا کہ رسول الله ﷺ نے آدم علیہ السلام سے ملا، انس نے فرمایا، \"جب جبرائیل اور نبی ﷺ اندر سے گذر رہے تھے تو اندرس نے کہا، 'خوش آمد",
  //     quranicVerseEnglishText:
  //         "Narrated Abu Dhar:Allah's Messenger (ﷺ) said, \"While I was at Mecca the roof of my house was opened and Gabriel descended, opened my chest, and washed it with Zamzam water. Then he brought a golden tray full of wisdom and faith and having poured its contents into my chest, he closed it. Then he took my hand and ascended with me to the nearest heaven, when I reached the nearest heaven, Gabriel said to the gatekeeper of the heaven, 'Open (the gate).' The gatekeeper asked, 'Who is it?' Gabriel answered: 'Gabriel.' He asked, 'Is there anyone with you?' Gabriel replied, 'Yes, Muhammad I is with me.' He asked, 'Has he been called?' Gabriel said, 'Yes.' So the gate was opened and we went over the nearest heaven and there we saw a man sitting with some people on his right and some on his left. When he looked towards his right, he laughed and when he looked toward his left he wept. Then he said, 'Welcome! O pious Prophet and pious son.' I asked Gabriel, 'Who is he?' He replied, 'He is Adam and the people on his right and left are the souls of his offspring. Those on his right are the people of Paradise and those on his left are the people of Hell and when he looks towards his right he laughs and when he looks towards his left he weeps.' Then he ascended with me till he reached the second heaven and he (Gabriel) said to its gatekeeper, 'Open (the gate).' The gatekeeper said to him the same as the gatekeeper of the first heaven had said and he opened the gate. Anas said: \"Abu Dhar added that the Prophet (ﷺ) met Adam, Idris, Moses, Jesus and Abraham, he (Abu Dhar) did not mention on which heaven they were but he mentioned that he (the Prophet (ﷺ) ) met Adam on the nearest heaven and Abraham on the sixth heaven. Anas said, \"When Gabriel along with the Prophet (ﷺ) passed by Idris, the latter said, 'Welcome! O pious Prophet and pious brother.' The Prophet (ﷺ) asked, 'Who is he?' Gabriel replied, 'He is Idris.\" The Prophet (ﷺ) added, \"I passed by Moses and he said, 'Welcome! O pious Prophet and pious brother.' I asked Gabriel, 'Who is he?' Gabriel replied, 'He is Moses.' Then I passed by Jesus and he said, 'Welcome! O pious brother and pious Prophet.' I asked, 'Who is he?' Gabriel replied, 'He is Jesus. Then I passed by Abraham and he said, 'Welcome! O pious Prophet and pious son.' I asked Gabriel, 'Who is he?' Gabriel replied, 'He is Abraham. The Prophet (ﷺ) added, 'Then Gabriel ascended with me to a place where I heard the creaking of the pens.\" Ibn Hazm and Anas bin Malik said: The Prophet (ﷺ) said, \"Then Allah enjoined fifty prayers on my followers when I returned with this order of Allah, I passed by Moses who asked me, 'What has Allah enjoined on your followers?' I replied, 'He has enjoined fifty prayers on them.' Moses said, 'Go back to your Lord (and appeal for reduction) for your followers will not be able to bear it.' (So I went back to Allah and requested for reduction) and He reduced it to half. When I passed by Moses again and informed him about it, he said, 'Go back to your Lord as your followers will not be able to bear it.' So I returned to Allah and requested for further reduction and half of it was reduced. I again passed by Moses and he said to me: 'Return to your Lord, for your followers will not be able to bear it. So I returned to Allah and He said, 'These are five prayers and they are all (equal to) fifty (in reward) for My Word does not change.' I returned to Moses and he told me to go back once again. I replied, 'Now I feel shy of asking my Lord again.' Then Gabriel took me till we '' reached Sidrat-il-Muntaha (Lote tree of; the utmost boundary) which was shrouded in colors, indescribable. Then I was admitted into Paradise where I found small (tents or) walls (made) of pearls and its earth was of musk",
  //     quranicVerseReference: "Sahih al-Bukhari 349")
];

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PrayerInQuranModel {
  int id;
  String quranicVerseArabicText;
  String quranicVerseUrduText;
  String quranicVerseEnglishText;
  String quranicVerseReference;
  PrayerInQuranModel({
    required this.id,
    required this.quranicVerseArabicText,
    required this.quranicVerseUrduText,
    required this.quranicVerseEnglishText,
    required this.quranicVerseReference,
  });

  PrayerInQuranModel copyWith({
    int? id,
    String? quranicVerseArabicText,
    String? quranicVerseUrduText,
    String? quranicVerseEnglishText,
    String? quranicVerseReference,
  }) {
    return PrayerInQuranModel(
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

  factory PrayerInQuranModel.fromMap(Map<String, dynamic> map) {
    return PrayerInQuranModel(
      id: map['id'] as int,
      quranicVerseArabicText: map['quranicVerseArabicText'] as String,
      quranicVerseUrduText: map['quranicVerseUrduText'] as String,
      quranicVerseEnglishText: map['quranicVerseEnglishText'] as String,
      quranicVerseReference: map['quranicVerseReference'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PrayerInQuranModel.fromJson(String source) =>
      PrayerInQuranModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'PrayerInQuranModel(id: $id, quranicVerseArabicText: $quranicVerseArabicText, quranicVerseUrduText: $quranicVerseUrduText, quranicVerseEnglishText: $quranicVerseEnglishText, quranicVerseReference: $quranicVerseReference)';
  }

  @override
  bool operator ==(covariant PrayerInQuranModel other) {
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

List<PrayerInQuranModel> prayerInTheLightOfTheQuranDataList =
    <PrayerInQuranModel>[
  PrayerInQuranModel(
      id: 1,
      quranicVerseArabicText:
          "وَٱلَّذِينَ يُمَسِّكُونَ بِٱلْكِتَـٰبِ وَأَقَامُوا۟ ٱلصَّلَوٰةَ إِنَّا لَا نُضِيعُ أَجْرَ ٱلْمُصْلِحِينَ ١٧٠",
      quranicVerseUrduText:
          "اور جو لوگ کتاب کے پابند ہیں اور نماز کی پابندی کرتے ہیں، ہم ایسے لوگوں کا جو اپنی اصلاح کریں ﺛواب ضائع نہ کریں گے",
      quranicVerseEnglishText:
          "But those who hold fast to the Book and establish prayer - indeed, We will not allow to be lost the reward of the reformers.",
      quranicVerseReference: "Qur'an - Chapter 7, Verse 170"),
  PrayerInQuranModel(
      id: 2,
      quranicVerseArabicText:
          "ٱتْلُ مَآ أُوحِىَ إِلَيْكَ مِنَ ٱلْكِتَـٰبِ وَأَقِمِ ٱلصَّلَوٰةَ ۖ إِنَّ ٱلصَّلَوٰةَ تَنْهَىٰ عَنِ ٱلْفَحْشَآءِ وَٱلْمُنكَرِ ۗ وَلَذِكْرُ ٱللَّهِ أَكْبَرُ ۗ وَٱللَّهُ يَعْلَمُ مَا تَصْنَعُونَ ٤٥",
      quranicVerseUrduText:
          "جو کتاب آپ کی طرف وحی کی گئی ہے اسے پڑھئے اور نماز قائم کریں، یقیناً نماز بے حیائی اور برائی سے روکتی ہے، بیشک اللہ کا ذکر بہت بڑی چیز ہے، تم جو کچھ کر رہے ہو اس سے اللہ خبردار ہے",
      quranicVerseEnglishText:
          "Recite, [O Muhammad], what has been revealed to you of the Book and establish prayer. Indeed, prayer prohibits immorality and wrongdoing, and the remembrance of Allah is greater. And Allah knows that which you do.",
      quranicVerseReference: "Qur'an - Chapter 29, Verse 45"),
  PrayerInQuranModel(
      id: 3,
      quranicVerseArabicText:
          "وَمَا خَلَقْتُ ٱلْجِنَّ وَٱلْإِنسَ إِلَّا لِيَعْبُدُونِ",
      quranicVerseUrduText:
          "میں نے جنات اورانسانوں کو محض اسی لیے پیدا کیا ہے کہ وه صرف میری عبادت کریں",
      quranicVerseEnglishText:
          "And I did not create the jinn and mankind except to worship Me.",
      quranicVerseReference: "Qur'an - Chapter 51, Verse 56"),
  PrayerInQuranModel(
      id: 4,
      quranicVerseArabicText:
          "ٱلَّذِينَ ءَامَنُوا۟ وَتَطْمَئِنُّ قُلُوبُهُم بِذِكْرِ ٱللَّهِ ۗ أَلَا بِذِكْرِ ٱللَّهِ تَطْمَئِنُّ ٱلْقُلُوبُ ٢٨",
      quranicVerseUrduText:
          "۔(ان لوگوں کو ہدایت دیتا ہے) جو ایمان لائے اور ان کے دل اللہ کی یاد سے چین پاتے ہیں ، سن لو! اللہ کی یاد ہی سے دل چین پاتے ہیں ",
      quranicVerseEnglishText:
          "Most surely, in the remembrance of Allah do hearts find solace.",
      quranicVerseReference: "Qur'an - Chapter 13, Verse 28"),
  PrayerInQuranModel(
      id: 5,
      quranicVerseArabicText:
          "ٱلَّذِينَ يُؤْمِنُونَ بِٱلْغَيْبِ وَيُقِيمُونَ ٱلصَّلَوٰةَ وَمِمَّا رَزَقْنَـٰهُمْ يُنفِقُونَ ٣",
      quranicVerseUrduText:
          "جو لوگ غیب پر ایمان ﻻتے ہیں اور نماز کو قائم رکھتے ہیں اور ہمارے دیئے ہوئے (مال) میں سے خرچ کرتے ہیں",
      quranicVerseEnglishText:
          "Who believe in the unseen, establish prayer, and spend out of what We have provided for them,",
      quranicVerseReference: "Qur'an - Chapter 2, Verse 3"),
  PrayerInQuranModel(
      id: 6,
      quranicVerseArabicText:
          "وَأَقِيمُوا۟ ٱلصَّلَوٰةَ وَءَاتُوا۟ ٱلزَّكَوٰةَ وَٱرْكَعُوا۟ مَعَ ٱلرَّٰكِعِينَ ٤٣",
      quranicVerseUrduText:
          "اور نمازوں کو قائم کرو اور زکوٰة دو اور رکوع کرنے والوں کے ساتھ رکوع کرو",
      quranicVerseEnglishText:
          "And establish prayer and give zakah and bow with those who bow [in worship and obedience].",
      quranicVerseReference: "Qur'an - Chapter 2, Verse 43"),
  PrayerInQuranModel(
      id: 7,
      quranicVerseArabicText:
          "۞ سَيَقُولُ ٱلسُّفَهَآءُ مِنَ ٱلنَّاسِ مَا وَلَّىٰهُمْ عَن قِبْلَتِهِمُ ٱلَّتِى كَانُوا۟ عَلَيْهَا ۚ قُل لِّلَّهِ ٱلْمَشْرِقُ وَٱلْمَغْرِبُ ۚ يَهْدِى مَن يَشَآءُ إِلَىٰ صِرَٰطٍۢ مُّسْتَقِيمٍۢ ١٤٢",
      quranicVerseUrduText:
          "عنقریب نادان لوگ کہیں گے کہ جس قبلہ پر یہ تھے اس سے انہیں کس چیز نے ہٹایا؟ آپ کہہ دیجیئے کہ مشرق ومغرب کا مالک اللہ تعالیٰ ہی ہے وه جسے چاہے سیدھی راه کی ہدایت کردے",
      quranicVerseEnglishText:
          "The foolish among the people will say, \"What has turned them away from their qiblah, which they used to face?\" Say, \"To Allah belongs the east and the west. He guides whom He wills to a straight path.\"",
      quranicVerseReference: "Qur'an - Chapter 2, Verse 142"),
  PrayerInQuranModel(
      id: 8,
      quranicVerseArabicText:
          "وَمِنْ حَيْثُ خَرَجْتَ فَوَلِّ وَجْهَكَ شَطْرَ ٱلْمَسْجِدِ ٱلْحَرَامِ ۚ وَحَيْثُ مَا كُنتُمْ فَوَلُّوا۟ وُجُوهَكُمْ شَطْرَهُۥ لِئَلَّا يَكُونَ لِلنَّاسِ عَلَيْكُمْ حُجَّةٌ إِلَّا ٱلَّذِينَ ظَلَمُوا۟ مِنْهُمْ فَلَا تَخْشَوْهُمْ وَٱخْشَوْنِى وَلِأُتِمَّ نِعْمَتِى عَلَيْكُمْ وَلَعَلَّكُمْ تَهْتَدُونَ ١٥٠",
      quranicVerseUrduText:
          "اور تم جہاں سے نکلو، مسجدِ محترم کی طرف منہ (کرکے نماز پڑھا) کرو۔ اور مسلمانو، تم جہاں ہوا کرو، اسی (مسجد) کی طرف رخ کیا کرو۔ (یہ تاکید) اس لیے (کی گئی ہے) کہ لوگ تم کو کسی طرح کا الزام نہ دے سکیں۔ مگر ان میں سے جو ظالم ہیں، (وہ الزام دیں تو دیں) سو ان سے مت ڈرنا اور مجھی سے ڈرتے رہنا۔ اور یہ بھی مقصود ہے کہ تم کو اپنی تمام نعمتیں بخشوں اور یہ بھی کہ تم راہِ راست پر چلو  ﴿۱۵۰﴾",
      quranicVerseEnglishText:
          "Whencesoever thou comest forth turn thy face toward the Inviolable Place of Worship; and wheresoever ye may be (O Muslims) turn your faces toward it (when ye pray) so that men may have no argument against you, save such of them as do injustice - Fear them not, but fear Me! - and so that I may complete My grace upon you, and that ye may be guided. ﴾150﴿ ",
      quranicVerseReference: "Qur'an - Chapter 2, Verse 150"),
  PrayerInQuranModel(
      id: 9,
      quranicVerseArabicText:
          "إِنَّ ٱلَّذِينَ ءَامَنُوا۟ وَعَمِلُوا۟ ٱلصَّـٰلِحَـٰتِ وَأَقَامُوا۟ ٱلصَّلَوٰةَ وَءَاتَوُا۟ ٱلزَّكَوٰةَ لَهُمْ أَجْرُهُمْ عِندَ رَبِّهِمْ وَلَا خَوْفٌ عَلَيْهِمْ وَلَا هُمْ يَحْزَنُونَ ٢٧٧",
      quranicVerseUrduText:
          "بے شک جو لوگ ایمان کے ساتھ ﴿سنت کے مطابق﴾ نیک کام کرتے ہیں، نمازوں کو قائم کرتے ہیں اور زکوٰة ادا کرتے ہیں، ان کا اجر ان کے رب تعالیٰ کے پاس ہے، ان پر نہ تو کوئی خوف ہے، نہ اداسی اور غم",
      quranicVerseEnglishText:
          "Indeed, those who believe and do righteous deeds and establish prayer and give zakah will have their reward with their Lord, and there will be no fear concerning them, nor will they grieve.",
      quranicVerseReference: "Qur'an - Chapter 2, Verse 277"),
  PrayerInQuranModel(
      id: 10,
      quranicVerseArabicText:
          "يَـٰٓأَيُّهَا ٱلَّذِينَ ءَامَنُوا۟ لَا تَقْرَبُوا۟ ٱلصَّلَوٰةَ وَأَنتُمْ سُكَـٰرَىٰ حَتَّىٰ تَعْلَمُوا۟ مَا تَقُولُونَ وَلَا جُنُبًا إِلَّا عَابِرِى سَبِيلٍ حَتَّىٰ تَغْتَسِلُوا۟ ۚ وَإِن كُنتُم مَّرْضَىٰٓ أَوْ عَلَىٰ سَفَرٍ أَوْ جَآءَ أَحَدٌۭ مِّنكُم مِّنَ ٱلْغَآئِطِ أَوْ لَـٰمَسْتُمُ ٱلنِّسَآءَ فَلَمْ تَجِدُوا۟ مَآءًۭ فَتَيَمَّمُوا۟ صَعِيدًۭا طَيِّبًۭا فَٱمْسَحُوا۟ بِوُجُوهِكُمْ وَأَيْدِيكُمْ ۗ إِنَّ ٱللَّهَ كَانَ عَفُوًّا غَفُورًا ٤٣",
      quranicVerseUrduText:
          "اے ایمان والو! جب تم نشے میں مست ہو نماز کے قریب بھی نہ جاؤ، جب تک کہ اپنی بات کو سمجھنے نہ لگو اور جنابت کی حالت میں جب تک کہ غسل نہ کر لو، ہاں اگر راه چلتے گزر جانے والے ہو تو اور بات ہے اور اگر تم بیمار ہو یا سفر میں ہو یا تم میں سے کوئی قضائے حاجت سے آیا ہو یا تم نے عورتوں سے مباشرت کی ہو اور تمہیں پانی نہ ملے تو پاک مٹی کا قصد کرو اور اپنے منھ اور اپنے ہاتھ مل لو۔ بے شک اللہ تعالیٰ معاف کرنے واﻻ، بخشنے واﻻ ہے",
      quranicVerseEnglishText:
          "O you who have believed, do not approach prayer while you are intoxicated until you know what you are saying or in a state of janabah, except those passing through [a place of prayer], until you have washed [your whole body]. And if you are ill or on a journey or one of you comes from the place of relieving himself or you have contacted women and find no water, then seek clean earth and wipe over your faces and your hands [with it]. Indeed, Allah is ever Pardoning and Forgiving.",
      quranicVerseReference: "Qur'an - Chapter 4, Verse 43")
];

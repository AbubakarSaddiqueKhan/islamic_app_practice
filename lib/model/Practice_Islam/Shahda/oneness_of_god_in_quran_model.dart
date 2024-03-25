// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class OnenessOfGodInQuranModel {
  int id;
  String quranicVerseArabicText;
  String quranicVerseUrduText;
  String quranicVerseEnglishText;
  String quranicVerseReference;
  OnenessOfGodInQuranModel({
    required this.id,
    required this.quranicVerseArabicText,
    required this.quranicVerseUrduText,
    required this.quranicVerseEnglishText,
    required this.quranicVerseReference,
  });

  OnenessOfGodInQuranModel copyWith({
    int? id,
    String? quranicVerseArabicText,
    String? quranicVerseUrduText,
    String? quranicVerseEnglishText,
    String? quranicVerseReference,
  }) {
    return OnenessOfGodInQuranModel(
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

  factory OnenessOfGodInQuranModel.fromMap(Map<String, dynamic> map) {
    return OnenessOfGodInQuranModel(
      id: map['id'] as int,
      quranicVerseArabicText: map['quranicVerseArabicText'] as String,
      quranicVerseUrduText: map['quranicVerseUrduText'] as String,
      quranicVerseEnglishText: map['quranicVerseEnglishText'] as String,
      quranicVerseReference: map['quranicVerseReference'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OnenessOfGodInQuranModel.fromJson(String source) =>
      OnenessOfGodInQuranModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OnenessOfGodInQuranModel(id: $id, quranicVerseArabicText: $quranicVerseArabicText, quranicVerseUrduText: $quranicVerseUrduText, quranicVerseEnglishText: $quranicVerseEnglishText, quranicVerseReference: $quranicVerseReference)';
  }

  @override
  bool operator ==(covariant OnenessOfGodInQuranModel other) {
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

List<OnenessOfGodInQuranModel> onenessOfGodInQuranDataList =
    <OnenessOfGodInQuranModel>[
  OnenessOfGodInQuranModel(
      id: 1,
      quranicVerseArabicText:
          "مَا ٱتَّخَذَ ٱللَّهُ مِن وَلَدٍ وَمَا كَانَ مَعَهُۥ مِنْ إِلَٰهٍ إِذًا لَّذَهَبَ كُلُّ إِلَٰهٍۭبِمَا خَلَقَ وَلَعَلَا بَعْضُهُمْ عَلَىٰ بَعْضٍ سُبْحَٰنَ ٱللَّهِ عَمَّا يَصِفُونَ",
      quranicVerseUrduText:
          "نہ تو اللہ نے کسی کو بیٹا بنایا اور نہ اس کے ساتھ اور کوئی معبود ہے، ورنہ ہر معبود اپنی مخلوق کو لئے لئے پھرتا اور ہر ایک دوسرے پر چڑھ دوڑتا۔ جو اوصاف یہ بتلاتے ہیں ان سے اللہ پاک (اور بےنیاز) ہے",
      quranicVerseEnglishText:
          "Allah has not taken any son, nor has there ever been with Him any deity. [If there had been], then each deity would have taken what it created, and some of them would have sought to overcome others. Exalted is Allah above what they describe [concerning Him].",
      quranicVerseReference: "23:91"),
  OnenessOfGodInQuranModel(
      id: 2,
      quranicVerseArabicText:
          "شَهِدَ اللّٰهُ اَنَّهٗ لَاۤ اِلٰهَ اِلَّا هُوَۙ وَالۡمَلٰٓـئِكَةُ وَاُولُوا الۡعِلۡمِ قَآئِمًا ۢ بِالۡقِسۡطِ​ؕ لَاۤ اِلٰهَ اِلَّا هُوَ الۡعَزِيۡزُ الۡحَكِيۡمُؕ",
      quranicVerseUrduText:
          "اللہ تعالیٰ، فرشتے اور اہل علم اس بات کی گواہی دیتے ہیں کہ اللہ کے سوا کوئی معبود نہیں اور وه عدل کو قائم رکھنے واﻻ ہے، اس غالب اور حکمت والے کے سوا کوئی عبادت کے ﻻئق نہیں",
      quranicVerseEnglishText:
          "Allah witnesses that there is no deity except Him, and [so do] the angels and those of knowledge - [that He is] maintaining [creation] in justice. There is no deity except Him, the Exalted in Might, the Wise.",
      quranicVerseReference: "3:18"),
  OnenessOfGodInQuranModel(
      id: 3,
      quranicVerseArabicText:
          "إِنَّهُمۡ كَانُوٓاْ إِذَا قِيلَ لَهُمۡ لَآ إِلَٰهَ إِلَّا ٱللَّهُ يَسۡتَكۡبِرُونَ",
      quranicVerseUrduText:
          "یہ وه (لوگ) ہیں کہ جب ان سے کہا جاتا ہے کہ اللہ کے سوا کوئی معبود نہیں تو یہ سرکشی کرتے تھے",
      quranicVerseEnglishText:
          "Indeed they, when it was said to them, 'There is no deity but Allah ,' were arrogant",
      quranicVerseReference: "37:35"),
  OnenessOfGodInQuranModel(
      id: 4,
      quranicVerseArabicText:
          "فَٱعْلَمْ أَنَّهُۥ لَآ إِلَـٰهَ إِلَّا ٱللَّهُ وَٱسْتَغْفِرْ لِذَنۢبِكَ وَلِلْمُؤْمِنِينَ وَٱلْمُؤْمِنَـٰتِ ۗ وَٱللَّهُ يَعْلَمُ مُتَقَلَّبَكُمْ وَمَثْوَىٰكُمْ ",
      quranicVerseUrduText:
          "سو (اے نبی!) آپ یقین کر لیں کہ اللہ کے سوا کوئی معبود نہیں اور اپنے گناہوں کی بخشش مانگا کریں اور مومن مردوں اور مومن عورتوں کے حق میں بھی، اللہ تم لوگوں کی آمد ورفت کی اور رہنے سہنے کی جگہ کو خوب جانتا ہے",
      quranicVerseEnglishText:
          "So know, [O Muhammad], that there is no deity except Allah and ask forgiveness for your sin and for the believing men and believing women. And Allah knows of your movement and your resting place.",
      quranicVerseReference: "47:19"),
  OnenessOfGodInQuranModel(
      id: 5,
      quranicVerseArabicText:
          "۞ وَٱعْبُدُوا۟ ٱللَّهَ وَلَا تُشْرِكُوا۟ بِهِۦ شَيْـًۭٔا ۖ وَبِٱلْوَٰلِدَيْنِ إِحْسَـٰنًۭا وَبِذِى ٱلْقُرْبَىٰ وَٱلْيَتَـٰمَىٰ وَٱلْمَسَـٰكِينِ وَٱلْجَارِ ذِى ٱلْقُرْبَىٰ وَٱلْجَارِ ٱلْجُنُبِ وَٱلصَّاحِبِ بِٱلْجَنۢبِ وَٱبْنِ ٱلسَّبِيلِ وَمَا مَلَكَتْ أَيْمَـٰنُكُمْ ۗ إِنَّ ٱللَّهَ لَا يُحِبُّ مَن كَانَ مُخْتَالًۭا فَخُورًا ٣٦",
      quranicVerseUrduText:
          "اور اللہ تعالیٰ کی عبادت کرو اور اس کے ساتھ کسی کو شریک نہ کرو اور ماں باپ کے ساتھ سلوک واحسان کرو اور رشتہ داروں سے اور یتیموں سے اور مسکینوں سے اور قرابت دار ہمسایہ سے اور اجنبی ہمسایہ سے اور پہلو کے ساتھی سے اور راه کے مسافر سے اور ان سے جن کے مالک تمہارے ہاتھ ہیں، (غلام کنیز) یقیناً اللہ تعالیٰ تکبر کرنے والوں اور شیخی خوروں کو پسند نہیں فرماتا",
      quranicVerseEnglishText:
          "Worship Allah and associate nothing with Him, and to parents do good, and to relatives, orphans, the needy, the near neighbor, the neighbor farther away, the companion at your side, the traveler, and those whom your right hands possess. Indeed, Allah does not like those who are self-deluding and boastful.",
      quranicVerseReference: "4:36"),
  OnenessOfGodInQuranModel(
      id: 6,
      quranicVerseArabicText:
          "قُلۡ اِنَّ صَلَاتِىۡ وَنُسُكِىۡ وَ مَحۡيَاىَ وَمَمَاتِىۡ لِلّٰهِ رَبِّ الۡعٰلَمِيۡنَۙ",
      quranicVerseUrduText:
          "آپ فرما دیجئے کہ بالیقین میری نماز اور میری ساری عبادت اور میرا جینا اور میرا مرنا یہ سب خالص اللہ ہی کا ہے جو سارے جہان کا مالک ہے",
      quranicVerseEnglishText:
          "Surely my Prayer, all my acts of worship, 143 and my living and my dying are for Allah alone, the Lord of the whole universe.",
      quranicVerseReference: "6:162"),
  OnenessOfGodInQuranModel(
      id: 7,
      quranicVerseArabicText:
          "لَا شَرِيكَ لَهُۥ ۖ وَبِذَٰلِكَ أُمِرْتُ وَأَنَا۠ أَوَّلُ ٱلْمُسْلِمِينَ ",
      quranicVerseUrduText:
          "اس کا کوئی شریک نہیں اور مجھ کو اسی کا حکم ہوا ہے اور میں سب ماننے والوں میں سے پہلا ہوں",
      quranicVerseEnglishText:
          "No partner has He. And this I have been commanded, and I am the first [among you] of the Muslims",
      quranicVerseReference: "6:163"),
  OnenessOfGodInQuranModel(
      id: 8,
      quranicVerseArabicText:
          "قُلْ إِنَّمَآ أَنَا۠ بَشَرٌۭ مِّثْلُكُمْ يُوحَىٰٓ إِلَىَّ أَنَّمَآ إِلَـٰهُكُمْ إِلَـٰهٌۭ وَٰحِدٌۭ ۖ فَمَن كَانَ يَرْجُوا۟ لِقَآءَ رَبِّهِۦ فَلْيَعْمَلْ عَمَلًۭا صَـٰلِحًۭا وَلَا يُشْرِكْ بِعِبَادَةِ رَبِّهِۦٓ أَحَدًۢا",
      quranicVerseUrduText:
          "آپ کہہ دیجئے کہ میں تو تم جیسا ہی ایک انسان ہوں۔ (ہاں) میری جانب وحی کی جاتی ہے کہ سب کا معبود صرف ایک ہی معبود ہے، تو جسے بھی اپنے پروردگار سے ملنے کی آرزو ہو اسے چاہئے کہ نیک اعمال کرے اور اپنے پروردگار کی عبادت میں کسی کو بھی شریک نہ کرے",
      quranicVerseEnglishText:
          "Say, \"I am only a man like you, to whom has been revealed that your god is one God. So whoever would hope for the meeting with his Lord - let him do righteous work and not associate in the worship of his Lord anyone.",
      quranicVerseReference: "18:110"),
  OnenessOfGodInQuranModel(
      id: 9,
      quranicVerseArabicText:
          "أَلَا لِلَّهِ ٱلدِّينُ ٱلْخَالِصُ ۚ وَٱلَّذِينَ ٱتَّخَذُوا۟ مِن دُونِهِۦٓ أَوْلِيَآءَ مَا نَعْبُدُهُمْ إِلَّا لِيُقَرِّبُونَآ إِلَى ٱللَّهِ زُلْفَىٰٓ إِنَّ ٱللَّهَ يَحْكُمُ بَيْنَهُمْ فِى مَا هُمْ فِيهِ يَخْتَلِفُونَ ۗ إِنَّ ٱللَّهَ لَا يَهْدِى مَنْ هُوَ كَـٰذِبٌۭ كَفَّارٌۭ",
      quranicVerseUrduText:
          "خبردار! اللہ تعالیٰ ہی کے لئے خالص عبادت کرنا ہے اور جن لوگوں نے اس کے سوا اولیا بنا رکھے ہیں (اور کہتے ہیں) کہ ہم ان کی عبادت صرف اس لئے کرتے ہیں کہ یہ (بزرگ) اللہ کی نزدیکی کے مرتبہ تک ہماری رسائی کرا دیں، یہ لوگ جس بارے میں اختلاف کر رہے ہیں اس کا (سچا) فیصلہ اللہ (خود) کرے گا۔ جھوٹے اور ناشکرے (لوگوں) کو اللہ تعالیٰ راه نہیں دکھاتا",
      quranicVerseEnglishText:
          "Unquestionably, for Allah is the pure religion. And those who take protectors besides Him [say], \"We only worship them that they may bring us nearer to Allah in position. \" Indeed, Allah will judge between them concerning that over which they differ. Indeed, Allah does not guide he who is a liar and [confirmed] disbeliever",
      quranicVerseReference: "39:3"),
  OnenessOfGodInQuranModel(
      id: 10,
      quranicVerseArabicText:
          "إِنَّآ أَنزَلْنَآ إِلَيْكَ ٱلْكِتَـٰبَ بِٱلْحَقِّ فَٱعْبُدِ ٱللَّهَ مُخْلِصًۭا لَّهُ ٱلدِّينَ",
      quranicVerseUrduText:
          "یقیناً ہم نے اس کتاب کو آپ کی طرف حق کے ساتھ نازل فرمایا ہے پس آپ اللہ ہی کی عبادت کریں، اسی کے لئے دین کو خالص کرتے ہوئے",
      quranicVerseEnglishText:
          "Indeed, We have sent down to you the Book, [O Muhammad], in truth. So worship Allah , [being] sincere to Him in religion",
      quranicVerseReference: "39:2")
];

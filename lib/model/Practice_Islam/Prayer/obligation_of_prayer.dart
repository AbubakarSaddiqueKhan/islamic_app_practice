// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ObligationOfPrayerModel {
  int id;
  String obligationOfPrayerEnglishTitle;
  String obligationOfPrayerUrduTitle;
  String obligationOfPrayerEnglishDetails;
  String obligationOfPrayerUduDetails;
  String imagePath;
  ObligationOfPrayerModel({
    required this.id,
    required this.obligationOfPrayerEnglishTitle,
    required this.obligationOfPrayerUrduTitle,
    required this.obligationOfPrayerEnglishDetails,
    required this.obligationOfPrayerUduDetails,
    required this.imagePath,
  });

  ObligationOfPrayerModel copyWith({
    int? id,
    String? obligationOfPrayerEnglishTitle,
    String? obligationOfPrayerUrduTitle,
    String? obligationOfPrayerEnglishDetails,
    String? obligationOfPrayerUduDetails,
    String? imagePath,
  }) {
    return ObligationOfPrayerModel(
      id: id ?? this.id,
      obligationOfPrayerEnglishTitle:
          obligationOfPrayerEnglishTitle ?? this.obligationOfPrayerEnglishTitle,
      obligationOfPrayerUrduTitle:
          obligationOfPrayerUrduTitle ?? this.obligationOfPrayerUrduTitle,
      obligationOfPrayerEnglishDetails: obligationOfPrayerEnglishDetails ??
          this.obligationOfPrayerEnglishDetails,
      obligationOfPrayerUduDetails:
          obligationOfPrayerUduDetails ?? this.obligationOfPrayerUduDetails,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'obligationOfPrayerEnglishTitle': obligationOfPrayerEnglishTitle,
      'obligationOfPrayerUrduTitle': obligationOfPrayerUrduTitle,
      'obligationOfPrayerEnglishDetails': obligationOfPrayerEnglishDetails,
      'obligationOfPrayerUduDetails': obligationOfPrayerUduDetails,
      'imagePath': imagePath,
    };
  }

  factory ObligationOfPrayerModel.fromMap(Map<String, dynamic> map) {
    return ObligationOfPrayerModel(
      id: map['id'] as int,
      obligationOfPrayerEnglishTitle:
          map['obligationOfPrayerEnglishTitle'] as String,
      obligationOfPrayerUrduTitle: map['obligationOfPrayerUrduTitle'] as String,
      obligationOfPrayerEnglishDetails:
          map['obligationOfPrayerEnglishDetails'] as String,
      obligationOfPrayerUduDetails:
          map['obligationOfPrayerUduDetails'] as String,
      imagePath: map['imagePath'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ObligationOfPrayerModel.fromJson(String source) =>
      ObligationOfPrayerModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ObligationOfPrayerModel(id: $id, obligationOfPrayerEnglishTitle: $obligationOfPrayerEnglishTitle, obligationOfPrayerUrduTitle: $obligationOfPrayerUrduTitle, obligationOfPrayerEnglishDetails: $obligationOfPrayerEnglishDetails, obligationOfPrayerUduDetails: $obligationOfPrayerUduDetails, imagePath: $imagePath)';
  }

  @override
  bool operator ==(covariant ObligationOfPrayerModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.obligationOfPrayerEnglishTitle ==
            obligationOfPrayerEnglishTitle &&
        other.obligationOfPrayerUrduTitle == obligationOfPrayerUrduTitle &&
        other.obligationOfPrayerEnglishDetails ==
            obligationOfPrayerEnglishDetails &&
        other.obligationOfPrayerUduDetails == obligationOfPrayerUduDetails &&
        other.imagePath == imagePath;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        obligationOfPrayerEnglishTitle.hashCode ^
        obligationOfPrayerUrduTitle.hashCode ^
        obligationOfPrayerEnglishDetails.hashCode ^
        obligationOfPrayerUduDetails.hashCode ^
        imagePath.hashCode;
  }
}

List<ObligationOfPrayerModel> obligationsOfPrayerDataList =
    <ObligationOfPrayerModel>[
  ObligationOfPrayerModel(
      id: 1,
      obligationOfPrayerEnglishTitle: "Purification of the body.",
      obligationOfPrayerUrduTitle: "بدن کا پاک ہونا۔",
      obligationOfPrayerEnglishDetails:
          "Purification of the body is indeed an obligation for performing Salah (prayer) in Islam. This purification includes two main forms: Wudu (ablution), which involves washing specific parts of the body before prayer, and Ghusl (ritual bath), which involves cleaning all parts of the body",
      obligationOfPrayerUduDetails:
          "جسم کی تطہیر درحقیقت اسلام میں نماز کے لیے فرض ہے۔ اس طہارت میں دو اہم صورتیں شامل ہیں: وضو (وضو) جس میں نماز سے پہلے جسم کے مخصوص حصوں کو دھونا اور غسل (رسمی غسل) جس میں جسم کے تمام حصوں کی صفائی شامل ہے۔",
      imagePath: "assets/images/wudhu.png"),
  ObligationOfPrayerModel(
      id: 2,
      obligationOfPrayerEnglishTitle: "Purification of clothes",
      obligationOfPrayerUrduTitle: "کپڑوں کا پاک ہونا ",
      obligationOfPrayerEnglishDetails:
          "Purification of clothes is not a specific requirement for the validity of Salah (prayer) in Islam. However, it is recommended to wear clean clothes for prayer as a sign of respect and reverence for the act of worship. Islam emphasizes cleanliness and purity in all aspects of life, including one's attire for prayer. So, while it is not obligatory, it is highly encouraged to wear clean and modest clothing for Salah",
      obligationOfPrayerUduDetails:
          "اسلام میں نماز کی درستگی کے لیے کپڑوں کا پاک ہونا کوئی خاص شرط نہیں ہے۔ تاہم، عبادت کے عمل کے احترام اور تعظیم کی علامت کے طور پر نماز کے لیے صاف کپڑے پہننے کی سفارش کی جاتی ہے۔ اسلام زندگی کے تمام پہلوؤں میں صفائی اور پاکیزگی پر زور دیتا ہے، بشمول نماز کے لیے لباس۔ لہٰذا، اگرچہ یہ واجب نہیں ہے، لیکن نماز کے لیے صاف اور معمولی لباس پہننے کی بہت زیادہ ترغیب دی جاتی ہے۔",
      imagePath: "assets/images/clean.png"),
  ObligationOfPrayerModel(
      id: 3,
      obligationOfPrayerEnglishTitle: "Covering the essential parts",
      obligationOfPrayerUrduTitle: "ضروری حصوں کا احاطہ کرنا",
      obligationOfPrayerEnglishDetails:
          "In Islam, covering the essential parts of the body (awrah) is obligatory for both men and women during Salah (prayer). The awrah for men in prayer is from the navel to the knees, while for women, it is the entire body except the face, hands, and feet. It's important to cover these parts properly and modestly during prayer as a sign of respect and obedience to the guidelines set by Islam",
      obligationOfPrayerUduDetails:
          "اسلام میں نماز کے دوران جسم کے ضروری حصوں کو ڈھانپنا مرد اور عورت دونوں پر فرض ہے۔ نماز میں مردوں کے لیے ناف سے گھٹنوں تک اور عورتوں کے لیے چہرے، ہاتھ اور پاؤں کے علاوہ پورا جسم ہے۔ اسلام کی طرف سے مقرر کردہ رہنما اصولوں کے احترام اور اطاعت کی علامت کے طور پر نماز کے دوران ان حصوں کو مناسب طریقے سے اور معمولی طور پر ڈھانپنا ضروری ہے۔",
      imagePath: "assets/images/cover.png"),
  ObligationOfPrayerModel(
      id: 4,
      obligationOfPrayerEnglishTitle: "Purification of the place",
      obligationOfPrayerUrduTitle: "جگہ کا پاک ہونا",
      obligationOfPrayerEnglishDetails:
          "Purification of the place where one intends to pray (known as the prayer area or Musalla) is not a specific requirement for the validity of Salah (prayer) in Islam. However, it is recommended to pray in a clean and pure place, free from impurities (najasat) and distractions, as a way to enhance focus and concentration in prayer. Islam encourages cleanliness and purity in all aspects of worship, including the place of prayer",
      obligationOfPrayerUduDetails:
          "نماز کے صحیح ہونے کے لیے اسلام میں اس جگہ (جسے نماز کی جگہ یا مسلہ کہا جاتا ہے) کی پاکیزگی کوئی خاص شرط نہیں ہے۔ تاہم، نماز میں توجہ اور ارتکاز کو بڑھانے کے طریقے کے طور پر، نجاست اور خلفشار سے پاک صاف اور پاک جگہ پر نماز ادا کرنے کی سفارش کی جاتی ہے۔ اسلام عبادت کے تمام پہلوؤں بشمول نماز کی جگہ میں صفائی اور پاکیزگی کی ترغیب دیتا ہے۔",
      imagePath: "assets/images/place.png"),
  ObligationOfPrayerModel(
      id: 5,
      obligationOfPrayerEnglishTitle: "Facing the Qibla",
      obligationOfPrayerUrduTitle: "قبلہ کی طرف رخ کرنا",
      obligationOfPrayerEnglishDetails:
          "Facing the Qibla (the direction of the Kaaba in Mecca) is an obligation for the validity of Salah (prayer) in Islam. Muslims are required to align themselves with the Qibla during prayer, as it symbolizes unity and signifies the direction of worship. Knowing the direction of the Qibla is essential for performing Salah correctly",
      obligationOfPrayerUduDetails:
          "قبلہ (مکہ میں خانہ کعبہ کی سمت) کی طرف منہ کرنا اسلام میں صلاۃ (نماز) کے صحیح ہونے کا فرض ہے۔ مسلمانوں پر لازم ہے کہ وہ نماز کے دوران قبلہ کے ساتھ خود کو سیدھ میں رکھیں، کیونکہ یہ اتحاد کی علامت ہے اور عبادت کی سمت کی نشاندہی کرتا ہے۔ نماز کو صحیح طریقے سے ادا کرنے کے لیے قبلہ کی سمت کا جاننا ضروری ہے۔",
      imagePath: "assets/images/face.png"),
  ObligationOfPrayerModel(
      id: 6,
      obligationOfPrayerEnglishTitle: "Time for prayer",
      obligationOfPrayerUrduTitle: "نماز کا وقت ہونا ",
      obligationOfPrayerEnglishDetails:
          "It is obligatory to pray Salah (prayer) on time in Islam. Each of the five daily prayers has a specific time window within which it should be performed, and it is considered a fundamental duty for Muslims to observe these timings and perform their prayers accordingly. Deliberately delaying or missing a prayer without a valid reason is considered a sin in Islam",
      obligationOfPrayerUduDetails:
          "اسلام میں وقت پر نماز پڑھنا فرض ہے۔ پانچوں نمازوں میں سے ہر ایک کا ایک مخصوص وقت ہوتا ہے جس کے اندر اسے ادا کیا جانا چاہیے، اور مسلمانوں کے لیے ان اوقات کی پابندی کرنا اور اس کے مطابق اپنی نمازیں ادا کرنا ایک بنیادی فرض سمجھا جاتا ہے۔ بغیر کسی معقول وجہ کے جان بوجھ کر نماز میں تاخیر یا چھوٹ جانا اسلام میں گناہ سمجھا جاتا ہے۔",
      imagePath: "assets/images/time.jpg"),
  ObligationOfPrayerModel(
      id: 7,
      obligationOfPrayerEnglishTitle: "Intention to pray",
      obligationOfPrayerUrduTitle: "نماز کی نیت کرنا",
      obligationOfPrayerEnglishDetails:
          "Intention (Niyyah) is a fundamental requirement for the validity of Salah (prayer) in Islam. Before starting each prayer, one must have the intention to perform the specific prayer being offered. The intention should be in the heart and not necessarily verbalized. The intention differentiates Salah from other actions and signifies that the prayer is being performed for the sake of Allah. Without a proper intention, Salah is not considered valid",
      obligationOfPrayerUduDetails:
          "اسلام میں نماز کی درستگی کے لیے نیت (نیت) ایک بنیادی شرط ہے۔ ہر نماز شروع کرنے سے پہلے جو مخصوص نماز پڑھی جا رہی ہے اسے ادا کرنے کی نیت کرنی چاہیے۔ نیت دل میں ہونی چاہیے ضروری نہیں کہ زبانی ہو۔ نیت نماز کو دوسرے اعمال سے ممتاز کرتی ہے اور اس بات کی نشاندہی کرتی ہے کہ نماز اللہ کی رضا کے لیے ادا کی جا رہی ہے۔ صحیح نیت کے بغیر نماز درست نہیں سمجھی جاتی۔",
      imagePath: "assets/images/intention.png"),
  ObligationOfPrayerModel(
      id: 8,
      obligationOfPrayerEnglishTitle: "تکبیر تحریمہ، یعنی اللہ اکبر کہنا۔",
      obligationOfPrayerUrduTitle: "Takbeer Tahrima",
      obligationOfPrayerEnglishDetails:
          "Takbeer Tahrimah, which means saying \"Allahu Akbar\" (Allah is the Greatest), is an integral part of Salah (prayer) and is obligatory. It is the opening Takbeer that marks the beginning of the prayer and transitions the individual into the state of prayer, known as Salah. Saying Takbeer Tahrimah is a vital component of each prayer, and it signifies the start of the prayer and the shift of focus toward worshiping Allah.",
      obligationOfPrayerUduDetails:
          "تکبیر تحریمہ، جس کا مطلب ہے \"اللہ اکبر\" کہنا (اللہ سب سے بڑا ہے)، نماز (نماز) کا ایک لازمی حصہ ہے اور فرض ہے۔ یہ ابتدائی تکبیر ہے جو نماز کے آغاز کی نشاندہی کرتی ہے اور فرد کو نماز کی حالت میں منتقل کرتی ہے جسے صلاۃ کہا جاتا ہے۔ تکبیر تحریمہ کہنا ہر نماز کا ایک اہم جز ہے، اور یہ نماز کے آغاز اور اللہ کی عبادت کی طرف توجہ مرکوز کرنے کی علامت ہے۔",
      imagePath: "assets/images/tahreema.png"),
  ObligationOfPrayerModel(
      id: 9,
      obligationOfPrayerEnglishTitle: "Standing",
      obligationOfPrayerUrduTitle: "قیام کرنا۔",
      obligationOfPrayerEnglishDetails:
          "Qayam (standing) is an obligatory part of Salah (prayer) for those who are physically able to do so. In most prayers, there are specific parts where standing is required, such as during the recitation of the Quran in the standing position (Qiyam), including the opening Takbeer (Takbeer Tahrimah) and while reciting portions of the Quran in each unit (Rakaht) of the prayer. Standing in prayer signifies respect, humility, and submission to Allah and it is an essential aspect of performing Salah correctly. and If a person is unable to stand due to a valid reason, such as illness or disability, they may perform the prayer while sitting or lying down, depending on their ability. However, standing is the default and preferred position for those who can do so, as it reflects greater reverence and humility in worship.",
      obligationOfPrayerUduDetails:
          "قیام (کھڑا) ان لوگوں کے لیے جو جسمانی طور پر ایسا کرنے کی استطاعت رکھتے ہیں، نماز کا ایک لازمی حصہ ہے۔ اکثر نمازوں میں کچھ مخصوص حصے ہوتے ہیں جہاں کھڑے ہونا ضروری ہوتا ہے، جیسے کھڑے ہونے کی حالت (قیام) میں تلاوت قرآن کے دوران، جس میں ابتدائی تکبیر (تکبیر تحریمہ) اور ہر اکائی (رکعت) میں قرآن کے کچھ حصے پڑھتے وقت۔ نماز کے. نماز میں کھڑا ہونا احترام، عاجزی اور اللہ کے سامنے سر تسلیم خم کرنے کی علامت ہے اور یہ نماز صحیح طریقے سے ادا کرنے کا ایک لازمی پہلو ہے۔ اور اگر کوئی شخص کسی صحیح وجہ مثلاً بیماری یا معذوری کی وجہ سے کھڑا نہ ہو سکے تو وہ اپنی استطاعت کے لحاظ سے بیٹھ کر یا لیٹ کر نماز پڑھ سکتا ہے۔ تاہم، کھڑے ہونا ان لوگوں کے لیے طے شدہ اور ترجیحی حیثیت ہے جو ایسا کر سکتے ہیں، کیونکہ یہ عبادت میں زیادہ تعظیم اور عاجزی کو ظاہر کرتا ہے۔",
      imagePath: "assets/images/standing.png"),
  ObligationOfPrayerModel(
      id: 10,
      obligationOfPrayerEnglishTitle: "Quran recitation",
      obligationOfPrayerUrduTitle: "تلاوت قرآن",
      obligationOfPrayerEnglishDetails:
          "Reciting the Quran in Salah is a way of directly communicating with Allah and is considered a means of increasing concentration and spiritual connection during prayer.",
      obligationOfPrayerUduDetails:
          "نماز کے دوران قرآن مجید کی تلاوت نماز کا ایک اہم اور واجب حصہ ہے۔ نماز کی ہر اکائی (رکعت) میں قرآن مجید کی بعض آیات کا پڑھنا واجب ہے۔فرض نمازوں میں ہر رکعت میں سورۃ فاتحہ پڑھنی چاہیے۔ مزید برآں، فاتحہ کے بعد قرآن کی دیگر آیات یا ابواب کی تلاوت کی بھی سفارش کی جاتی ہے، جیسے کہ سورہ اخلاص، الفلق، اور الناس۔سنت (غیر واجب) نمازوں میں، تلاوت لمبی ہو سکتی ہے، اور کوئی شخص قرآن کے جس حصے کو چاہے پڑھ سکتا ہے۔نماز میں قرآن کی تلاوت اللہ سے براہ راست رابطہ کرنے کا ایک طریقہ ہے اور اسے نماز کے دوران ارتکاز اور روحانی تعلق بڑھانے کا ذریعہ سمجھا جاتا ہے۔",
      imagePath: "assets/images/recitation.png"),
  ObligationOfPrayerModel(
      id: 11,
      obligationOfPrayerEnglishTitle: "To Bow (Rukoo)",
      obligationOfPrayerUrduTitle: "رکوع کرنا",
      obligationOfPrayerEnglishDetails:
          "Rukoo (bowing) is obligatory in Salah (prayer). After the initial Takbeer (Takbeer Tahrimah) and recitation of Al-Fatihah and another Surah or verses from the Quran, a person must bow in Rukoo. Rukoo involves bending the body from the waist, keeping the back straight, and placing the hands on the knees while saying subhana rabbiyal adheem (Glory is to my Lord, the Most Great) three times or more.Rukoo is a symbol of humility and submission to Allah, and it is an essential part of the prayer that must be performed correctly for the Salah to be valid.",
      obligationOfPrayerUduDetails:
          "رکوع (رکوع) نماز میں فرض ہے۔ ابتدائی تکبیر (تکبیر تحریمہ) اور سورۃ فاتحہ کی تلاوت اور قرآن مجید کی دوسری سورت یا آیات کے بعد رکوع میں رکوع کرنا چاہیے۔ رکوع میں جسم کو کمر سے جھکانا، کمر کو سیدھا رکھنا اور گھٹنوں پر ہاتھ رکھ کر سبحان ربی العظمیٰ کہتے ہوئے تین بار یا اس سے زیادہ کہا جاتا ہے۔رکوع اللہ کے سامنے عاجزی اور تواضع کی علامت ہے، اور یہ نماز کا ایک لازمی حصہ ہے جسے نماز کے صحیح ہونے کے لیے صحیح طریقے سے ادا کرنا ضروری ہے۔",
      imagePath: "assets/images/rukoo.png"),
  ObligationOfPrayerModel(
      id: 12,
      obligationOfPrayerEnglishTitle: "Prostrate twice",
      obligationOfPrayerUrduTitle: "دو سجدے کرنا ",
      obligationOfPrayerEnglishDetails:
          "Sujood (prostration) is an essential part of Salah (prayer) and is obligatory. After Rukoo (bowing), a person must perform two Sujood (prostrations) in each unit (Rak'ah) of the prayer. During Sujood, a person places their forehead, nose, both palms, knees, and toes on both feet on the ground, while saying subhana rabbiyal a'laa (Glory is to my Lord, the Most High) three times or more.Sujood is a position of utmost humility and submission to Allah, and it is a crucial part of the prayer that must be performed correctly for the Salah to be valid.",
      obligationOfPrayerUduDetails:
          "سجدہ نماز کا لازمی حصہ اور فرض ہے۔ رکوع (رکوع) کے بعد، آدمی کو نماز کی ہر اکائی (رکعت) میں دو سجدے (سجدے) کرنے چاہئیں۔سجدہ کے دوران آدمی اپنی پیشانی، ناک، دونوں ہتھیلیوں، گھٹنوں اور پیروں کی انگلیوں کو زمین پر رکھتا ہے اور تین بار یا اس سے زیادہ سبحان ربی الاعلیٰ کہتا ہے۔سجدہ اللہ کے سامنے انتہائی عاجزی اور تواضع کا مقام ہے، اور یہ نماز کا ایک اہم حصہ ہے جسے صحیح طریقے سے ادا کرنا ضروری ہے تاکہ نماز درست ہو۔",
      imagePath: "assets/images/sujood.png"),
  ObligationOfPrayerModel(
      id: 13,
      obligationOfPrayerEnglishTitle: "Sitting in the last position",
      obligationOfPrayerUrduTitle: "قعدہ اخیرہ میں بیٹھنا",
      obligationOfPrayerEnglishDetails:
          "In the last sitting position of the prayer, known as the Tashahhud, it is obligatory to sit. This sitting position is performed after the last unit (Rak'ah) of the prayer, and it includes reciting the Tashahhud, sending blessings upon the Prophet Muhammad (peace be upon him), and making supplications (dua).The Tashahhud is a declaration of faith and a recognition of the Prophet Muhammad's (peace be upon him) status as the Messenger of Allah. It is an essential part of the prayer that must be performed correctly for the Salah to be valid.",
      obligationOfPrayerUduDetails:
          "نماز کی آخری نشست میں جسے تشہد کہتے ہیں، بیٹھنا واجب ہے۔ یہ بیٹھنے کی پوزیشن نماز کی آخری اکائی (رکعت) کے بعد کی جاتی ہے، اور اس میں تشہد پڑھنا، نبی اکرم صلی اللہ علیہ وسلم پر درود بھیجنا، اور دعائیں کرنا شامل ہیں۔تشہد ایمان کا اعلان ہے اور رسول اللہ صلی اللہ علیہ وسلم کی حیثیت کو تسلیم کرنا ہے۔ یہ نماز کا ایک لازمی حصہ ہے جسے صحیح طریقے سے ادا کرنا ضروری ہے تاکہ نماز صحیح ہو۔",
      imagePath: "assets/images/sitting.png")
];

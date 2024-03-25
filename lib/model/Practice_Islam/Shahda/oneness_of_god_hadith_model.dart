// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class OnenessOfGodInHadithModel {
  int id;
  String hadithArabicText;
  String hadithUrduText;
  String hadithEnglishText;
  String hadithReference;
  OnenessOfGodInHadithModel({
    required this.id,
    required this.hadithArabicText,
    required this.hadithUrduText,
    required this.hadithEnglishText,
    required this.hadithReference,
  });

  OnenessOfGodInHadithModel copyWith({
    int? id,
    String? hadithArabicText,
    String? hadithUrduText,
    String? hadithEnglishText,
    String? hadithReference,
  }) {
    return OnenessOfGodInHadithModel(
      id: id ?? this.id,
      hadithArabicText: hadithArabicText ?? this.hadithArabicText,
      hadithUrduText: hadithUrduText ?? this.hadithUrduText,
      hadithEnglishText: hadithEnglishText ?? this.hadithEnglishText,
      hadithReference: hadithReference ?? this.hadithReference,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'hadithArabicText': hadithArabicText,
      'hadithUrduText': hadithUrduText,
      'hadithEnglishText': hadithEnglishText,
      'hadithReference': hadithReference,
    };
  }

  factory OnenessOfGodInHadithModel.fromMap(Map<String, dynamic> map) {
    return OnenessOfGodInHadithModel(
      id: map['id'] as int,
      hadithArabicText: map['hadithArabicText'] as String,
      hadithUrduText: map['hadithUrduText'] as String,
      hadithEnglishText: map['hadithEnglishText'] as String,
      hadithReference: map['hadithReference'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory OnenessOfGodInHadithModel.fromJson(String source) =>
      OnenessOfGodInHadithModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'OnenessOfGodInHadithModel(id: $id, hadithArabicText: $hadithArabicText, hadithUrduText: $hadithUrduText, hadithEnglishText: $hadithEnglishText, hadithReference: $hadithReference)';
  }

  @override
  bool operator ==(covariant OnenessOfGodInHadithModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.hadithArabicText == hadithArabicText &&
        other.hadithUrduText == hadithUrduText &&
        other.hadithEnglishText == hadithEnglishText &&
        other.hadithReference == hadithReference;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        hadithArabicText.hashCode ^
        hadithUrduText.hashCode ^
        hadithEnglishText.hashCode ^
        hadithReference.hashCode;
  }
}

List<OnenessOfGodInHadithModel> onenessOfGodHadithList =
    <OnenessOfGodInHadithModel>[
  OnenessOfGodInHadithModel(
      id: 1,
      hadithArabicText:
          "وعن ابن عمر رضي الله عنهما قال:  قال رسول الله صلى الله عليه وسلم : \"أمرت أن أقاتل الناس حتى يشهدوا أن لا إله إلا الله وأن محمدًا رسول الله، ويقيموا الصلاة، ويؤتوا الزكاة، فإذا فعلوا ذلك، عصموا مني دماءهم وأموالهم إلا بحق الإسلام وحسابهم على الله",
      hadithUrduText:
          "رسول اللہ صلی اللہ علیہ وآلہ وسلم نے فرمایا: \"مجھے لوگوں کو جہاں تک وہ لا الہ الا اللہ اور محمد رسول اللہ کا قول نہیں کہتے، ان کے ساتھ جہاد کرنے کا حکم دیا گیا ہے، اور جب تک وہ نماز قائم کریں، زکوۃ دیں، ان کی جان اور مال کو حرام نہ جانے دیا جائے، مگر ان کے خلاف کوئی قانونی حکم ہو، اور ان کو اللہ کی طرف سے حساب کرنا ہے۔",
      hadithEnglishText:
          "The Messenger of Allah (ﷺ) said, \"I have been commanded to fight people till they testify 'La ilaha illallah' (there is no true god except Allah) that Muhammad (ﷺ) is his slave and Messenger, and they establish Salat, and pay Zakat; and if they do this, their blood (life) and property are secured except when justified by law, and it is for Allah to call them to account.\"[Al-Bukhari and Muslim]",
      hadithReference: "Riyad as-Salihin 1209"),
  OnenessOfGodInHadithModel(
      id: 2,
      hadithArabicText:
          "حَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ، حَدَّثَنَا لَيْثٌ، عَنِ ابْنِ عَجْلاَنَ، عَنْ مُحَمَّدِ بْنِ يَحْيَى بْنِ حَبَّانَ، عَنِ ابْنِ مُحَيْرِيزٍ، عَنِ الصُّنَابِحِيِّ، عَنْ عُبَادَةَ بْنِ الصَّامِتِ، أَنَّهُ قَالَ دَخَلْتُ عَلَيْهِ وَهُوَ فِي الْمَوْتِ فَبَكَيْتُ فَقَالَ مَهْلاً لِمَ تَبْكِي فَوَاللَّهِ لَئِنِ اسْتُشْهِدْتُ لأَشْهَدَنَّ لَكَ وَلَئِنْ شُفِّعْتُ لأَشْفَعَنَّ لَكَ وَلَئِنِ اسْتَطَعْتُ لأَنْفَعَنَّكَ ثُمَّ قَالَ وَاللَّهِ مَا مِنْ حَدِيثٍ سَمِعْتُهُ مِنْ رَسُولِ اللَّهِ صلى الله عليه وسلم لَكُمْ فِيهِ خَيْرٌ إِلاَّ حَدَّثْتُكُمُوهُ إِلاَّ حَدِيثًا وَاحِدًا وَسَوْفَ أُحَدِّثُكُمُوهُ الْيَوْمَ وَقَدْ أُحِيطَ بِنَفْسِي سَمِعْتُ رَسُولَ اللَّهِ صلى الله عليه وسلم يَقُولُ \" مَنْ شَهِدَ أَنْ لاَ إِلَهَ إِلاَّ اللَّهُ وَأَنَّ مُحَمَّدًا رَسُولُ اللَّهِ حَرَّمَ اللَّهُ عَلَيْهِ النَّارَ \"",
      hadithUrduText:
          "سنابیحی کی روایت میں ہے کہ وہ عبادہ بن کے پاس گئے۔ سمیت جب مرنے والا تھا۔ میں آنسوؤں میں پھٹ پڑا۔ اس پر اس نے مجھ سے کہا: مجھے کچھ وقت دیں (تاکہ میں آپ سے بات کروں)۔ کیوں روتے ہو؟ اللہ کی قسم اگر مجھ سے گواہی دینے کے لیے کہا جائے تو میں ضرور تمہارے لیے گواہی دوں گا (کہ تم مومن ہو)۔ اگر مجھ سے شفاعت کی درخواست کی جائے تو میں آپ کی شفاعت ضرور کروں گا اور اگر مجھ میں طاقت ہے تو میں ضرور آپ کے ساتھ بھلائی کروں گا، پھر فرمایا: خدا کی قسم میں نے رسول اللہ صلی اللہ علیہ وسلم سے کبھی کوئی ایسی بات نہیں سنی جو آپ کے لیے فائدہ کا ذریعہ بن سکتا تھا اور پھر اس ایک حدیث کے سوا آپ تک نہ پہنچاتا۔ کہ آج میں آپ کو سنانے کا ارادہ رکھتا ہوں، چونکہ میں اپنی آخری سانسیں لینے جا رہا ہوں۔ میں نے رسول اللہ صلی اللہ علیہ وسلم کو فرماتے سنا: جس نے گواہی دی کہ اللہ کے سوا کوئی معبود نہیں اور محمد صلی اللہ علیہ وسلم اللہ کے رسول ہیں تو اللہ تعالیٰ اس پر جہنم کی آگ حرام کر دے گا۔",
      hadithEnglishText:
          "It is narrated on the authority of Sunabihi that he went to Ubada b. Samit when he was about to die. I burst into tears. Upon this he said to me: \n Allow me some time (so that I may talk with you). Why do you weep? By Allah, if I am asked to bear witness, I would certainly testify for you (that you are a believer). Should I be asked to intercede, I would certainly intercede for you, and if I have the power, I would certainly do good to you, and then observed: By Allah, never did I hear anything from the Messenger of Allah (ﷺ) which could have been a source of benefit to you and then not conveyed it to you except this single hadith. That I intend to narrate to you today, since I am going to breathe my last. I heard the Messenger of Allah (ﷺ) say: He who testifies that there is no god but Allah and that Muhammad is the messenger of Allah, Allah would prohibit the fire of Hell for him.",
      hadithReference: "Sahih Muslim 29"),
  OnenessOfGodInHadithModel(
      id: 3,
      hadithArabicText:
          "وعن ابن عمر رضي الله عنهما أن رسول الله صلى الله عليه وسلم قال :  بني الإسلام على خمس : شهادة أن لا إله إلى الله وأن محمدًا رسول الله، وإقام الصلاة، وإيتاء الزكاة، وحج البيت، وصوم رمضان \" ( متفق عليه )",
      hadithUrduText:
          "ابن عمر رضی اللہ عنہما نے بیان کیا:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: اسلام کی بنیاد پانچ ستونوں پر ہے، جو اس بات کی گواہی دیتا ہے کہ لا الہ الا اللہ و انا محمد الرسول اللہ [اللہ کے سوا کوئی حقیقی معبود نہیں، اور محمد (صلی اللہ علیہ وسلم) اللہ کے رسول ہیں، نماز قائم کرنا، زکوٰۃ ادا کرنا، خانہ کعبہ کی زیارت کرنا اور صوم (روزہ) رکھنا۔ رمضان کے مہینے میں۔",
      hadithEnglishText:
          "Ibn 'Umar (May Allah be pleased with them) reported:The Messenger of Allah (ﷺ) said, \"(The superstructure of) Islam is based on five (pillars), testifying the fact that La ilaha illallah wa anna Muhammad-ar-Rasul-ullah [there is no true god except Allah, and Muhammad ((ﷺ)) is the Messenger of Allah], establishing As- Salat (the prayers), paying Zakat (poor due), the pilgrimage to the House [of Allah (Ka'bah)], and the Saum (fasting) during the month of Ramadan.\"[Al-Bukhari and Muslim]",
      hadithReference: "Sahih Muslim 17 - A"),
  OnenessOfGodInHadithModel(
      id: 4,
      hadithArabicText:
          "حَدَّثَنَا خَلَفُ بْنُ هِشَامٍ، حَدَّثَنَا حَمَّادُ بْنُ زَيْدٍ، عَنْ أَبِي جَمْرَةَ، قَالَ سَمِعْتُ ابْنَ عَبَّاسٍ، ح وَحَدَّثَنَا يَحْيَى بْنُ يَحْيَى، - وَاللَّفْظُ لَهُ - أَخْبَرَنَا عَبَّادُ بْنُ عَبَّادٍ، عَنْ أَبِي جَمْرَةَ، عَنِ ابْنِ عَبَّاسٍ، قَالَ قَدِمَ وَفْدُ عَبْدِ الْقَيْسِ عَلَى رَسُولِ اللَّهِ صلى الله عليه وسلم فَقَالُوا يَا رَسُولَ اللَّهِ إِنَّا هَذَا الْحَىَّ مِنْ رَبِيعَةَ وَقَدْ حَالَتْ بَيْنَنَا وَبَيْنَكَ كُفَّارُ مُضَرَ فَلاَ نَخْلُصُ إِلَيْكَ إِلاَّ فِي شَهْرِ الْحَرَامِ فَمُرْنَا بِأَمْرٍ نَعْمَلُ بِهِ وَنَدْعُو إِلَيْهِ مَنْ وَرَاءَنَا . قَالَ \" آمُرُكُمْ بِأَرْبَعٍ وَأَنْهَاكُمْ عَنْ أَرْبَعٍ الإِيمَانِ بِاللَّهِ - ثُمَّ فَسَّرَهَا لَهُمْ فَقَالَ - شَهَادَةِ أَنْ لاَ إِلَهَ إِلاَّ اللَّهُ وَأَنَّ مُحَمَّدًا رَسُولُ اللَّهِ وَإِقَامِ الصَّلاَةِ وَإِيتَاءِ الزَّكَاةِ وَأَنْ تُؤَدُّوا خُمُسَ مَا غَنِمْتُمْ وَأَنْهَاكُمْ عَنِ الدُّبَّاءِ وَالْحَنْتَمِ وَالنَّقِيرِ وَالْمُقَيَّرِ \". زَادَ خَلَفٌ فِي رِوَايَتِهِ \" شَهَادَةِ أَنْ لاَ إِلَهَ إِلاَّ اللَّهُ \". وَعَقَدَ وَاحِدَةً ",
      hadithUrduText:
          "ابن عباس رضی اللہ عنہما سے روایت ہے کہ عبدالقیس کا ایک وفد رسول اللہ صلی اللہ علیہ وسلم کے پاس آیا اور کہا:اے اللہ کے رسول صلی اللہ علیہ وسلم ہمارا قبیلہ ربیعہ ہے اور آپ کے اور ہمارے درمیان مدر کے کافر کھڑے ہیں اور ہمیں حرمت والے مہینے کے علاوہ آپ کے پاس آنے کی آزادی نہیں ہے۔ ہمیں ایک ایسے عمل کی طرف ہدایت دیں جو ہم خود انجام دیں اور اپنے ساتھ رہنے والوں کو دعوت دیں۔ اس پر آپ صلی اللہ علیہ وسلم نے فرمایا: میں تمہیں چار چیزوں کا حکم دیتا ہوں اور چار کاموں سے منع کرتا ہوں۔ (وہ چار کام جن کا آپ کو حکم دیا گیا ہے وہ یہ ہیں): اللہ پر ایمان، پھر ان کے لیے اس کی وضاحت فرمائی اور فرمایا: حقیقت کی گواہی دینا۔ کہ اللہ کے سوا کوئی معبود نہیں، یہ کہ محمد صلی اللہ علیہ وسلم اللہ کے رسول ہیں، نماز کی پابندی، زکوٰۃ کی ادائیگی، تم اپنے مال غنیمت کا خمس (پانچواں حصہ) ادا کرو، اور میں تمہیں گول لوکی استعمال کرنے سے منع کرتا ہوں، شراب کے برتن، لکڑی کے برتن یا شراب کے لیے کھالیں۔ خلف بی۔ ہشام نے اپنی روایت میں یہ اضافہ کیا ہے: اس بات کی گواہی دینا کہ اللہ کے سوا کوئی معبود نہیں اور پھر اس نے اپنی انگلی سے رب کی وحدانیت کی طرف اشارہ کیا۔",
      hadithEnglishText:
          "It is narrated on the authority of Ibn 'Abbas that a delegation of Abdul Qais came to the Messenger of Allah (ﷺ) and said:Messenger of Allah, verily ours is a tribe of Rabi'a and there stand between you and us the unbelievers of Mudar and we find no freedom to come to you except in the sacred month. Direct us to an act which we should ourselves perform and invite those who live beside us. Upon this the Prophet remarked: I command you to do four things and prohibit you against four acts. (The four deeds which you are commanded to do are): Faith in Allah, and then he explained it for them and said: Testifying the fact. that there is no god but Allah, that Muhammad is the messenger of Allah, performance of prayer, payment of Zakat, that you pay Khums (one-fifth) of the booty fallen to your lot, and I prohibit you to use round gourd, wine jars, wooden pots or skins for wine. Khalaf b. Hisham has made this addition in his narration: Testifying the fact that there is no god but Allah, and then he with his finger pointed out the oneness of the Lord.",
      hadithReference: "Musnad Ahmad 452"),
  OnenessOfGodInHadithModel(
      id: 5,
      hadithArabicText:
          "حَدَّثَنَا إِسْحَاقُ بْنُ سُلَيْمَانَ، قَالَ سَمِعْتُ مُغِيرَةَ بْنَ مُسْلِمٍ أَبَا سَلَمَةَ، يَذْكُرُ عَنْ مَطَرٍ، عَنْ نَافِعٍ، عَنِ ابْنِ عُمَرَ، أَنَّ عُثْمَانَ، رَضِيَ اللَّهُ عَنْهُ أَشْرَفَ عَلَى أَصْحَابِهِ وَهُوَ مَحْصُورٌ فَقَالَ عَلَامَ تَقْتُلُونِي فَإِنِّي سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ لَا يَحِلُّ دَمُ امْرِئٍ مُسْلِمٍ إِلَّا بِإِحْدَى ثَلَاثٍ رَجُلٌ زَنَى بَعْدَ إِحْصَانِهِ فَعَلَيْهِ الرَّجْمُ أَوْ قَتَلَ عَمْدًا فَعَلَيْهِ الْقَوَدُ أَوْ ارْتَدَّ بَعْدَ إِسْلَامِهِ فَعَلَيْهِ الْقَتْلُ فَوَاللَّهِ مَا زَنَيْتُ فِي جَاهِلِيَّةٍ وَلَا إِسْلَامٍ وَلَا قَتَلْتُ أَحَدًا فَأُقِيدَ نَفْسِي مِنْهُ وَلَا ارْتَدَدْتُ مُنْذُ أَسْلَمْتُ إِنِّي أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللَّهُ وَأَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ.",
      hadithUrduText:
          "نافع سے ابن عمر سے روایت ہے کہ عثمان رضی اللہ عنہ نے اپنے ساتھیوں کی طرف دیکھا جب وہ محاصرے میں تھے اور فرمایا: تم مجھے کیوں مارنا چاہتے ہو؟ میں نے رسول اللہ صلی اللہ علیہ وسلم کو فرماتے سنا: مسلمان کا خون بہانا جائز نہیں سوائے تین صورتوں کے۔ وہ شخص جو شادی کے بعد زنا کا ارتکاب کرے تو اسے سنگسار کیا جائے، یا وہ شخص جس نے جان بوجھ کر قتل کیا ہو، تو اسے بدلہ میں قتل کیا جائے، یا وہ شخص جو مسلمان ہونے کے بعد مرتد ہو جائے، تو اس کو رجم کیا جائے گا۔ پھانسی دی جائے۔خدا کی قسم میں نے نہ جاہلیت میں کبھی زنا کیا اور نہ اسلام میں، میں نے کبھی کسی کو ایسا قتل نہیں کیا کہ بدلہ میں میری جان لے لی جائے۔ اور میں نے جب سے مسلمان ہوا ہے کبھی مرتد نہیں ہوا اس بات کی گواہی دیتا ہوں کہ اللہ کے سوا کوئی معبود نہیں اور محمد اس کے بندے اور اس کے رسول ہیں",
      hadithEnglishText:
          "It was narrated from Nafi` from Ibn `Umar, that Uthman (رضي الله عنه) looked out at his companions when he was under siege and said : Why do you want to kill me? I heard the Messenger of Allah (ﷺ) say: `It is not permissible to shed the blood of a Muslim man except in one of three cases; a man who commits zina after being married, so he is to be stoned, or a man who killed deliberately (committed murder), so he is to be killed in retaliation, or a man who apostatised after having become Muslim, so he is to be executed.” By Allah, I never committed zina either during the Jahiliyyah or in Islam, I never killed anyone such that my life should be taken in retaliation; and I never apostatised since [became Muslim bear witness that there is no god but Allah and that Muhammad is His slave and His Messenger",
      hadithReference: "Riyad as-Salihin 3912"),
  OnenessOfGodInHadithModel(
      id: 6,
      hadithArabicText:
          "وعن أبي عبد الله طارق بن أشيم ، رضي الله عنه ، قال: سمعت رسول الله صلى الله عليه وسلم يقول\:\" من قال لا إله إلا الله ، وكفر بما يعبد من دون الله، حرم ماله ودمه، وحسابه على الله تعالى\"(رواه مسلم)",
      hadithUrduText:
          "ابو عبداللہ بن طارق بن اشیم رضی اللہ عنہ بیان کرتے ہیں:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: جس نے لا الہ الا اللہ (اللہ کے سوا کوئی معبود نہیں) کا اقرار کیا اور ہر اس چیز کا انکار کیا جسے لوگ اللہ کے سوا پوجتے ہیں تو اس کا مال اور خون حرام ہو جاتا ہے اور اللہ کو پکارنا ہے۔ اس کا حساب لیا جائے\"",
      hadithEnglishText:
          "Abu Abdullah bin Tariq bin Ashyam (May Allah be pleased with him) reported:Messenger of Allah (ﷺ) said, \"He who professes La ilaha illallah (There is no true god except Allah), and denies of everything which the people worship besides Allah, his property and blood become inviolable, and it is for Allah to call him to account\".[Muslim].",
      hadithReference: "Riyad as-Salihin 391"),
  OnenessOfGodInHadithModel(
      id: 7,
      hadithArabicText:
          "وعن جابر رضي الله عنه قال: سمعت رسول الله صلى الله عليه وسلم يقول: \"أفضل الذكر: لا إله إلا الله\". رواه الترمذي وقال حديث حسن",
      hadithUrduText:
          "جابر رضی اللہ عنہ نے بیان کیا:میں نے رسول اللہ صلی اللہ علیہ وسلم کو فرماتے ہوئے سنا کہ اللہ کے ذکر کو منانے کا بہترین طریقہ یہ ہے کہ لا الہ الا اللہ کہا جائے۔ [ترمذی]",
      hadithEnglishText:
          "Jabir (May Allah be pleased with him) reported : I heard the Messenger of Allah (ﷺ) saying, \"The best way to celebrate the remembrance of Allah is to say: La ilaha illallah (there is no true god except Allah).\"[At-Tirmidhi].",
      hadithReference: "Riyad as-Salihin 1437"),
  OnenessOfGodInHadithModel(
      id: 8,
      hadithArabicText:
          "وعن أبي سعيد الخدري رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم : “لقنوا موتاكم لا إله إلا الله\"(رواه مسلم)",
      hadithUrduText:
          "ابو سعید خدری رضی اللہ عنہ بیان کرتے ہیں:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: اپنے مرنے والوں کو لا الہ الا اللہ پڑھنے کی تلقین کرو۔[مسلمان]",
      hadithEnglishText:
          "Abu Sa'id Al-Khudri (May Allah be pleased with him) reported:The Messenger of Allah (ﷺ) said, \"Exhort your dying men to recite: 'La ilaha illallah' (There is no true god except Allah).\"[Muslim].",
      hadithReference: "Riyad as-Salihin 918"),
  OnenessOfGodInHadithModel(
      id: 9,
      hadithArabicText:
          "عن معاذ رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم :  \"من كان آخر كلامه لا إله إلا الله دخل الجنة\"(رواه أبو داود والحاكم وقال: صحيح الإسناد)",
      hadithUrduText:
          "معاذ بن جبل رضی اللہ عنہ بیان کرتے ہیں:رسول اللہ صلی اللہ علیہ وسلم نے فرمایا جس کا آخری کلمہ لا الہ الا اللہ ہو وہ جنت میں جائے گا۔[ابو داؤد]۔",
      hadithEnglishText:
          "Mu`adh bin Jabal (May Allah be pleased with him) reported:The Messenger of Allah (ﷺ) said, \"He whose last words are: `La ilaha illallah' (There is no true god except Allah) will enter Jannah.''[Abu Dawud].",
      hadithReference: "Riyad as-Salihin 917"),
  OnenessOfGodInHadithModel(
      id: 10,
      hadithArabicText:
          "عَنْ أَبِي هُرَيْرَةَ، قَالَ: قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ: «قُلْ آمَنْتُ بِاللَّهِ، ثُمَّ اسْتَقِم",
      hadithUrduText:
          "حضرت ابو ہریرہ رضی اللہ عنہ سے روایت ہے کہ رسول اللہ صلی اللہ علیہ وسلم نے فرمایا: \"کہہ دو: میں اللہ پر ایمان لاتا ہوں، پھر استقامت دکھاؤ",
      hadithEnglishText:
          "Narrated Abu Huraira: The Messenger of Allah (ﷺ) said, \"Say, 'I believe in Allah,' and then be steadfast (straight on the right path).\"",
      hadithReference: "Sahih Muslim 38")
];

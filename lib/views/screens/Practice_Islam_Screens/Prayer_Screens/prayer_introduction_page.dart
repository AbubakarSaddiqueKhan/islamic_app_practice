import 'package:flutter/material.dart';

class PrayerIntroductionPage extends StatefulWidget {
  const PrayerIntroductionPage({super.key});

  @override
  State<PrayerIntroductionPage> createState() => _PrayerIntroductionPageState();
}

class _PrayerIntroductionPageState extends State<PrayerIntroductionPage> {
  @override
  Widget build(BuildContext context) {
    final Size(:width, :height) = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/dark.jpg",
                ),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "نماز",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      fontFamily: "Amiri", color: Colors.white, fontSize: 30),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "صلاۃ عبادت کی ایک خاص شکل ہے جو شہادت (ایمان کی گواہی) کے بعد اسلام کا دوسرا اہم ترین ستون ہے۔ یہ دن میں پانچ وقت کی نماز کی ایک فرضی شکل ہے جو قرآن پاک میں نازل ہوئی ہے اور ہمیں حضرت محمد صلی اللہ علیہ وسلم نے سکھائی ہے۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.2,
                      wordSpacing: 2.5,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 35),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "The salah is a special form of worship that is the second most important pillar of Islam after the shahada (testimony of faith). It is an obligatory form of prayer performed five times a day that was revealed in the Holy Qur'an and taught to us by Prophet Muhammad (peace be upon him).",
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "صلاۃ میں متعدد جسمانی حرکات شامل ہیں - کھڑے ہونا، رکوع کرنا، سجدہ کرنا اور بیٹھنا۔ اس میں متعدد دعاؤں کے ساتھ عربی میں قرآن پاک کی آیات کی تلاوت بھی شامل ہے۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.2,
                      wordSpacing: 2.5,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 35),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "The salah involves a number of physical movements – standing, bowing, prostrating, and sitting. It also involves the recitation of verses from the Holy Quran in Arabic along with a number of dua (supplications).",
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: height * 0.35,
                  width: width,
                  child: Image.asset(
                    "assets/images/namaz.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const Text(
                  "مسلمان جب بھی نماز ادا کریں گے، مکہ مکرمہ میں اللہ کے مقدس گھر کعبہ کی طرف رخ کریں گے۔ یہ جسمانی حرکات، تلاوتیں اور دعائیں سب اللہ کے سامنے عاجزی اور سر تسلیم خم کرنے کے لیے کی جاتی ہیں۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.2,
                      wordSpacing: 2.5,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 35),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "The Muslim will face the direction of the Kaba, the Sacred House of Allah in Makkah, whenever they perform their prayer. These physical movements, recitations, and supplications are all done to show humility and submission to Allah.",
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

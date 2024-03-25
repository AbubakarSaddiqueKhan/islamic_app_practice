import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Prayer_Screen_Widgets/obligation_of_prayer_widget.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Prayer_Screen_Widgets/obligations_of_prayer_brief_introduction.dart';

class ObligationsOfPrayerScreen extends StatefulWidget {
  const ObligationsOfPrayerScreen({super.key});

  @override
  State<ObligationsOfPrayerScreen> createState() =>
      _ObligationsOfPrayerScreenState();
}

class _ObligationsOfPrayerScreenState extends State<ObligationsOfPrayerScreen> {
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
        child: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                ObligationsOfPrayerBriefIntroductionWidget(),
                SizedBox(
                  height: 10,
                ),
                FirstSixObligationOfPrayerWidgetsDatList(),
                SizedBox(
                  height: 10,
                ),
                ObligationOfIslamLastSevenIntroWidget(),
                SizedBox(
                  height: 10,
                ),
                LastSevenObligationOfPrayerWidgetsDataList()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



/***
 * 
 * 
 * 
 * 
 *                      //////////////////////////// Old Design ////////////////////////////////////
 *                 Text("~ 1 ~",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        fontFamily: "Archivo",
                        color: Colors.red,
                        fontSize: 24)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "بدن کا پاک ہونا۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Purification of the body.",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "جسم کی تطہیر درحقیقت اسلام میں نماز کے لیے فرض ہے۔ اس طہارت میں دو اہم صورتیں شامل ہیں: وضو (وضو) جس میں نماز سے پہلے جسم کے مخصوص حصوں کو دھونا اور غسل (رسمی غسل) جس میں جسم کے تمام حصوں کی صفائی شامل ہے۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Purification of the body is indeed an obligation for performing Salah (prayer) in Islam. This purification includes two main forms: Wudu (ablution), which involves washing specific parts of the body before prayer, and Ghusl (ritual bath), which involves cleaning all parts of the body.",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),

                /////////
                SizedBox(
                  height: 10,
                ),


                Text("~ 2 ~",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        fontFamily: "Archivo",
                        color: Colors.red,
                        fontSize: 24)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "کپڑوں کا پاک ہونا ۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Purification of clothes.",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "اسلام میں نماز کی درستگی کے لیے کپڑوں کا پاک ہونا کوئی خاص شرط نہیں ہے۔ تاہم، عبادت کے عمل کے احترام اور تعظیم کی علامت کے طور پر نماز کے لیے صاف کپڑے پہننے کی سفارش کی جاتی ہے۔ اسلام زندگی کے تمام پہلوؤں میں صفائی اور پاکیزگی پر زور دیتا ہے، بشمول نماز کے لیے لباس۔ لہٰذا، اگرچہ یہ واجب نہیں ہے، لیکن نماز کے لیے صاف اور معمولی لباس پہننے کی بہت زیادہ ترغیب دی جاتی ہے۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Purification of clothes is not a specific requirement for the validity of Salah (prayer) in Islam. However, it is recommended to wear clean clothes for prayer as a sign of respect and reverence for the act of worship. Islam emphasizes cleanliness and purity in all aspects of life, including one's attire for prayer. So, while it is not obligatory, it is highly encouraged to wear clean and modest clothing for Salah.",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),


                ///////
                SizedBox(
                  height: 10,
                ),
                Text("~ 3 ~",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        fontFamily: "Archivo",
                        color: Colors.red,
                        fontSize: 24)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "ضروری حصوں کا احاطہ کرنا",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Covering the essential parts",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "اسلام میں نماز کے دوران جسم کے ضروری حصوں کو ڈھانپنا مرد اور عورت دونوں پر فرض ہے۔ نماز میں مردوں کے لیے ناف سے گھٹنوں تک اور عورتوں کے لیے چہرے، ہاتھ اور پاؤں کے علاوہ پورا جسم ہے۔ اسلام کی طرف سے مقرر کردہ رہنما اصولوں کے احترام اور اطاعت کی علامت کے طور پر نماز کے دوران ان حصوں کو مناسب طریقے سے اور معمولی طور پر ڈھانپنا ضروری ہے۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "In Islam, covering the essential parts of the body (awrah) is obligatory for both men and women during Salah (prayer). The awrah for men in prayer is from the navel to the knees, while for women, it is the entire body except the face, hands, and feet. It's important to cover these parts properly and modestly during prayer as a sign of respect and obedience to the guidelines set by Islam.",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),

                ///////////
                SizedBox(
                  height: 10,
                ),
                Text("~ 4 ~",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        fontFamily: "Archivo",
                        color: Colors.red,
                        fontSize: 24)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "جگہ کا پاک ہونا۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Purification of the place.",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "نماز کے صحیح ہونے کے لیے اسلام میں اس جگہ (جسے نماز کی جگہ یا مسلہ کہا جاتا ہے) کی پاکیزگی کوئی خاص شرط نہیں ہے۔ تاہم، نماز میں توجہ اور ارتکاز کو بڑھانے کے طریقے کے طور پر، نجاست اور خلفشار سے پاک صاف اور پاک جگہ پر نماز ادا کرنے کی سفارش کی جاتی ہے۔ اسلام عبادت کے تمام پہلوؤں بشمول نماز کی جگہ میں صفائی اور پاکیزگی کی ترغیب دیتا ہے۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Purification of the place where one intends to pray (known as the prayer area or Musalla) is not a specific requirement for the validity of Salah (prayer) in Islam. However, it is recommended to pray in a clean and pure place, free from impurities (najasat) and distractions, as a way to enhance focus and concentration in prayer. Islam encourages cleanliness and purity in all aspects of worship, including the place of prayer.",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),

                

                ////////
                SizedBox(
                  height: 10,
                ),
                Text("~ 6 ~",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        fontFamily: "Archivo",
                        color: Colors.red,
                        fontSize: 24)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "قبلہ کی طرف رخ کرنا",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Facing the Qibla",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "قبلہ (مکہ میں خانہ کعبہ کی سمت) کی طرف منہ کرنا اسلام میں صلاۃ (نماز) کے صحیح ہونے کا فرض ہے۔ مسلمانوں پر لازم ہے کہ وہ نماز کے دوران قبلہ کے ساتھ خود کو سیدھ میں رکھیں، کیونکہ یہ اتحاد کی علامت ہے اور عبادت کی سمت کی نشاندہی کرتا ہے۔ نماز کو صحیح طریقے سے ادا کرنے کے لیے قبلہ کی سمت کا جاننا ضروری ہے۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Facing the Qibla (the direction of the Kaaba in Mecca) is an obligation for the validity of Salah (prayer) in Islam. Muslims are required to align themselves with the Qibla during prayer, as it symbolizes unity and signifies the direction of worship. Knowing the direction of the Qibla is essential for performing Salah correctly",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),

                ...
                Text("~ 7 ~",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        fontFamily: "Archivo",
                        color: Colors.red,
                        fontSize: 24)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "نماز کا وقت ہونا ۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Time for prayer.",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "اسلام میں وقت پر نماز پڑھنا فرض ہے۔ پانچوں نمازوں میں سے ہر ایک کا ایک مخصوص وقت ہوتا ہے جس کے اندر اسے ادا کیا جانا چاہیے، اور مسلمانوں کے لیے ان اوقات کی پابندی کرنا اور اس کے مطابق اپنی نمازیں ادا کرنا ایک بنیادی فرض سمجھا جاتا ہے۔ بغیر کسی معقول وجہ کے جان بوجھ کر نماز میں تاخیر یا چھوٹ جانا اسلام میں گناہ سمجھا جاتا ہے۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "It is obligatory to pray Salah (prayer) on time in Islam. Each of the five daily prayers has a specific time window within which it should be performed, and it is considered a fundamental duty for Muslims to observe these timings and perform their prayers accordingly. Deliberately delaying or missing a prayer without a valid reason is considered a sin in Islam.",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),


                ....
                Text("~ 8 ~",
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                        fontFamily: "Archivo",
                        color: Colors.red,
                        fontSize: 24)),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "نماز کی نیت کرنا",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Intention to pray",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "اسلام میں نماز کی درستگی کے لیے نیت (نیت) ایک بنیادی شرط ہے۔ ہر نماز شروع کرنے سے پہلے جو مخصوص نماز پڑھی جا رہی ہے اسے ادا کرنے کی نیت کرنی چاہیے۔ نیت دل میں ہونی چاہیے ضروری نہیں کہ زبانی ہو۔ نیت نماز کو دوسرے اعمال سے ممتاز کرتی ہے اور اس بات کی نشاندہی کرتی ہے کہ نماز اللہ کی رضا کے لیے ادا کی جا رہی ہے۔ صحیح نیت کے بغیر نماز درست نہیں سمجھی جاتی۔",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                      height: 1.25,
                      wordSpacing: 4,
                      fontFamily: "Saleem",
                      color: Colors.green,
                      fontSize: 36),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Intention (Niyyah) is a fundamental requirement for the validity of Salah (prayer) in Islam. Before starting each prayer, one must have the intention to perform the specific prayer being offered. The intention should be in the heart and not necessarily verbalized. The intention differentiates Salah from other actions and signifies that the prayer is being performed for the sake of Allah. Without a proper intention, Salah is not considered valid.",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),



 */
import 'package:flutter/material.dart';

class ObligationsOfPrayerBriefIntroductionWidget extends StatelessWidget {
  const ObligationsOfPrayerBriefIntroductionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "فرائض  نمازہ",
          textDirection: TextDirection.rtl,
          style:
              TextStyle(fontFamily: "Amiri", color: Colors.white, fontSize: 30),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            "خدا مجھے معاف کرے اور اس مطالعہ اور دوسری جگہوں پر غلط تشریح کی گئی کسی بھی علامت کے بارے میں میری رہنمائی کرے۔ وہ ہمیشہ اپنے گہرے صحیفوں کی بہتر تفہیم کے لیے ہماری رہنمائی کرے تاکہ ہم اپنے آپ کو پاک کر سکیں اور اپنے علم میں اضافہ کر سکیں۔",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontFamily: "Amiri", color: Colors.green, fontSize: 24),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
              "\"May God forgive me and guide me about any signs that have been misinterpreted in this study and elsewhere. May He always guide us to a better understanding of His deep scriptures so that we can purify ourselves and increase our knowledge.\"",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Archivo", color: Colors.lime, fontSize: 16)),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "نماز میں کل 13 فرائض ہیں ، جن میں سے ایک فرض بھی ادا کرنے سے رہ جائے تو نماز کا لوٹانا واجبہے، یعنی نماز دوبارہ پڑھنی پڑے گی",
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
          "There are a total of 13 obligations in prayer, and if one of them is missed, it is obligatory to return the prayer .It means that the prayer will have to be read again",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "ان میں سے سات فرض نماز سے پہلے ہیں، جنہیں شرطیں کہتے ہیں۔",
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
          "Seven of these obligations are preceded by the prayer, which are called conditions",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
        ),
      ],
    );
  }
}

class ObligationOfIslamLastSevenIntroWidget extends StatelessWidget {
  const ObligationOfIslamLastSevenIntroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "نماز کے اندر چھ فرائض ہیں جنہیں نماز کے ارکان کہتے ہیں۔",
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
          "There are six duties within the prayer which are called the members of the prayer.",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontFamily: "Archivo", color: Colors.cyan, fontSize: 18),
        ),
      ],
    );
  }
}

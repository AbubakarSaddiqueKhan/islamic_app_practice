import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Prayer/prophetic_way_of_prayer.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Prayer_Screen_Widgets/prophetic_way_of_prayer_in_the_light_of_hadith_widget.dart';

class ImamShafiPointOfViewOnRecitingSurahLoud extends StatelessWidget {
  const ImamShafiPointOfViewOnRecitingSurahLoud({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("امام شافعی کا نقطہ نظر",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.white,
                fontSize: 26)),
        const Text("The point of view of Imam Shafi",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.amber, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
            "اس قول کے مطابق ہمیں نماز کی ہر رکعت میں سورہ فاتحہ پڑھنی چاہیے۔ خواہ ہم خود نماز پڑھیں، یا جماعت میں امام کے پیچھے نماز پڑھیں، قطع نظر اس کے کہ امام بلند آواز سے پڑھے (جیسے فجر کی پہلی دو رکعت مغرب اور عشاء کی پہلی دو رکعتیں) یا خاموشی سے پڑھے۔ (جیسے ظہر، عصر، مغرب کی آخری رکعت اور عشاء کی آخری دو رکعت)۔. یہ قول بنیادی طور پر عبادہ بن صامت رضی اللہ عنہ کی مذکورہ بالا حدیث پر مبنی ہے۔ لیکن ان کے قول کی تائید میں صرف یہی حدیث نہیں ہے۔ بہت زیادہ ہیں. اس قول کی تائید کرنے والی بعض دوسری روایات یہ ہیں:",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.green,
                fontSize: 26)),
        const Text(
            "As per this view, we should recite ‘Surah Al-Fatiha’ in each and every raka’at of Salat. Whether we pray on our own, or pray behind an Imam in the congregation, irrespective of the fact whether the Imam recites loudly (like in Fajr, the first two raka’at of Maghrib and first two raka’at of Isha) or recites silently (like in Dhuhr, Asr, last raka’at of Maghrib and last two raka’at of Isha).. This view is primarily based on the hadith of Ubada bin As-Samit (RA) mentioned above. But that is not the only hadith in support of their view; there are many more. Some of the other narrations that lend support to this view are:",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        const Text(
            "اس قول کے مطابق ہمیں نماز کی ہر رکعت میں سورہ فاتحہ پڑھنی چاہیے۔ خواہ ہم خود نماز پڑھیں، یا جماعت میں امام کے پیچھے نماز پڑھیں، قطع نظر اس کے کہ امام بلند آواز سے پڑھے (جیسے فجر کی پہلی دو رکعت مغرب اور عشاء کی پہلی دو رکعتیں) یا خاموشی سے پڑھے۔ (جیسے ظہر، عصر، مغرب کی آخری رکعت اور عشاء کی آخری دو رکعت)۔. یہ قول بنیادی طور پر عبادہ بن صامت رضی اللہ عنہ کی مذکورہ بالا حدیث پر مبنی ہے۔ لیکن ان کے قول کی تائید میں صرف یہی حدیث نہیں ہے۔ بہت زیادہ ہیں. اس قول کی تائید کرنے والی بعض دوسری روایات یہ ہیں:",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.green,
                fontSize: 26)),
        const Text(
            "As per this view, we should recite ‘Surah Al-Fatiha’ in each and every raka’at of Salat. Whether we pray on our own, or pray behind an Imam in the congregation, irrespective of the fact whether the Imam recites loudly (like in Fajr, the first two raka’at of Maghrib and first two raka’at of Isha) or recites silently (like in Dhuhr, Asr, last raka’at of Maghrib and last two raka’at of Isha).. This view is primarily based on the hadith of Ubada bin As-Samit (RA) mentioned above. But that is not the only hadith in support of their view; there are many more. Some of the other narrations that lend support to this view are:",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[30]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[31]),
      ],
    );
  }
}

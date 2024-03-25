import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/model/Practice_Islam/Prayer/prophetic_way_of_prayer.dart';
import 'package:flutter_quran_api_practice/views/widgets/Practice_Islam_Screen_Widgets/Prayer_Screen_Widgets/prophetic_way_of_prayer_in_the_light_of_hadith_widget.dart';

class ImamMalikPointOfViewOnRecitingLoud extends StatelessWidget {
  const ImamMalikPointOfViewOnRecitingLoud({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("امام مالک کا نقطہ نظر",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.white,
                fontSize: 26)),
        const Text("Point of view of Imam Malik",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.lime, fontSize: 16)),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[32]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[33]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[34]),
        const Text(
            "حضرت مالک رضی اللہ عنہ سے مروی حدیث میں ہے کہ رسول اللہ صلی اللہ علیہ وسلم کے صحابہ نے ان رکعتوں میں سورہ فاتحہ پڑھنا چھوڑ دیا جس میں رسول اللہ صلی اللہ علیہ وسلم جماعت کے امام ہوتے تھے۔ بلند آواز سے تلاوت کی. لہٰذا ہمیں نماز فجر میں امام کے پیچھے نماز مغرب کی پہلی دو رکعتیں اور عشاء کی پہلی دو رکعتیں (یعنی وہ تمام نمازیں اور رکعتیں جن میں امام بلند آواز سے پڑھتا ہے) نہیں پڑھنا چاہیے۔البتہ صحابہ کرام رضی اللہ عنہ نمازوں (اور رکعتوں) میں (سورہ فاتحہ) پڑھتے رہے جس میں آپ صلی اللہ علیہ وسلم خاموشی سے پڑھتے تھے۔ اس کا اطلاق ظہر کی نماز، عصر کی نماز، مغرب کی آخری رکعت اور عشاء کی آخری دو رکعتوں پر ہوتا ہے۔ یہ ان تمام رکعتوں پر بھی لاگو ہوتا ہے جو ہم خود پڑھتے ہیں۔",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.green,
                fontSize: 26)),
        const Text(
            "The hadith reported from Malik (quoted above) tells us that the companions of Allah’s Messenger (PBUH) stopped reciting (‘Surah Al-Fatiha’) during the raka’ats in which the Prophet (PBUH), as an Imam of a congregation, recited out loudly. Therefore, we should not recite behind Imam in congregational prayers during Fajr, first two raka’ats of Maghrib and first two raka’ats of Isha (i.e. all such prayers and raka’ats during which the Imam recites loudly),However, the companions of the Prophet (PBUH) continued reciting (‘Surah Al-Fatiha’) in prayers (and raka’ats) in which the Prophet (PBUH) recited silently. This is applicable to congregational Dhuhr prayer, Asr prayer, the last raka’at of Maghrib and last two raka’ats of Isha. This is also applicable for all raka’ats of prayers which we pray by ourselves.",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        const Text("صورت فاتحہ ک بعد دوسری صورت پڑھنے کا بیان",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.brown,
                fontSize: 26)),
        const Text("Reciting another surah after faatiha",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.brown, fontSize: 16)),
        const SizedBox(
          height: 10,
        ),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[35]),
        PropheticWayOfPrayerInTheLightOfHadithWidget(
            propheticWayOfPrayerData: propheticWayOfPrayerDataList[36]),
      ],
    );
  }
}

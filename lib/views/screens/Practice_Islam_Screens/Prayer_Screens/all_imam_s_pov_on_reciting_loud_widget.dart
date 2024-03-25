import 'package:flutter/material.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/imam_abu_hanifa_pov_on_reciting_loud.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/imam_malik_point_of_view_on_reciting_loud.dart';
import 'package:flutter_quran_api_practice/views/screens/Practice_Islam_Screens/Prayer_Screens/imam_shafi_pov_on_reciting_loud.dart';

class AllImamPointOfViewOnRecitingLoudWidget extends StatelessWidget {
  const AllImamPointOfViewOnRecitingLoudWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text("Note : ",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.red, fontSize: 18)),
        SizedBox(
          height: 10,
        ),
        Text(
            "اس بات پر سب کا اتفاق ہے کہ نماز میں سورہ فاتحہ پڑھنا واجب ہے، اگر ایسا نہ کیا جائے تو نماز پوری نہیں ہوگی، البتہ اصل سوال یہ ہے کہ: نماز باجماعت پڑھنے والا پڑھے یا نہیں؟ امام کے پیچھے سورہ فاتحہ پڑھی یا نہیں؟",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.red,
                fontSize: 26)),
        Text(
            "It is agreed upon by all that it is compulsory to recite ‘Surah Al-Fatiha’ in Salat, failing which, the Salat will not be complete/valid , However, the main question is: Whether the one praying in the congregation should recite ‘Surah Al-Fatiha’ behind the Imam or not?",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.red, fontSize: 16)),
        SizedBox(
          height: 10,
        ),
        Text(
            "یہی سوال مختلف مکاتب فکر سے مختلف آراء پیدا کرتا ہے۔ اور اس پر اختلاف بعض اوقات غیر معقول حد تک وسیع اور ضدی ہو جاتا ہے۔ لہٰذا ہمارا فرض ہے کہ ہم اس خاص سوال سے جڑے حقائق کو سمجھیں اور مختلف آراء کے درمیان خلیج کو ختم کرنے کی کوشش کریں۔ ایسا کرنے کے لیے ہمیں اس بات کا مطالعہ کرنے کی ضرورت ہوگی کہ مختلف نظریات کیا ہیں اور وہ کون سے حوالے ہیں جن پر یہ آراء مبنی ہیں۔",
            textDirection: TextDirection.rtl,
            style: TextStyle(
                // height: 1.25,
                wordSpacing: 4,
                fontFamily: "Amiri",
                color: Colors.green,
                fontSize: 26)),
        Text(
            "It is this question that creates different opinions from different schools of thoughts. And the disagreement over this at times gets unreasonably wide and stubborn. Therefore, it is our duty to understand the facts associated with this particular question and try to bridge the gap between the different views. In order to do so we shall be requiring to study what are the different views and what are the references upon which these views are based.",
            style: TextStyle(
                fontFamily: "Archivo", color: Colors.cyan, fontSize: 16)),
        SizedBox(
          height: 10,
        ),
        ImamShafiPointOfViewOnRecitingSurahLoud(),
        SizedBox(
          height: 10,
        ),
        ImamAbuHanifaPointOfViewOnRecitingLoud(),
        ImamMalikPointOfViewOnRecitingLoud(),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}

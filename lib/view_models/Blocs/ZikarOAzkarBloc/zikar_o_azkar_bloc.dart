import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_quran_api_practice/model/zikar_o_azkar_model.dart';
import 'package:flutter_quran_api_practice/view_models/api_service/ZikarOAzkarApiService/zikar_o_azkar_api_service.dart';
import 'package:flutter_quran_api_practice/views/screens/zikar_o_azkar_main_page_design.dart';
import 'dart:developer' as developer;
import 'package:meta/meta.dart';

part 'zikar_o_azkar_event.dart';
part 'zikar_o_azkar_state.dart';

class ZikarOAzkarBloc extends Bloc<ZikarOAzkarEvent, ZikarOAzkarState> {
  ZikarOAzkarApiService zikarOAzkarApiService = ZikarOAzkarApiService();

  static const List<String> morningZikarAzkars = <String>[
    "أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير",
    "اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ",
    "رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً",
    "اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك",
    "حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم",
    "بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم",
    "اللّهُـمَّ بِكَ أَصْـبَحْنا وَبِكَ أَمْسَـينا ، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ النُّـشُور",
    "أَصْبَـحْـنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ",
    "سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه",
    "اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ",
    "اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ",
    "اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي ، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي ، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي ، وَمِن فَوْقـي ، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي",
    "يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ",
    "أَصْبَـحْـنا وَأَصْبَـحْ المُـلكُ للهِ رَبِّ العـالَمـين ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ خَـيْرَ هـذا الـيَوْم ، فَـتْحَهُ ، وَنَصْـرَهُ ، وَنـورَهُ وَبَـرَكَتَـهُ ، وَهُـداهُ ، وَأَعـوذُ بِـكَ مِـنْ شَـرِّ ما فـيهِ وَشَـرِّ ما بَعْـدَه",
    "اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه ، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت ، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم",
    "أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق",
    "اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد",
    "اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ",
    "اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ",
    "أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ",
    "يَا رَبِّ , لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ , وَلِعَظِيمِ سُلْطَانِكَ",
    "اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلًا",
    "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ",
    "سُبْحـانَ اللهِ وَبِحَمْـدِهِ",
    "أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْهِ"
  ];

  List<Empty> morningSupplications = [
    Empty(
        count: "1", content: morningZikarAzkars[0].toString(), description: ""),
    Empty(
        count: "1",
        content: morningZikarAzkars[1].toString(),
        description:
            "من قالها موقنا بها حين يمسى ومات من ليلته دخل الجنة وكذلك حين يصبح"),
    Empty(
        count: "3",
        content: morningZikarAzkars[2].toString(),
        description:
            "من قالها حين يصبح وحين يمسى كان حقا على الله أن يرضيه يوم القيامة"),
    Empty(
        count: "4",
        content: morningZikarAzkars[3].toString(),
        description: "من قالها أعتقه الله من النار"),
    Empty(
        count: "7",
        content: morningZikarAzkars[4].toString(),
        description: "من قالها كفاه الله ما أهمه من أمر الدنيا والأخرة"),
    Empty(
        count: "3",
        content: morningZikarAzkars[5].toString(),
        description: "لم يضره من الله شيء"),
    Empty(
        count: "1", content: morningZikarAzkars[6].toString(), description: ""),
    Empty(
        count: "1", content: morningZikarAzkars[7].toString(), description: ""),
    Empty(
        count: "3", content: morningZikarAzkars[8].toString(), description: ""),
    Empty(
        count: "3", content: morningZikarAzkars[9].toString(), description: ""),
    Empty(
        count: "1",
        content: morningZikarAzkars[10].toString(),
        description: ""),
    Empty(
        count: "3",
        content: morningZikarAzkars[11].toString(),
        description: ""),
    Empty(
        count: "1",
        content: morningZikarAzkars[12].toString(),
        description: ""),
    Empty(
        count: "1",
        content: morningZikarAzkars[13].toString(),
        description: ""),
    Empty(
        count: "3",
        content: morningZikarAzkars[14].toString(),
        description: ""),
    Empty(
        count: "10",
        content: morningZikarAzkars[15].toString(),
        description: "من صلى على حين يصبح وحين يمسى ادركته شفاعتى يوم القيامة"),
    Empty(
        count: "3",
        content: morningZikarAzkars[16].toString(),
        description: ""),
    Empty(
        count: "3",
        content: morningZikarAzkars[17].toString(),
        description: ""),
    Empty(
        count: "3",
        content: morningZikarAzkars[18].toString(),
        description: ""),
    Empty(
        count: "3",
        content: morningZikarAzkars[19].toString(),
        description: ""),
    Empty(
        count: "1",
        content: morningZikarAzkars[20].toString(),
        description: ""),
    Empty(
        count: "1",
        content: morningZikarAzkars[24].toString(),
        description: ""),
    Empty(
        count: "100",
        content: morningZikarAzkars[21].toString(),
        description:
            "كانت له عدل عشر رقاب، وكتبت له مئة حسنة، ومحيت عنه مئة سيئة، وكانت له حرزا من الشيطان"),
    Empty(
        count: "100",
        content: morningZikarAzkars[22].toString(),
        description:
            "حُطَّتْ خَطَايَاهُ وَإِنْ كَانَتْ مِثْلَ زَبَدِ الْبَحْرِ. لَمْ يَأْتِ أَحَدٌ يَوْمَ الْقِيَامَةِ بِأَفْضَلَ مِمَّا جَاءَ بِهِ إِلَّا أَحَدٌ قَالَ مِثْلَ مَا قَالَ أَوْ زَادَ عَلَيْهِ"),
    Empty(
        count: "100",
        content: morningZikarAzkars[23].toString(),
        description:
            "مائة حسنة، ومُحيت عنه مائة سيئة، وكانت له حرزاً من الشيطان حتى يمسى"),
  ];

  ZikarOAzkarBloc() : super(ZikarOAzkarInitialState()) {
    on<FetchMorningSupplicationsZikarOAzkarsEvent>(
        _mapMorningSupplicationEventsToStates);

    on<FetchEveningSupplicationsZikarOAzkarsEvent>(
        _mapEveningSupplicationEventToState);

    on<FetchPrayerZikarOAzkarsEvent>(_mapPrayerEventToStates);

    on<FetchGlorificationOfGodZikarOAzkarsEvent>(
        _mapGlorificationOfGodEventToStates);

    on<FetchSleepingSupplicationsZikarOAzkarsEvent>(
        _mapSleepingSupplicationEventToState);

    on<FetchWakingUpSupplicationsZikarOAzkarsEvent>(
        _mapWalkingUpSupplicationsEventToStates);

    on<FetchQuranicSupplicationsZikarOAzkarsEvent>(
        _mapQuranicVersesSupplicationsEventToStates);

    on<FetchProphetsPrayersZikarOAzkarsEvent>(
        _mapProphetPrayersSupplicationsToStates);
  }

  FutureOr<void> _mapMorningSupplicationEventsToStates(
      FetchMorningSupplicationsZikarOAzkarsEvent event,
      Emitter<ZikarOAzkarState> emit) async {
    try {
      emit(ZikarOAzkarLoadingState());

      emit(ZikarOAzkarLoadedState(zikarOAzkars: morningSupplications));
    } catch (e) {
      print(e);
      developer.log("Error is : ${e.toString()}");
      emit(ZikarOAzkarErrorState());
    }
  }

  FutureOr<void> _mapEveningSupplicationEventToState(
      FetchEveningSupplicationsZikarOAzkarsEvent event,
      Emitter<ZikarOAzkarState> emit) async {
    try {
      emit(ZikarOAzkarLoadingState());
      ZikarOAzkarModel zikarOAzkarModel =
          await zikarOAzkarApiService.fetchZikarOAzkarData();
      List<Empty> zikarOAzkars = zikarOAzkarModel.tentacled;

      emit(ZikarOAzkarLoadedState(zikarOAzkars: zikarOAzkars));
    } catch (e) {
      emit(ZikarOAzkarErrorState());
    }
  }

  FutureOr<void> _mapPrayerEventToStates(FetchPrayerZikarOAzkarsEvent event,
      Emitter<ZikarOAzkarState> emit) async {
    try {
      emit(ZikarOAzkarLoadingState());
      ZikarOAzkarModel zikarOAzkarModel =
          await zikarOAzkarApiService.fetchZikarOAzkarData();
      List<Empty> zikarOAzkars = zikarOAzkarModel.indigo;

      emit(ZikarOAzkarLoadedState(zikarOAzkars: zikarOAzkars));
    } catch (e) {
      emit(ZikarOAzkarErrorState());
    }
  }

  FutureOr<void> _mapGlorificationOfGodEventToStates(
      FetchGlorificationOfGodZikarOAzkarsEvent event,
      Emitter<ZikarOAzkarState> emit) async {
    try {
      emit(ZikarOAzkarLoadingState());
      ZikarOAzkarModel zikarOAzkarModel =
          await zikarOAzkarApiService.fetchZikarOAzkarData();
      List<Empty> zikarOAzkars = zikarOAzkarModel.indecent;

      emit(ZikarOAzkarLoadedState(zikarOAzkars: zikarOAzkars));
    } catch (e) {
      emit(ZikarOAzkarErrorState());
    }
  }

  FutureOr<void> _mapSleepingSupplicationEventToState(
      FetchSleepingSupplicationsZikarOAzkarsEvent event,
      Emitter<ZikarOAzkarState> emit) async {
    try {
      emit(ZikarOAzkarLoadingState());
      ZikarOAzkarModel zikarOAzkarModel =
          await zikarOAzkarApiService.fetchZikarOAzkarData();
      List<Empty> zikarOAzkars = zikarOAzkarModel.sticky;

      emit(ZikarOAzkarLoadedState(zikarOAzkars: zikarOAzkars));
    } catch (e) {
      emit(ZikarOAzkarErrorState());
    }
  }

  FutureOr<void> _mapWalkingUpSupplicationsEventToStates(
      FetchWakingUpSupplicationsZikarOAzkarsEvent event,
      Emitter<ZikarOAzkarState> emit) async {
    try {
      emit(ZikarOAzkarLoadingState());
      ZikarOAzkarModel zikarOAzkarModel =
          await zikarOAzkarApiService.fetchZikarOAzkarData();
      List<Empty> zikarOAzkars = zikarOAzkarModel.purple;

      emit(ZikarOAzkarLoadedState(zikarOAzkars: zikarOAzkars));
    } catch (e) {
      emit(ZikarOAzkarErrorState());
    }
  }

  FutureOr<void> _mapQuranicVersesSupplicationsEventToStates(
      FetchQuranicSupplicationsZikarOAzkarsEvent event,
      Emitter<ZikarOAzkarState> emit) async {
    try {
      emit(ZikarOAzkarLoadingState());
      ZikarOAzkarModel zikarOAzkarModel =
          await zikarOAzkarApiService.fetchZikarOAzkarData();
      List<Empty> zikarOAzkars = zikarOAzkarModel.tafseerApi;

      emit(ZikarOAzkarLoadedState(zikarOAzkars: zikarOAzkars));
    } catch (e) {
      emit(ZikarOAzkarErrorState());
    }
  }

  FutureOr<void> _mapProphetPrayersSupplicationsToStates(
      FetchProphetsPrayersZikarOAzkarsEvent event,
      Emitter<ZikarOAzkarState> emit) async {
    try {
      emit(ZikarOAzkarLoadingState());
      ZikarOAzkarModel zikarOAzkarModel =
          await zikarOAzkarApiService.fetchZikarOAzkarData();
      List<Empty> zikarOAzkars = zikarOAzkarModel.empty;

      emit(ZikarOAzkarLoadedState(zikarOAzkars: zikarOAzkars));
    } catch (e) {
      emit(ZikarOAzkarErrorState());
    }
  }
}

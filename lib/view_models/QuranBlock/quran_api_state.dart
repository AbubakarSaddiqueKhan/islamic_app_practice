part of 'quran_api_bloc.dart';

@immutable
sealed class QuranApiState {
  const QuranApiState();
}

@immutable
class QuranApiInitialState extends QuranApiState {}

@immutable
class QuranApiLoadingState extends QuranApiState {}

@immutable
class ArabicQuranApiLoadedState extends QuranApiState {
  final QuranApiModel quranApiModel;
  const ArabicQuranApiLoadedState({required this.quranApiModel});
}

class ListOfSurahArabicQuranApiLoadedState extends QuranApiState {
  final List<Surahs> surahs;
  final List<Surahs> englishTranslatedSurahs;
  final List<Surahs> molanaMaududiUrduTranslatedSurahs;
  final List<AudioArabicQuranModel> audioArabicQuranAllSurahs;
  final UrduAudioQuranModel urduAudioQuranAllSurahs;

  const ListOfSurahArabicQuranApiLoadedState(
      {required this.surahs,
      required this.englishTranslatedSurahs,
      required this.molanaMaududiUrduTranslatedSurahs,
      required this.audioArabicQuranAllSurahs,
      required this.urduAudioQuranAllSurahs});
}

// @immutable
// class UrduTranslatedQuranApiLoadedState extends QuranApiState {
//   final UrduTranslatedQuranApiModel urduTranslatedQuranApiModel;
//   const UrduTranslatedQuranApiLoadedState(
//       {required this.urduTranslatedQuranApiModel});
// }

// class ListOfSurahUrduTranslatedQuranApiLoadedState extends QuranApiState {
//   final List<UrduTranslatedQuranApiModel> urduTranslatedSurahs;
//   const ListOfSurahUrduTranslatedQuranApiLoadedState(
//       {required this.urduTranslatedSurahs});
// }

@immutable
class QuranApiErrorState extends QuranApiState {
  final String errorMessage;
  const QuranApiErrorState({required this.errorMessage});
}

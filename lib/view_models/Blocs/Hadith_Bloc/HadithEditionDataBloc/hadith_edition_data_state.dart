part of 'hadith_edition_data_bloc.dart';

@immutable
sealed class HadithEditionDataState {
  const HadithEditionDataState();
}

@immutable
final class HadithEditionDataInitialState extends HadithEditionDataState {}

@immutable
final class HadithEditionDataLoadingState extends HadithEditionDataState {}

@immutable
final class HadithEditionDataErrorState extends HadithEditionDataState {}

// Fetch Hadith data of all possible languages separated by edition's names and further thier languages .

// So we have to make different loaded state's and return every one based on the click event .

// SunanAlTirmidhiHadithData

@immutable
class SunanAlTirmidhiHadithDataLoadedState extends HadithEditionDataState {
  final HadithEditionDataModel arabicLanguageSunanAlTirimdhiData;
  final HadithEditionDataModel urduLanguageSunanAlTirimdhiData;
  final HadithEditionDataModel englishLanguageSunanAlTirimdhiData;

  const SunanAlTirmidhiHadithDataLoadedState(
      {required this.arabicLanguageSunanAlTirimdhiData,
      required this.urduLanguageSunanAlTirimdhiData,
      required this.englishLanguageSunanAlTirimdhiData});
}

// HadithQudsiData .

class HadithQudsiDataLoadedState extends HadithEditionDataState {
  final HadithEditionDataModel arabicLanguagehadithQudsiData;
  final HadithEditionDataModel englishLanguageHadithQudsiData;

  const HadithQudsiDataLoadedState(
      {required this.arabicLanguagehadithQudsiData,
      required this.englishLanguageHadithQudsiData});
}

// NawaiHadith

@immutable
class NawaiHadithDataLoadedState extends HadithEditionDataState {
  final HadithEditionDataModel arabicLanguageNawaiHadithData;
  final HadithEditionDataModel englishLanguageNawaiHadithData;

  const NawaiHadithDataLoadedState(
      {required this.arabicLanguageNawaiHadithData,
      required this.englishLanguageNawaiHadithData});
}

// HadithNisai

class HadithNisaiDataLoadedState extends HadithEditionDataState {
  final HadithEditionDataModel arabicLanguageHadithNisaiData;
  final HadithEditionDataModel englishLanguageHadithNisaiData;
  final HadithEditionDataModel urduLanguageHadithNisaiData;

  const HadithNisaiDataLoadedState(
      {required this.arabicLanguageHadithNisaiData,
      required this.urduLanguageHadithNisaiData,
      required this.englishLanguageHadithNisaiData});
}

// SahihMuslimHadithData

class SahihMuslimHadithDataLoadedState extends HadithEditionDataState {
  final HadithEditionDataModel arabicLanguageSahihMuslimHadithData;
  final HadithEditionDataModel englishLanguageSahihMuslimHadithData;
  final HadithEditionDataModel urduLanguageSahihMuslimHadithData;

  const SahihMuslimHadithDataLoadedState(
      {required this.arabicLanguageSahihMuslimHadithData,
      required this.englishLanguageSahihMuslimHadithData,
      required this.urduLanguageSahihMuslimHadithData});
}

// MutaImamMalikHadithData

class MutaImamMalikHadithDataLoadedState extends HadithEditionDataState {
  final HadithEditionDataModel englishLanguageMutaImamMalikHadithData;
  final HadithEditionDataModel arabicLanguageMutaImamMalikHadithData;
  final HadithEditionDataModel urduLanguageMutaImamMalikHadithData;

  const MutaImamMalikHadithDataLoadedState(
      {required this.englishLanguageMutaImamMalikHadithData,
      required this.urduLanguageMutaImamMalikHadithData,
      required this.arabicLanguageMutaImamMalikHadithData});
}

// IbnMajahHadithData

class IbnMajahHadithDataLoadedState extends HadithEditionDataState {
  final HadithEditionDataModel englishLanguageIbnMajahHadithData;
  final HadithEditionDataModel urduLanguageIbnMajahHadithData;
  final HadithEditionDataModel arabicLanguageIbnMajahHadithData;

  const IbnMajahHadithDataLoadedState(
      {required this.englishLanguageIbnMajahHadithData,
      required this.urduLanguageIbnMajahHadithData,
      required this.arabicLanguageIbnMajahHadithData});
}

// ShahWaliullahDehlawiHadithData

class ShahWaliullahDehlawiHadithDataLoadedState extends HadithEditionDataState {
  final HadithEditionDataModel arabicLanguageShahWaliullahDehlawiHadithData;
  final HadithEditionDataModel englishLanguageShahWaliullahDehlawiHadithData;

  const ShahWaliullahDehlawiHadithDataLoadedState(
      {required this.arabicLanguageShahWaliullahDehlawiHadithData,
      required this.englishLanguageShahWaliullahDehlawiHadithData});
}

// SahihBukhariHadithData

class SahihBukhariHadithDataLoadedState extends HadithEditionDataState {
  final HadithEditionDataModel arabicLanguageSahihBukhariHadithData;
  final HadithEditionDataModel urduLanguageSahihBukhariHadithData;
  final HadithEditionDataModel englishLanguageSahihBukhariHadithData;

  const SahihBukhariHadithDataLoadedState(
      {required this.arabicLanguageSahihBukhariHadithData,
      required this.urduLanguageSahihBukhariHadithData,
      required this.englishLanguageSahihBukhariHadithData});
}

// ImamAbuHanifaHadithData

class ImamAbuHanifaHadithDataLoadedState extends HadithEditionDataState {
  final HadithEditionDataModel arabicLanguageImamAbuHanifaHadithData;

  const ImamAbuHanifaHadithDataLoadedState(
      {required this.arabicLanguageImamAbuHanifaHadithData});
}

// AbuDawudHadithData

class AbuDawudHadithDataLoadedState extends HadithEditionDataState {
  final HadithEditionDataModel urduLanguageAbuDawudHadithData;
  final HadithEditionDataModel englishLanguageAbuDawudHadithData;
  final HadithEditionDataModel arabicLanguageAbuDawudHadithData;

  const AbuDawudHadithDataLoadedState(
      {required this.urduLanguageAbuDawudHadithData,
      required this.englishLanguageAbuDawudHadithData,
      required this.arabicLanguageAbuDawudHadithData});
}

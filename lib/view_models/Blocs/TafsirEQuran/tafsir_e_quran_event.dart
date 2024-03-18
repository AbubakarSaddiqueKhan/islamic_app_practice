part of 'tafsir_e_quran_bloc.dart';

@immutable
sealed class TafsirEQuranEvent {}

@immutable
class FetchUrduTranslatedTafsirEQuran extends TafsirEQuranEvent {}

@immutable
class FetchEnglishTranslatedTafsirEQuran extends TafsirEQuranEvent {}

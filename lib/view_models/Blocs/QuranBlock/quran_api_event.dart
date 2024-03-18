part of 'quran_api_bloc.dart';

@immutable
sealed class QuranApiEvent {}

// To fetch the complete quran .

// Include two main thing's (All Surah's data and edition of meta data of the author and this copy of quran ).
@immutable
class FetchQuranApiEvent extends QuranApiEvent {}

// To fetch the all surah .
@immutable
class FetchAllSurahOfQuranApiEvent extends QuranApiEvent {}

// Fetch All surah of quran in english translation .

// @immutable
// class FetchAllSurahOfEnglishTranslatedQuranApiEvent extends QuranApiEvent {}

// Fetch All surah of quran in urdu translation .

// @immutable
// class FetchAllSurahOfUrduTranslatedQuranApiEvent extends QuranApiEvent {}

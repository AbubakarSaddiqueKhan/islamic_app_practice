part of 'hadith_details_bloc.dart';

@immutable
sealed class HadithDetailsState {
  const HadithDetailsState();
}

@immutable
final class HadithDetailsInitialState extends HadithDetailsState {}

@immutable
class HadithDetailsLoadingState extends HadithDetailsState {}

@immutable
class HadithDetailsLoadedState extends HadithDetailsState {
  final TranslatedLanguageHadithDetailedModel
      englishLanguageHadithDetailedModel;
  final TranslatedLanguageHadithDetailedModel urduLanguageHadithDetailedModel;
  final ArabicLanguageHadithDetailModel arabicLanguageHadithDetailModel;

  const HadithDetailsLoadedState(
      {required this.englishLanguageHadithDetailedModel,
      required this.urduLanguageHadithDetailedModel,
      required this.arabicLanguageHadithDetailModel});
}

@immutable
class HadithDetailsErrorState extends HadithDetailsState {}

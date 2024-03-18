part of 'hadith_details_bloc.dart';

@immutable
sealed class HadithDetailsEvent {
  const HadithDetailsEvent();
}

@immutable
class FetchHadithDetailsEvent extends HadithDetailsEvent {
  final String hadithId;
  const FetchHadithDetailsEvent({required this.hadithId});
}

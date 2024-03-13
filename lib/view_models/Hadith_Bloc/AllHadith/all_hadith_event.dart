part of 'all_hadith_bloc.dart';

@immutable
sealed class AllHadithEvent {
  const AllHadithEvent();
}

@immutable
class FetchAllHadithOfGivenCategoryEvent extends AllHadithEvent {
  final String categoryId;
  const FetchAllHadithOfGivenCategoryEvent({required this.categoryId});
}

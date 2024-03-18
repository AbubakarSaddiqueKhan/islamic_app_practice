part of 'all_hadith_categories_bloc.dart';

@immutable
sealed class AllHadithCategoriesState {
  const AllHadithCategoriesState();
}

@immutable
final class AllHadithCategoriesInitialState extends AllHadithCategoriesState {}

@immutable
final class AllHadithCategoriesLoadingState extends AllHadithCategoriesState {}

@immutable
final class AllHadithCategoriesLoadedState extends AllHadithCategoriesState {
  final List<HadithAllCategoriesModel> hadithAllCategories;
  const AllHadithCategoriesLoadedState({required this.hadithAllCategories});
}

@immutable
final class AllHadithCategoriesErrorState extends AllHadithCategoriesState {}

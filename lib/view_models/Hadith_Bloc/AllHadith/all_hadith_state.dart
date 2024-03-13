part of 'all_hadith_bloc.dart';

@immutable
sealed class AllHadithState {
  const AllHadithState();
}

@immutable
final class AllHadithInitialState extends AllHadithState {}

@immutable
class AllHadithLoadingState extends AllHadithState {}

@immutable
class AllHadithLoadedState extends AllHadithState {
  final AllHadithModel allUrduTranslatedHadith;
  const AllHadithLoadedState({required this.allUrduTranslatedHadith});
}

@immutable
class AllHadithErrorState extends AllHadithState {}

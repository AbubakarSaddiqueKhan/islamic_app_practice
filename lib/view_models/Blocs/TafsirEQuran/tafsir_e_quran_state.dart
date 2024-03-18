part of 'tafsir_e_quran_bloc.dart';

@immutable
sealed class TafsirEQuranState {
  const TafsirEQuranState();
}

@immutable
final class TafsirEQuranInitialState extends TafsirEQuranState {}

@immutable
class TafsirEQuranLoadingState extends TafsirEQuranState {}

@immutable
class UrduTafsirEQuranLoadedState extends TafsirEQuranState {
  final List<TafsirEQuranModel> tafsirEQuran;

  const UrduTafsirEQuranLoadedState({required this.tafsirEQuran});
}

@immutable
class EnglishTafsirEQuranLoadedState extends TafsirEQuranState {
  final List<TafsirEQuranModel> tafsirEQuran;

  const EnglishTafsirEQuranLoadedState({required this.tafsirEQuran});
}

@immutable
class TafsirEQuranErrorState extends TafsirEQuranState {}

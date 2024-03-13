part of 'asma_al_husna_bloc.dart';

@immutable
sealed class AsmaAlHusnaState {
  const AsmaAlHusnaState();
}

@immutable
final class AsmaAlHusnaInitialState extends AsmaAlHusnaState {}

@immutable
final class AsmaAlHusnaLoadingState extends AsmaAlHusnaState {}

@immutable
final class AsmaAlHusnaLoadedState extends AsmaAlHusnaState {
  final AsmaAlHusnaModel asmaAlHusnas;
  const AsmaAlHusnaLoadedState({required this.asmaAlHusnas});
}

@immutable
final class AsmaAlHusnaErrorState extends AsmaAlHusnaState {}

part of 'zikar_o_azkar_bloc.dart';

@immutable
sealed class ZikarOAzkarState {
  const ZikarOAzkarState();
}

@immutable
final class ZikarOAzkarInitialState extends ZikarOAzkarState {}

@immutable
class ZikarOAzkarLoadingState extends ZikarOAzkarState {}

@immutable
class ZikarOAzkarLoadedState extends ZikarOAzkarState {
  final List<Empty> zikarOAzkars;
  const ZikarOAzkarLoadedState({required this.zikarOAzkars});
}

// @immutable
// class MorningZikarOAzkarLoadedState extends ZikarOAzkarState {
//   final List<Empty> zikarOAzkars;
//   const MorningZikarOAzkarLoadedState({required this.zikarOAzkars});
// }

@immutable
class ZikarOAzkarErrorState extends ZikarOAzkarState {}

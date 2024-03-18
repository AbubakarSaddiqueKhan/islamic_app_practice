// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'zikar_o_azkar_bloc.dart';

@immutable
sealed class ZikarOAzkarEvent {
  const ZikarOAzkarEvent();
}

@immutable
class FetchMorningSupplicationsZikarOAzkarsEvent extends ZikarOAzkarEvent {
  const FetchMorningSupplicationsZikarOAzkarsEvent();
}

@immutable
class FetchEveningSupplicationsZikarOAzkarsEvent extends ZikarOAzkarEvent {
  const FetchEveningSupplicationsZikarOAzkarsEvent();
}

@immutable
class FetchPrayerZikarOAzkarsEvent extends ZikarOAzkarEvent {
  const FetchPrayerZikarOAzkarsEvent();
}

@immutable
class FetchGlorificationOfGodZikarOAzkarsEvent extends ZikarOAzkarEvent {
  const FetchGlorificationOfGodZikarOAzkarsEvent();
}

@immutable
class FetchSleepingSupplicationsZikarOAzkarsEvent extends ZikarOAzkarEvent {
  const FetchSleepingSupplicationsZikarOAzkarsEvent();
}

@immutable
class FetchWakingUpSupplicationsZikarOAzkarsEvent extends ZikarOAzkarEvent {
  const FetchWakingUpSupplicationsZikarOAzkarsEvent();
}

@immutable
class FetchQuranicSupplicationsZikarOAzkarsEvent extends ZikarOAzkarEvent {
  const FetchQuranicSupplicationsZikarOAzkarsEvent();
}

@immutable
class FetchProphetsPrayersZikarOAzkarsEvent extends ZikarOAzkarEvent {
  const FetchProphetsPrayersZikarOAzkarsEvent();
}

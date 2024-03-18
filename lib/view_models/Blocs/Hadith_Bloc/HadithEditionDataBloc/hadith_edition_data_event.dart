part of 'hadith_edition_data_bloc.dart';

@immutable
sealed class HadithEditionDataEvent {}

// Fetch Al tirimdhi hadith data .

@immutable
class FetchSunanAlTirmidhiHadithDataEvent extends HadithEditionDataEvent {}

// Fetch Hadith qudsi data event .

@immutable
class FetchHadithQudsiDataEvent extends HadithEditionDataEvent {}

// Fetch  Forty Hadith of  Nawai .

@immutable
class FetchNawaiHadithDataEvent extends HadithEditionDataEvent {}

// Fetch Hadith Nisai data .

@immutable
class FetchHadithNisaiDataEvent extends HadithEditionDataEvent {}

// Fetch Muslim hadith .

@immutable
class FetchSahihMuslimHadithDataEvent extends HadithEditionDataEvent {}

// Fetch Muta Imam Malik Hadith Data .

@immutable
class FetchMutaImamMalikHadithDataEvent extends HadithEditionDataEvent {}

// Fetch Ibn e Maja Hadith data .

@immutable
class FetchIbnMajahHadithDataEvent extends HadithEditionDataEvent {}

// Fetch Shah Waliullah Dehlawi hadith data .

@immutable
class FetchShahWaliullahDehlawiHadithDataEvent extends HadithEditionDataEvent {}

// Fetch Shaih Bukhari Hadith data event .

@immutable
class FetchSahihBukhariHadithDataEvent extends HadithEditionDataEvent {}

// Fetch Hadith of imam abu hanifa .

@immutable
class FetchImamAbuHanifaHadithDataEvent extends HadithEditionDataEvent {}

// fetch abu dawood hadith data event .

@immutable
class FetchAbuDawudHadithDataEvent extends HadithEditionDataEvent {}

part of 'home_bloc.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({
    @Default(2) int tabIndex,
    @Default(HomePages.home()) HomePages pages,
  }) = _HomeState;
}

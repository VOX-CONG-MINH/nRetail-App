part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    @Default(false) bool showSearch,
    @Default(0) int currentPage,
  }) = _HomeScreenState;
}

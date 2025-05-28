part of 'home_screen_bloc.dart';

sealed class HomeScreenEvent {
  const HomeScreenEvent();
}

@freezed
class ShowSearchChanged extends HomeScreenEvent with _$ShowSearchChanged {
  const factory ShowSearchChanged({required bool showSearch}) =
      _ShowSearchChanged;
}

@freezed
class PageBannerChanged extends HomeScreenEvent with _$PageBannerChanged {
  const factory PageBannerChanged({required int page}) = _PageBannerChanged;
}

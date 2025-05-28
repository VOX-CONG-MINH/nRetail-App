part of 'main_screen_bloc.dart';

sealed class MainScreenEvent {
  const MainScreenEvent();
}

@freezed
class ChangeTabEvent extends MainScreenEvent with _$ChangeTabEvent {
  const factory ChangeTabEvent({required int index}) = _ChangeTabEvent;
}

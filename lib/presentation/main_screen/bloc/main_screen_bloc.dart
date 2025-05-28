import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'main_screen_event.dart';
part 'main_screen_state.dart';
part 'main_screen_bloc.freezed.dart';

@injectable
class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  MainScreenBloc() : super(const MainScreenState()) {
    on<ChangeTabEvent>(_onChangeTabEvent);
  }

  Future<void> _onChangeTabEvent(
    ChangeTabEvent event,
    Emitter<MainScreenState> emit,
  ) async {
    emit(state.copyWith(selectedIndex: event.index));
  }
}

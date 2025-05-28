import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

@injectable
class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc() : super(const HomeScreenState()) {
    on<ShowSearchChanged>(_onShowSearchChanged);
    on<PageBannerChanged>(_onPageBannerChanged);
  }

  Future<void> _onShowSearchChanged(
    ShowSearchChanged event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(state.copyWith(showSearch: event.showSearch));
  }

  Future<void> _onPageBannerChanged(
    PageBannerChanged event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(state.copyWith(currentPage: event.page));
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'shop_screen_event.dart';
part 'shop_screen_state.dart';
part 'shop_screen_bloc.freezed.dart';

@injectable
class ShopScreenBloc extends Bloc<ShopScreenEvent, ShopScreenState> {
  ShopScreenBloc() : super(const ShopScreenState()) {
    on<IncreaseQuantity>(_onIncreaseQuantity);
    on<DecreaseQuantity>(_onDecreaseQuantity);
    on<AddToCart>(_onAddToCart);
  }

  Future<void> _onIncreaseQuantity(
    IncreaseQuantity event,
    Emitter<ShopScreenState> emit,
  ) async {
    final newMap = Map<String, int>.from(state.quantities);
    newMap[event.productId] = (newMap[event.productId] ?? 0) + 1;
    emit(state.copyWith(quantities: newMap));
  }

  Future<void> _onDecreaseQuantity(
    DecreaseQuantity event,
    Emitter<ShopScreenState> emit,
  ) async {
    final newMap = Map<String, int>.from(state.quantities);
    final current = newMap[event.productId] ?? 1;
    if (current > 0) {
      newMap[event.productId] = current - 1;
      emit(state.copyWith(quantities: newMap));
    }
  }

  Future<void> _onAddToCart(
    AddToCart event,
    Emitter<ShopScreenState> emit,
  ) async {
    final newCartCount = state.cartCount + event.quantity;
    final newQuantities = Map<String, int>.from(state.quantities);
    newQuantities[event.productId] = 0;
    emit(state.copyWith(cartCount: newCartCount, quantities: newQuantities));
  }
}

part of 'shop_screen_bloc.dart';

@freezed
class ShopScreenState with _$ShopScreenState {
  const factory ShopScreenState({
    @Default(<String, int>{}) Map<String, int> quantities,
    @Default(0) int cartCount,
  }) = _ShopScreenState;
}

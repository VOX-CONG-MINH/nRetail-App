part of 'shop_screen_bloc.dart';

sealed class ShopScreenEvent {
  const ShopScreenEvent();
}

@freezed
class IncreaseQuantity extends ShopScreenEvent with _$IncreaseQuantity {
  const factory IncreaseQuantity({required String productId}) =
      _IncreaseQuantity;
}

@freezed
class DecreaseQuantity extends ShopScreenEvent with _$DecreaseQuantity {
  const factory DecreaseQuantity({required String productId}) =
      _DecreaseQuantity;
}

@freezed
class AddToCart extends ShopScreenEvent with _$AddToCart {
  const factory AddToCart({required String productId, required int quantity}) =
      _AddToCart;
}

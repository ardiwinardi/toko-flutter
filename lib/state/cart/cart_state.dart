import 'package:flutter_app_first/model/cart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_state.freezed.dart';

@freezed
abstract class CartState with _$CartState {
  const factory CartState.currentCarts(List<Cart> carts) = _CartsData;
  const factory CartState.loading() = _Loading;
  const factory CartState.error() = _Error;
}

import 'package:flutter_app_first/app/login_page/custom_exception.dart';
import 'package:flutter_app_first/model/product.dart';
import 'package:flutter_app_first/repository/cart_repository.dart';
import 'package:flutter_app_first/state/cart/cart_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartNotifier extends StateNotifier<CartState> {
  CartNotifier(this.cartRepository) : super(const CartState.loading());

  final CartRepository cartRepository;

  Future<void> addToCart(Product product, int quantity) async {
    state = const CartState.loading();

    try {
      await cartRepository.addToCart(product, quantity);
      final carts = await cartRepository.fetchCarts();
      state = CartState.currentCarts(carts);
    } on Exception catch (_) {
      state = const CartState.error();
      throw ErrorResponseException('Error Server');
    }
  }

  Future<void> fetchCarts() async {
    state = const CartState.loading();

    try {
      final carts = await cartRepository.fetchCarts();
      state = CartState.currentCarts(carts);
    } on Exception catch (_) {
      state = const CartState.error();
      throw ErrorResponseException('Error Server');
    }
  }
}

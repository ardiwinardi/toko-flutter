import 'package:flutter_app_first/model/product.dart';

class Cart {
  final String id;
  final Product product;
  final int quantity;
  final int status;

  Cart({
    required this.id,
    required this.product,
    required this.quantity,
    required this.status,
  });

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'],
      product: Product.fromJson(json['product']),
      quantity: json['quantity'] as int,
      status: json['status'] as int,
    );
  }
}

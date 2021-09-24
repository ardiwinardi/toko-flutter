import 'dart:async';
import 'dart:convert';
import 'package:flutter_app_first/model/cart.dart';
import 'package:flutter_app_first/model/product.dart';
import 'package:flutter_app_first/service/api_path.dart';
import 'package:flutter_app_first/service/shared_preferences_service.dart';
import 'package:http/http.dart' as http;

class CartRepository {
  CartRepository({
    required this.api,
    required this.sharedPreferencesService,
  });

  final APIPath api;
  final SharedPreferencesService sharedPreferencesService;

  Future<List<Cart>> fetchCarts() async {
    final token = sharedPreferencesService.getToken();

    final response = await http.get(
      api.carts,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': token.toString()
      },
    );

    if (response.statusCode == 200) {
      return parseCarts(response.body);
    } else {
      throw Exception('Failed to cart');
    }
  }

  Future<bool> addToCart(Product product, int quantity) async {
    final token = sharedPreferencesService.getToken();
    final response = await http.post(
      api.carts,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': token.toString()
      },
      body: jsonEncode(<String, dynamic>{
        'product_id': product.id,
        'quantity': quantity,
      }),
    );

    if (response.statusCode == 201) {
      return true;
    } else {
      throw Exception('Failed add to cart');
    }
  }
}

List<Cart> parseCarts(String responseBody) {
  final parsedJson = jsonDecode(responseBody);
  final parsed = parsedJson['data'].cast<Map<String, dynamic>>();
  return parsed.map<Cart>((json) => Cart.fromJson(json)).toList();
}

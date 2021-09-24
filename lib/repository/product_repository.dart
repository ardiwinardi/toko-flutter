import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter_app_first/model/product.dart';
import 'package:flutter_app_first/service/api_path.dart';
import 'package:http/http.dart' as http;

class ProductRepository {
  ProductRepository({required this.api});

  final APIPath api;

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(api.products);

    if (response.statusCode == 200) {
      return compute(parseProducts, response.body);
    } else {
      throw Exception('Failed to load album');
    }
  }
}

List<Product> parseProducts(String responseBody) {
  final parsedJson = jsonDecode(responseBody);

  final parsed = parsedJson['data'].cast<Map<String, dynamic>>();
  return parsed.map<Product>((json) => Product.fromJson(json)).toList();
}

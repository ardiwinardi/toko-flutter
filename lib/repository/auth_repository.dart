import 'package:flutter_app_first/model/user.dart';
import 'package:flutter_app_first/service/api_path.dart';
import 'package:flutter_app_first/service/shared_preferences_service.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class AuthRepositoryBase {
  Future<User> signIn(String email, String password);
  Future<User> getMe();
  Future<void> signOut();
}

class AuthRepository implements AuthRepositoryBase {
  AuthRepository({
    required this.sharedPreferencesService,
    required this.api,
  });

  final APIPath api;
  final SharedPreferencesService sharedPreferencesService;

  @override
  Future<User> signIn(String email, String password) async {
    final response = await http.post(
      api.signIn,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body);
      final user = User.fromJson(parsed['data']);
      await sharedPreferencesService.setToken(user.token!);
      return user;
    } else {
      throw Exception('User dan password tidak valid');
    }
  }

  @override
  Future<User> getMe() async {
    final token = sharedPreferencesService.getToken();

    final response = await http.get(
      api.getMe,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': token.toString()
      },
    );
    if (response.statusCode == 200) {
      final parsed = jsonDecode(response.body);
      return User.fromJson(parsed['data']);
    } else {
      throw Exception('User not authorized');
    }
  }

  @override
  Future<void> signOut() async {
    sharedPreferencesService.removeToken();
  }
}

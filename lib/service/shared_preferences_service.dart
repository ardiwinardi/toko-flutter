import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  final SharedPreferences sharedPreferences;
  SharedPreferencesService(this.sharedPreferences);

  static const tokenKey = 'token';

  Future<void> setToken(String token) async {
    await sharedPreferences.setString(tokenKey, token);
  }

  String getToken() => sharedPreferences.getString(tokenKey) ?? '';

  void removeToken() => sharedPreferences.remove(tokenKey);
}

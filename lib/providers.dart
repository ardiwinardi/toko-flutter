import 'package:flutter_app_first/repository/cart_repository.dart';
import 'package:flutter_app_first/service/api_path.dart';
import 'package:flutter_app_first/state/cart/cart_notifier.dart';
import 'package:flutter_app_first/state/cart/cart_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_app_first/app/login_page/login_page_notifier.dart';
import 'package:flutter_app_first/repository/auth_repository.dart';
import 'package:flutter_app_first/service/auth/auth_notifier.dart';
import 'package:flutter_app_first/service/auth/auth_state.dart';
import 'package:flutter_app_first/service/shared_preferences_service.dart';
import 'package:flutter_app_first/app/login_page/login_page_state.dart';

final sharedPreferencesServiceProvider = Provider<SharedPreferencesService>(
  (ref) => throw UnimplementedError(),
);

final apiProvider = Provider<APIPath>((ref) => APIPath());

// repositories provider
final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(
    sharedPreferencesService: ref.watch(sharedPreferencesServiceProvider),
    api: ref.watch(apiProvider),
  );
});

final cartRepositoryProvider = Provider<CartRepository>((ref) {
  return CartRepository(
    sharedPreferencesService: ref.watch(sharedPreferencesServiceProvider),
    api: ref.watch(apiProvider),
  );
});

// notifier provider
final authNotifierProvider =
    StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref.watch(authRepositoryProvider));
});

final loginPageNotifierProvider =
    StateNotifierProvider<LoginPageNotifier, LoginPageState>((ref) {
  return LoginPageNotifier(ref.watch(authRepositoryProvider));
});

final cartNotifierProvider =
    StateNotifierProvider<CartNotifier, CartState>((ref) {
  return CartNotifier(ref.watch(cartRepositoryProvider));
});

import 'package:flutter_app_first/model/user.dart';
import 'package:flutter_app_first/repository/auth_repository.dart';
import 'package:flutter_app_first/service/auth/auth_state.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthRepository authRepository;
  AuthNotifier(this.authRepository)
      : super(const AuthState.error('silakan Login'));

  Future<void> getMe() async {
    state = const AuthState.loading();
    try {
      final user = await authRepository.getMe();
      state = AuthState.currentUser(user);
    } on Exception catch (_) {
      state = const AuthState.error('User dan Password tidak valid');
    }
  }

  void setCurrentUser(User user) {
    state = AuthState.currentUser(user);
  }

  Future<void> signOut() async {
    state = const AuthState.loading();
    await authRepository.signOut();
    state = const AuthState.error('logout');
  }
}

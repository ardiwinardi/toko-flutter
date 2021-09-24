import 'package:flutter_app_first/app/login_page/custom_exception.dart';
import 'package:flutter_app_first/model/user.dart';
import 'package:flutter_app_first/repository/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_app_first/app/login_page/login_page_state.dart';

class LoginPageNotifier extends StateNotifier<LoginPageState> {
  LoginPageNotifier(this.authRepository)
      : super(const LoginPageState.loading());

  final AuthRepository authRepository;

  Future<User> signIn(String email, String password) async {
    if (email.isEmpty) {
      state = const LoginPageState.errorEmail("Email tidak boleh kosong");
      throw ErrorInputException();
    }

    if (password.isEmpty) {
      state = const LoginPageState.errorPassword("Password tidak boleh kosong");
      throw ErrorInputException();
    }

    state = const LoginPageState.loading();

    try {
      final user = await authRepository.signIn(email, password);
      return user;
    } on Exception catch (_) {
      state = const LoginPageState.error();
      throw ErrorResponseException('User dan Password tidak valid');
    }
  }
}

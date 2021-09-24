import 'package:flutter_app_first/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.currentUser(User user) = _UserData;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.error(String message) = _Error;
}

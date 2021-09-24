import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_page_state.freezed.dart';

@freezed
abstract class LoginPageState with _$LoginPageState {
  const factory LoginPageState.errorEmail(String message) = _ErrorEmail;
  const factory LoginPageState.errorPassword(String message) = _ErrorPassword;
  const factory LoginPageState.loading() = _Loading;
  const factory LoginPageState.error() = _Error;
}

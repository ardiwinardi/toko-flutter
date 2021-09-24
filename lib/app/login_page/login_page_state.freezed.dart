// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LoginPageStateTearOff {
  const _$LoginPageStateTearOff();

  _ErrorEmail errorEmail(String message) {
    return _ErrorEmail(
      message,
    );
  }

  _ErrorPassword errorPassword(String message) {
    return _ErrorPassword(
      message,
    );
  }

  _Loading loading() {
    return const _Loading();
  }

  _Error error() {
    return const _Error();
  }
}

/// @nodoc
const $LoginPageState = _$LoginPageStateTearOff();

/// @nodoc
mixin _$LoginPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorEmail,
    required TResult Function(String message) errorPassword,
    required TResult Function() loading,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorEmail,
    TResult Function(String message)? errorPassword,
    TResult Function()? loading,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorEmail,
    TResult Function(String message)? errorPassword,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorEmail value) errorEmail,
    required TResult Function(_ErrorPassword value) errorPassword,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorEmail value)? errorEmail,
    TResult Function(_ErrorPassword value)? errorPassword,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorEmail value)? errorEmail,
    TResult Function(_ErrorPassword value)? errorPassword,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginPageStateCopyWith<$Res> {
  factory $LoginPageStateCopyWith(
          LoginPageState value, $Res Function(LoginPageState) then) =
      _$LoginPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginPageStateCopyWithImpl<$Res>
    implements $LoginPageStateCopyWith<$Res> {
  _$LoginPageStateCopyWithImpl(this._value, this._then);

  final LoginPageState _value;
  // ignore: unused_field
  final $Res Function(LoginPageState) _then;
}

/// @nodoc
abstract class _$ErrorEmailCopyWith<$Res> {
  factory _$ErrorEmailCopyWith(
          _ErrorEmail value, $Res Function(_ErrorEmail) then) =
      __$ErrorEmailCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorEmailCopyWithImpl<$Res> extends _$LoginPageStateCopyWithImpl<$Res>
    implements _$ErrorEmailCopyWith<$Res> {
  __$ErrorEmailCopyWithImpl(
      _ErrorEmail _value, $Res Function(_ErrorEmail) _then)
      : super(_value, (v) => _then(v as _ErrorEmail));

  @override
  _ErrorEmail get _value => super._value as _ErrorEmail;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorEmail(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorEmail implements _ErrorEmail {
  const _$_ErrorEmail(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginPageState.errorEmail(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorEmail &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorEmailCopyWith<_ErrorEmail> get copyWith =>
      __$ErrorEmailCopyWithImpl<_ErrorEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorEmail,
    required TResult Function(String message) errorPassword,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return errorEmail(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorEmail,
    TResult Function(String message)? errorPassword,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return errorEmail?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorEmail,
    TResult Function(String message)? errorPassword,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (errorEmail != null) {
      return errorEmail(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorEmail value) errorEmail,
    required TResult Function(_ErrorPassword value) errorPassword,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return errorEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorEmail value)? errorEmail,
    TResult Function(_ErrorPassword value)? errorPassword,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return errorEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorEmail value)? errorEmail,
    TResult Function(_ErrorPassword value)? errorPassword,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (errorEmail != null) {
      return errorEmail(this);
    }
    return orElse();
  }
}

abstract class _ErrorEmail implements LoginPageState {
  const factory _ErrorEmail(String message) = _$_ErrorEmail;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorEmailCopyWith<_ErrorEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorPasswordCopyWith<$Res> {
  factory _$ErrorPasswordCopyWith(
          _ErrorPassword value, $Res Function(_ErrorPassword) then) =
      __$ErrorPasswordCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorPasswordCopyWithImpl<$Res>
    extends _$LoginPageStateCopyWithImpl<$Res>
    implements _$ErrorPasswordCopyWith<$Res> {
  __$ErrorPasswordCopyWithImpl(
      _ErrorPassword _value, $Res Function(_ErrorPassword) _then)
      : super(_value, (v) => _then(v as _ErrorPassword));

  @override
  _ErrorPassword get _value => super._value as _ErrorPassword;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorPassword(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorPassword implements _ErrorPassword {
  const _$_ErrorPassword(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginPageState.errorPassword(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorPassword &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorPasswordCopyWith<_ErrorPassword> get copyWith =>
      __$ErrorPasswordCopyWithImpl<_ErrorPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorEmail,
    required TResult Function(String message) errorPassword,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return errorPassword(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorEmail,
    TResult Function(String message)? errorPassword,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return errorPassword?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorEmail,
    TResult Function(String message)? errorPassword,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (errorPassword != null) {
      return errorPassword(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorEmail value) errorEmail,
    required TResult Function(_ErrorPassword value) errorPassword,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return errorPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorEmail value)? errorEmail,
    TResult Function(_ErrorPassword value)? errorPassword,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return errorPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorEmail value)? errorEmail,
    TResult Function(_ErrorPassword value)? errorPassword,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (errorPassword != null) {
      return errorPassword(this);
    }
    return orElse();
  }
}

abstract class _ErrorPassword implements LoginPageState {
  const factory _ErrorPassword(String message) = _$_ErrorPassword;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorPasswordCopyWith<_ErrorPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$LoginPageStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'LoginPageState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorEmail,
    required TResult Function(String message) errorPassword,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorEmail,
    TResult Function(String message)? errorPassword,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorEmail,
    TResult Function(String message)? errorPassword,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorEmail value) errorEmail,
    required TResult Function(_ErrorPassword value) errorPassword,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorEmail value)? errorEmail,
    TResult Function(_ErrorPassword value)? errorPassword,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorEmail value)? errorEmail,
    TResult Function(_ErrorPassword value)? errorPassword,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LoginPageState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$LoginPageStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'LoginPageState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) errorEmail,
    required TResult Function(String message) errorPassword,
    required TResult Function() loading,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? errorEmail,
    TResult Function(String message)? errorPassword,
    TResult Function()? loading,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? errorEmail,
    TResult Function(String message)? errorPassword,
    TResult Function()? loading,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorEmail value) errorEmail,
    required TResult Function(_ErrorPassword value) errorPassword,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ErrorEmail value)? errorEmail,
    TResult Function(_ErrorPassword value)? errorPassword,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorEmail value)? errorEmail,
    TResult Function(_ErrorPassword value)? errorPassword,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements LoginPageState {
  const factory _Error() = _$_Error;
}

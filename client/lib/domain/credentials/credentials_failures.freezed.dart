// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'credentials_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CredentialFailureTearOff {
  const _$CredentialFailureTearOff();

  _ServerError serverError() {
    return const _ServerError();
  }

  _InvalidAuth invalidAuth() {
    return const _InvalidAuth();
  }
}

/// @nodoc
const $CredentialFailure = _$CredentialFailureTearOff();

/// @nodoc
mixin _$CredentialFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidAuth value) invalidAuth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidAuth value)? invalidAuth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialFailureCopyWith<$Res> {
  factory $CredentialFailureCopyWith(
          CredentialFailure value, $Res Function(CredentialFailure) then) =
      _$CredentialFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$CredentialFailureCopyWithImpl<$Res>
    implements $CredentialFailureCopyWith<$Res> {
  _$CredentialFailureCopyWithImpl(this._value, this._then);

  final CredentialFailure _value;
  // ignore: unused_field
  final $Res Function(CredentialFailure) _then;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res>
    extends _$CredentialFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'CredentialFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidAuth,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidAuth,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidAuth value) invalidAuth,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidAuth value)? invalidAuth,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements CredentialFailure {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$InvalidAuthCopyWith<$Res> {
  factory _$InvalidAuthCopyWith(
          _InvalidAuth value, $Res Function(_InvalidAuth) then) =
      __$InvalidAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidAuthCopyWithImpl<$Res>
    extends _$CredentialFailureCopyWithImpl<$Res>
    implements _$InvalidAuthCopyWith<$Res> {
  __$InvalidAuthCopyWithImpl(
      _InvalidAuth _value, $Res Function(_InvalidAuth) _then)
      : super(_value, (v) => _then(v as _InvalidAuth));

  @override
  _InvalidAuth get _value => super._value as _InvalidAuth;
}

/// @nodoc

class _$_InvalidAuth implements _InvalidAuth {
  const _$_InvalidAuth();

  @override
  String toString() {
    return 'CredentialFailure.invalidAuth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidAuth,
  }) {
    return invalidAuth();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidAuth,
    required TResult orElse(),
  }) {
    if (invalidAuth != null) {
      return invalidAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_InvalidAuth value) invalidAuth,
  }) {
    return invalidAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_InvalidAuth value)? invalidAuth,
    required TResult orElse(),
  }) {
    if (invalidAuth != null) {
      return invalidAuth(this);
    }
    return orElse();
  }
}

abstract class _InvalidAuth implements CredentialFailure {
  const factory _InvalidAuth() = _$_InvalidAuth;
}

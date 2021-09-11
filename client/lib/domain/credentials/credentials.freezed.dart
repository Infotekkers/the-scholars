// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'credentials.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CredentialsPasswordTearOff {
  const _$CredentialsPasswordTearOff();

  _CredentialsPassword call(
      {required EmailAddress currentEmailAddress,
      required Password newPassword,
      required Password currentPassword}) {
    return _CredentialsPassword(
      currentEmailAddress: currentEmailAddress,
      newPassword: newPassword,
      currentPassword: currentPassword,
    );
  }
}

/// @nodoc
const $CredentialsPassword = _$CredentialsPasswordTearOff();

/// @nodoc
mixin _$CredentialsPassword {
  EmailAddress get currentEmailAddress => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;
  Password get currentPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CredentialsPasswordCopyWith<CredentialsPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialsPasswordCopyWith<$Res> {
  factory $CredentialsPasswordCopyWith(
          CredentialsPassword value, $Res Function(CredentialsPassword) then) =
      _$CredentialsPasswordCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress currentEmailAddress,
      Password newPassword,
      Password currentPassword});
}

/// @nodoc
class _$CredentialsPasswordCopyWithImpl<$Res>
    implements $CredentialsPasswordCopyWith<$Res> {
  _$CredentialsPasswordCopyWithImpl(this._value, this._then);

  final CredentialsPassword _value;
  // ignore: unused_field
  final $Res Function(CredentialsPassword) _then;

  @override
  $Res call({
    Object? currentEmailAddress = freezed,
    Object? newPassword = freezed,
    Object? currentPassword = freezed,
  }) {
    return _then(_value.copyWith(
      currentEmailAddress: currentEmailAddress == freezed
          ? _value.currentEmailAddress
          : currentEmailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc
abstract class _$CredentialsPasswordCopyWith<$Res>
    implements $CredentialsPasswordCopyWith<$Res> {
  factory _$CredentialsPasswordCopyWith(_CredentialsPassword value,
          $Res Function(_CredentialsPassword) then) =
      __$CredentialsPasswordCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress currentEmailAddress,
      Password newPassword,
      Password currentPassword});
}

/// @nodoc
class __$CredentialsPasswordCopyWithImpl<$Res>
    extends _$CredentialsPasswordCopyWithImpl<$Res>
    implements _$CredentialsPasswordCopyWith<$Res> {
  __$CredentialsPasswordCopyWithImpl(
      _CredentialsPassword _value, $Res Function(_CredentialsPassword) _then)
      : super(_value, (v) => _then(v as _CredentialsPassword));

  @override
  _CredentialsPassword get _value => super._value as _CredentialsPassword;

  @override
  $Res call({
    Object? currentEmailAddress = freezed,
    Object? newPassword = freezed,
    Object? currentPassword = freezed,
  }) {
    return _then(_CredentialsPassword(
      currentEmailAddress: currentEmailAddress == freezed
          ? _value.currentEmailAddress
          : currentEmailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$_CredentialsPassword
    with DiagnosticableTreeMixin
    implements _CredentialsPassword {
  const _$_CredentialsPassword(
      {required this.currentEmailAddress,
      required this.newPassword,
      required this.currentPassword});

  @override
  final EmailAddress currentEmailAddress;
  @override
  final Password newPassword;
  @override
  final Password currentPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CredentialsPassword(currentEmailAddress: $currentEmailAddress, newPassword: $newPassword, currentPassword: $currentPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CredentialsPassword'))
      ..add(DiagnosticsProperty('currentEmailAddress', currentEmailAddress))
      ..add(DiagnosticsProperty('newPassword', newPassword))
      ..add(DiagnosticsProperty('currentPassword', currentPassword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CredentialsPassword &&
            (identical(other.currentEmailAddress, currentEmailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.currentEmailAddress, currentEmailAddress)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.currentPassword, currentPassword) ||
                const DeepCollectionEquality()
                    .equals(other.currentPassword, currentPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentEmailAddress) ^
      const DeepCollectionEquality().hash(newPassword) ^
      const DeepCollectionEquality().hash(currentPassword);

  @JsonKey(ignore: true)
  @override
  _$CredentialsPasswordCopyWith<_CredentialsPassword> get copyWith =>
      __$CredentialsPasswordCopyWithImpl<_CredentialsPassword>(
          this, _$identity);
}

abstract class _CredentialsPassword implements CredentialsPassword {
  const factory _CredentialsPassword(
      {required EmailAddress currentEmailAddress,
      required Password newPassword,
      required Password currentPassword}) = _$_CredentialsPassword;

  @override
  EmailAddress get currentEmailAddress => throw _privateConstructorUsedError;
  @override
  Password get newPassword => throw _privateConstructorUsedError;
  @override
  Password get currentPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CredentialsPasswordCopyWith<_CredentialsPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CredentialsEmailTearOff {
  const _$CredentialsEmailTearOff();

  _CredentialsEmail call(
      {required EmailAddress currentEmailAddress,
      required EmailAddress newEmail,
      required Password currentPassword}) {
    return _CredentialsEmail(
      currentEmailAddress: currentEmailAddress,
      newEmail: newEmail,
      currentPassword: currentPassword,
    );
  }
}

/// @nodoc
const $CredentialsEmail = _$CredentialsEmailTearOff();

/// @nodoc
mixin _$CredentialsEmail {
  EmailAddress get currentEmailAddress => throw _privateConstructorUsedError;
  EmailAddress get newEmail => throw _privateConstructorUsedError;
  Password get currentPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CredentialsEmailCopyWith<CredentialsEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialsEmailCopyWith<$Res> {
  factory $CredentialsEmailCopyWith(
          CredentialsEmail value, $Res Function(CredentialsEmail) then) =
      _$CredentialsEmailCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress currentEmailAddress,
      EmailAddress newEmail,
      Password currentPassword});
}

/// @nodoc
class _$CredentialsEmailCopyWithImpl<$Res>
    implements $CredentialsEmailCopyWith<$Res> {
  _$CredentialsEmailCopyWithImpl(this._value, this._then);

  final CredentialsEmail _value;
  // ignore: unused_field
  final $Res Function(CredentialsEmail) _then;

  @override
  $Res call({
    Object? currentEmailAddress = freezed,
    Object? newEmail = freezed,
    Object? currentPassword = freezed,
  }) {
    return _then(_value.copyWith(
      currentEmailAddress: currentEmailAddress == freezed
          ? _value.currentEmailAddress
          : currentEmailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      newEmail: newEmail == freezed
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc
abstract class _$CredentialsEmailCopyWith<$Res>
    implements $CredentialsEmailCopyWith<$Res> {
  factory _$CredentialsEmailCopyWith(
          _CredentialsEmail value, $Res Function(_CredentialsEmail) then) =
      __$CredentialsEmailCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress currentEmailAddress,
      EmailAddress newEmail,
      Password currentPassword});
}

/// @nodoc
class __$CredentialsEmailCopyWithImpl<$Res>
    extends _$CredentialsEmailCopyWithImpl<$Res>
    implements _$CredentialsEmailCopyWith<$Res> {
  __$CredentialsEmailCopyWithImpl(
      _CredentialsEmail _value, $Res Function(_CredentialsEmail) _then)
      : super(_value, (v) => _then(v as _CredentialsEmail));

  @override
  _CredentialsEmail get _value => super._value as _CredentialsEmail;

  @override
  $Res call({
    Object? currentEmailAddress = freezed,
    Object? newEmail = freezed,
    Object? currentPassword = freezed,
  }) {
    return _then(_CredentialsEmail(
      currentEmailAddress: currentEmailAddress == freezed
          ? _value.currentEmailAddress
          : currentEmailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      newEmail: newEmail == freezed
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$_CredentialsEmail
    with DiagnosticableTreeMixin
    implements _CredentialsEmail {
  const _$_CredentialsEmail(
      {required this.currentEmailAddress,
      required this.newEmail,
      required this.currentPassword});

  @override
  final EmailAddress currentEmailAddress;
  @override
  final EmailAddress newEmail;
  @override
  final Password currentPassword;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CredentialsEmail(currentEmailAddress: $currentEmailAddress, newEmail: $newEmail, currentPassword: $currentPassword)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CredentialsEmail'))
      ..add(DiagnosticsProperty('currentEmailAddress', currentEmailAddress))
      ..add(DiagnosticsProperty('newEmail', newEmail))
      ..add(DiagnosticsProperty('currentPassword', currentPassword));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CredentialsEmail &&
            (identical(other.currentEmailAddress, currentEmailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.currentEmailAddress, currentEmailAddress)) &&
            (identical(other.newEmail, newEmail) ||
                const DeepCollectionEquality()
                    .equals(other.newEmail, newEmail)) &&
            (identical(other.currentPassword, currentPassword) ||
                const DeepCollectionEquality()
                    .equals(other.currentPassword, currentPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentEmailAddress) ^
      const DeepCollectionEquality().hash(newEmail) ^
      const DeepCollectionEquality().hash(currentPassword);

  @JsonKey(ignore: true)
  @override
  _$CredentialsEmailCopyWith<_CredentialsEmail> get copyWith =>
      __$CredentialsEmailCopyWithImpl<_CredentialsEmail>(this, _$identity);
}

abstract class _CredentialsEmail implements CredentialsEmail {
  const factory _CredentialsEmail(
      {required EmailAddress currentEmailAddress,
      required EmailAddress newEmail,
      required Password currentPassword}) = _$_CredentialsEmail;

  @override
  EmailAddress get currentEmailAddress => throw _privateConstructorUsedError;
  @override
  EmailAddress get newEmail => throw _privateConstructorUsedError;
  @override
  Password get currentPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CredentialsEmailCopyWith<_CredentialsEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

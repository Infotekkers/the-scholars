// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'credential_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CredentialPasswordDto _$CredentialPasswordDtoFromJson(
    Map<String, dynamic> json) {
  return _CredentialPasswordDto.fromJson(json);
}

/// @nodoc
class _$CredentialPasswordDtoTearOff {
  const _$CredentialPasswordDtoTearOff();

  _CredentialPasswordDto call(
      {required String currentEmail,
      required String currentPassword,
      required String newPassword}) {
    return _CredentialPasswordDto(
      currentEmail: currentEmail,
      currentPassword: currentPassword,
      newPassword: newPassword,
    );
  }

  CredentialPasswordDto fromJson(Map<String, Object> json) {
    return CredentialPasswordDto.fromJson(json);
  }
}

/// @nodoc
const $CredentialPasswordDto = _$CredentialPasswordDtoTearOff();

/// @nodoc
mixin _$CredentialPasswordDto {
  String get currentEmail => throw _privateConstructorUsedError;
  String get currentPassword => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CredentialPasswordDtoCopyWith<CredentialPasswordDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialPasswordDtoCopyWith<$Res> {
  factory $CredentialPasswordDtoCopyWith(CredentialPasswordDto value,
          $Res Function(CredentialPasswordDto) then) =
      _$CredentialPasswordDtoCopyWithImpl<$Res>;
  $Res call({String currentEmail, String currentPassword, String newPassword});
}

/// @nodoc
class _$CredentialPasswordDtoCopyWithImpl<$Res>
    implements $CredentialPasswordDtoCopyWith<$Res> {
  _$CredentialPasswordDtoCopyWithImpl(this._value, this._then);

  final CredentialPasswordDto _value;
  // ignore: unused_field
  final $Res Function(CredentialPasswordDto) _then;

  @override
  $Res call({
    Object? currentEmail = freezed,
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_value.copyWith(
      currentEmail: currentEmail == freezed
          ? _value.currentEmail
          : currentEmail // ignore: cast_nullable_to_non_nullable
              as String,
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CredentialPasswordDtoCopyWith<$Res>
    implements $CredentialPasswordDtoCopyWith<$Res> {
  factory _$CredentialPasswordDtoCopyWith(_CredentialPasswordDto value,
          $Res Function(_CredentialPasswordDto) then) =
      __$CredentialPasswordDtoCopyWithImpl<$Res>;
  @override
  $Res call({String currentEmail, String currentPassword, String newPassword});
}

/// @nodoc
class __$CredentialPasswordDtoCopyWithImpl<$Res>
    extends _$CredentialPasswordDtoCopyWithImpl<$Res>
    implements _$CredentialPasswordDtoCopyWith<$Res> {
  __$CredentialPasswordDtoCopyWithImpl(_CredentialPasswordDto _value,
      $Res Function(_CredentialPasswordDto) _then)
      : super(_value, (v) => _then(v as _CredentialPasswordDto));

  @override
  _CredentialPasswordDto get _value => super._value as _CredentialPasswordDto;

  @override
  $Res call({
    Object? currentEmail = freezed,
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_CredentialPasswordDto(
      currentEmail: currentEmail == freezed
          ? _value.currentEmail
          : currentEmail // ignore: cast_nullable_to_non_nullable
              as String,
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CredentialPasswordDto extends _CredentialPasswordDto {
  const _$_CredentialPasswordDto(
      {required this.currentEmail,
      required this.currentPassword,
      required this.newPassword})
      : super._();

  factory _$_CredentialPasswordDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CredentialPasswordDtoFromJson(json);

  @override
  final String currentEmail;
  @override
  final String currentPassword;
  @override
  final String newPassword;

  @override
  String toString() {
    return 'CredentialPasswordDto(currentEmail: $currentEmail, currentPassword: $currentPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CredentialPasswordDto &&
            (identical(other.currentEmail, currentEmail) ||
                const DeepCollectionEquality()
                    .equals(other.currentEmail, currentEmail)) &&
            (identical(other.currentPassword, currentPassword) ||
                const DeepCollectionEquality()
                    .equals(other.currentPassword, currentPassword)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentEmail) ^
      const DeepCollectionEquality().hash(currentPassword) ^
      const DeepCollectionEquality().hash(newPassword);

  @JsonKey(ignore: true)
  @override
  _$CredentialPasswordDtoCopyWith<_CredentialPasswordDto> get copyWith =>
      __$CredentialPasswordDtoCopyWithImpl<_CredentialPasswordDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CredentialPasswordDtoToJson(this);
  }
}

abstract class _CredentialPasswordDto extends CredentialPasswordDto {
  const factory _CredentialPasswordDto(
      {required String currentEmail,
      required String currentPassword,
      required String newPassword}) = _$_CredentialPasswordDto;
  const _CredentialPasswordDto._() : super._();

  factory _CredentialPasswordDto.fromJson(Map<String, dynamic> json) =
      _$_CredentialPasswordDto.fromJson;

  @override
  String get currentEmail => throw _privateConstructorUsedError;
  @override
  String get currentPassword => throw _privateConstructorUsedError;
  @override
  String get newPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CredentialPasswordDtoCopyWith<_CredentialPasswordDto> get copyWith =>
      throw _privateConstructorUsedError;
}

CredentialEmailDto _$CredentialEmailDtoFromJson(Map<String, dynamic> json) {
  return _CredentialEmailDto.fromJson(json);
}

/// @nodoc
class _$CredentialEmailDtoTearOff {
  const _$CredentialEmailDtoTearOff();

  _CredentialEmailDto call(
      {required String currentEmail,
      required String newEmail,
      required String currentPassword}) {
    return _CredentialEmailDto(
      currentEmail: currentEmail,
      newEmail: newEmail,
      currentPassword: currentPassword,
    );
  }

  CredentialEmailDto fromJson(Map<String, Object> json) {
    return CredentialEmailDto.fromJson(json);
  }
}

/// @nodoc
const $CredentialEmailDto = _$CredentialEmailDtoTearOff();

/// @nodoc
mixin _$CredentialEmailDto {
  String get currentEmail => throw _privateConstructorUsedError;
  String get newEmail => throw _privateConstructorUsedError;
  String get currentPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CredentialEmailDtoCopyWith<CredentialEmailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialEmailDtoCopyWith<$Res> {
  factory $CredentialEmailDtoCopyWith(
          CredentialEmailDto value, $Res Function(CredentialEmailDto) then) =
      _$CredentialEmailDtoCopyWithImpl<$Res>;
  $Res call({String currentEmail, String newEmail, String currentPassword});
}

/// @nodoc
class _$CredentialEmailDtoCopyWithImpl<$Res>
    implements $CredentialEmailDtoCopyWith<$Res> {
  _$CredentialEmailDtoCopyWithImpl(this._value, this._then);

  final CredentialEmailDto _value;
  // ignore: unused_field
  final $Res Function(CredentialEmailDto) _then;

  @override
  $Res call({
    Object? currentEmail = freezed,
    Object? newEmail = freezed,
    Object? currentPassword = freezed,
  }) {
    return _then(_value.copyWith(
      currentEmail: currentEmail == freezed
          ? _value.currentEmail
          : currentEmail // ignore: cast_nullable_to_non_nullable
              as String,
      newEmail: newEmail == freezed
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as String,
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CredentialEmailDtoCopyWith<$Res>
    implements $CredentialEmailDtoCopyWith<$Res> {
  factory _$CredentialEmailDtoCopyWith(
          _CredentialEmailDto value, $Res Function(_CredentialEmailDto) then) =
      __$CredentialEmailDtoCopyWithImpl<$Res>;
  @override
  $Res call({String currentEmail, String newEmail, String currentPassword});
}

/// @nodoc
class __$CredentialEmailDtoCopyWithImpl<$Res>
    extends _$CredentialEmailDtoCopyWithImpl<$Res>
    implements _$CredentialEmailDtoCopyWith<$Res> {
  __$CredentialEmailDtoCopyWithImpl(
      _CredentialEmailDto _value, $Res Function(_CredentialEmailDto) _then)
      : super(_value, (v) => _then(v as _CredentialEmailDto));

  @override
  _CredentialEmailDto get _value => super._value as _CredentialEmailDto;

  @override
  $Res call({
    Object? currentEmail = freezed,
    Object? newEmail = freezed,
    Object? currentPassword = freezed,
  }) {
    return _then(_CredentialEmailDto(
      currentEmail: currentEmail == freezed
          ? _value.currentEmail
          : currentEmail // ignore: cast_nullable_to_non_nullable
              as String,
      newEmail: newEmail == freezed
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as String,
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CredentialEmailDto extends _CredentialEmailDto {
  const _$_CredentialEmailDto(
      {required this.currentEmail,
      required this.newEmail,
      required this.currentPassword})
      : super._();

  factory _$_CredentialEmailDto.fromJson(Map<String, dynamic> json) =>
      _$_$_CredentialEmailDtoFromJson(json);

  @override
  final String currentEmail;
  @override
  final String newEmail;
  @override
  final String currentPassword;

  @override
  String toString() {
    return 'CredentialEmailDto(currentEmail: $currentEmail, newEmail: $newEmail, currentPassword: $currentPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CredentialEmailDto &&
            (identical(other.currentEmail, currentEmail) ||
                const DeepCollectionEquality()
                    .equals(other.currentEmail, currentEmail)) &&
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
      const DeepCollectionEquality().hash(currentEmail) ^
      const DeepCollectionEquality().hash(newEmail) ^
      const DeepCollectionEquality().hash(currentPassword);

  @JsonKey(ignore: true)
  @override
  _$CredentialEmailDtoCopyWith<_CredentialEmailDto> get copyWith =>
      __$CredentialEmailDtoCopyWithImpl<_CredentialEmailDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CredentialEmailDtoToJson(this);
  }
}

abstract class _CredentialEmailDto extends CredentialEmailDto {
  const factory _CredentialEmailDto(
      {required String currentEmail,
      required String newEmail,
      required String currentPassword}) = _$_CredentialEmailDto;
  const _CredentialEmailDto._() : super._();

  factory _CredentialEmailDto.fromJson(Map<String, dynamic> json) =
      _$_CredentialEmailDto.fromJson;

  @override
  String get currentEmail => throw _privateConstructorUsedError;
  @override
  String get newEmail => throw _privateConstructorUsedError;
  @override
  String get currentPassword => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CredentialEmailDtoCopyWith<_CredentialEmailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApplicationProfileDto _$ApplicationProfileDtoFromJson(
    Map<String, dynamic> json) {
  return _ApplicationProfileDto.fromJson(json);
}

/// @nodoc
class _$ApplicationProfileDtoTearOff {
  const _$ApplicationProfileDtoTearOff();

  _ApplicationProfileDto call(
      {required String fullName,
      required String birthDate,
      required String gender,
      required String location,
      required String phoneCode,
      required String phoneNumber}) {
    return _ApplicationProfileDto(
      fullName: fullName,
      birthDate: birthDate,
      gender: gender,
      location: location,
      phoneCode: phoneCode,
      phoneNumber: phoneNumber,
    );
  }

  ApplicationProfileDto fromJson(Map<String, Object> json) {
    return ApplicationProfileDto.fromJson(json);
  }
}

/// @nodoc
const $ApplicationProfileDto = _$ApplicationProfileDtoTearOff();

/// @nodoc
mixin _$ApplicationProfileDto {
  String get fullName => throw _privateConstructorUsedError;
  String get birthDate => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get phoneCode => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationProfileDtoCopyWith<ApplicationProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationProfileDtoCopyWith<$Res> {
  factory $ApplicationProfileDtoCopyWith(ApplicationProfileDto value,
          $Res Function(ApplicationProfileDto) then) =
      _$ApplicationProfileDtoCopyWithImpl<$Res>;
  $Res call(
      {String fullName,
      String birthDate,
      String gender,
      String location,
      String phoneCode,
      String phoneNumber});
}

/// @nodoc
class _$ApplicationProfileDtoCopyWithImpl<$Res>
    implements $ApplicationProfileDtoCopyWith<$Res> {
  _$ApplicationProfileDtoCopyWithImpl(this._value, this._then);

  final ApplicationProfileDto _value;
  // ignore: unused_field
  final $Res Function(ApplicationProfileDto) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
    Object? location = freezed,
    Object? phoneCode = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      phoneCode: phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApplicationProfileDtoCopyWith<$Res>
    implements $ApplicationProfileDtoCopyWith<$Res> {
  factory _$ApplicationProfileDtoCopyWith(_ApplicationProfileDto value,
          $Res Function(_ApplicationProfileDto) then) =
      __$ApplicationProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fullName,
      String birthDate,
      String gender,
      String location,
      String phoneCode,
      String phoneNumber});
}

/// @nodoc
class __$ApplicationProfileDtoCopyWithImpl<$Res>
    extends _$ApplicationProfileDtoCopyWithImpl<$Res>
    implements _$ApplicationProfileDtoCopyWith<$Res> {
  __$ApplicationProfileDtoCopyWithImpl(_ApplicationProfileDto _value,
      $Res Function(_ApplicationProfileDto) _then)
      : super(_value, (v) => _then(v as _ApplicationProfileDto));

  @override
  _ApplicationProfileDto get _value => super._value as _ApplicationProfileDto;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
    Object? location = freezed,
    Object? phoneCode = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_ApplicationProfileDto(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      phoneCode: phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApplicationProfileDto extends _ApplicationProfileDto {
  const _$_ApplicationProfileDto(
      {required this.fullName,
      required this.birthDate,
      required this.gender,
      required this.location,
      required this.phoneCode,
      required this.phoneNumber})
      : super._();

  factory _$_ApplicationProfileDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ApplicationProfileDtoFromJson(json);

  @override
  final String fullName;
  @override
  final String birthDate;
  @override
  final String gender;
  @override
  final String location;
  @override
  final String phoneCode;
  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ApplicationProfileDto(fullName: $fullName, birthDate: $birthDate, gender: $gender, location: $location, phoneCode: $phoneCode, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApplicationProfileDto &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.phoneCode, phoneCode) ||
                const DeepCollectionEquality()
                    .equals(other.phoneCode, phoneCode)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(phoneCode) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  _$ApplicationProfileDtoCopyWith<_ApplicationProfileDto> get copyWith =>
      __$ApplicationProfileDtoCopyWithImpl<_ApplicationProfileDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApplicationProfileDtoToJson(this);
  }
}

abstract class _ApplicationProfileDto extends ApplicationProfileDto {
  const factory _ApplicationProfileDto(
      {required String fullName,
      required String birthDate,
      required String gender,
      required String location,
      required String phoneCode,
      required String phoneNumber}) = _$_ApplicationProfileDto;
  const _ApplicationProfileDto._() : super._();

  factory _ApplicationProfileDto.fromJson(Map<String, dynamic> json) =
      _$_ApplicationProfileDto.fromJson;

  @override
  String get fullName => throw _privateConstructorUsedError;
  @override
  String get birthDate => throw _privateConstructorUsedError;
  @override
  String get gender => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  String get phoneCode => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApplicationProfileDtoCopyWith<_ApplicationProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

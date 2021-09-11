// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'application_highlight_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApplicationHighlightDto _$ApplicationHighlightDtoFromJson(
    Map<String, dynamic> json) {
  return _ApplicationHighlightDto.fromJson(json);
}

/// @nodoc
class _$ApplicationHighlightDtoTearOff {
  const _$ApplicationHighlightDtoTearOff();

  _ApplicationHighlightDto call(
      {required String applicationId,
      required String name,
      required String admissionStatus,
      required String date}) {
    return _ApplicationHighlightDto(
      applicationId: applicationId,
      name: name,
      admissionStatus: admissionStatus,
      date: date,
    );
  }

  ApplicationHighlightDto fromJson(Map<String, Object> json) {
    return ApplicationHighlightDto.fromJson(json);
  }
}

/// @nodoc
const $ApplicationHighlightDto = _$ApplicationHighlightDtoTearOff();

/// @nodoc
mixin _$ApplicationHighlightDto {
  String get applicationId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get admissionStatus => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicationHighlightDtoCopyWith<ApplicationHighlightDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationHighlightDtoCopyWith<$Res> {
  factory $ApplicationHighlightDtoCopyWith(ApplicationHighlightDto value,
          $Res Function(ApplicationHighlightDto) then) =
      _$ApplicationHighlightDtoCopyWithImpl<$Res>;
  $Res call(
      {String applicationId, String name, String admissionStatus, String date});
}

/// @nodoc
class _$ApplicationHighlightDtoCopyWithImpl<$Res>
    implements $ApplicationHighlightDtoCopyWith<$Res> {
  _$ApplicationHighlightDtoCopyWithImpl(this._value, this._then);

  final ApplicationHighlightDto _value;
  // ignore: unused_field
  final $Res Function(ApplicationHighlightDto) _then;

  @override
  $Res call({
    Object? applicationId = freezed,
    Object? name = freezed,
    Object? admissionStatus = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      admissionStatus: admissionStatus == freezed
          ? _value.admissionStatus
          : admissionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ApplicationHighlightDtoCopyWith<$Res>
    implements $ApplicationHighlightDtoCopyWith<$Res> {
  factory _$ApplicationHighlightDtoCopyWith(_ApplicationHighlightDto value,
          $Res Function(_ApplicationHighlightDto) then) =
      __$ApplicationHighlightDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String applicationId, String name, String admissionStatus, String date});
}

/// @nodoc
class __$ApplicationHighlightDtoCopyWithImpl<$Res>
    extends _$ApplicationHighlightDtoCopyWithImpl<$Res>
    implements _$ApplicationHighlightDtoCopyWith<$Res> {
  __$ApplicationHighlightDtoCopyWithImpl(_ApplicationHighlightDto _value,
      $Res Function(_ApplicationHighlightDto) _then)
      : super(_value, (v) => _then(v as _ApplicationHighlightDto));

  @override
  _ApplicationHighlightDto get _value =>
      super._value as _ApplicationHighlightDto;

  @override
  $Res call({
    Object? applicationId = freezed,
    Object? name = freezed,
    Object? admissionStatus = freezed,
    Object? date = freezed,
  }) {
    return _then(_ApplicationHighlightDto(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      admissionStatus: admissionStatus == freezed
          ? _value.admissionStatus
          : admissionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApplicationHighlightDto extends _ApplicationHighlightDto {
  const _$_ApplicationHighlightDto(
      {required this.applicationId,
      required this.name,
      required this.admissionStatus,
      required this.date})
      : super._();

  factory _$_ApplicationHighlightDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ApplicationHighlightDtoFromJson(json);

  @override
  final String applicationId;
  @override
  final String name;
  @override
  final String admissionStatus;
  @override
  final String date;

  @override
  String toString() {
    return 'ApplicationHighlightDto(applicationId: $applicationId, name: $name, admissionStatus: $admissionStatus, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApplicationHighlightDto &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.admissionStatus, admissionStatus) ||
                const DeepCollectionEquality()
                    .equals(other.admissionStatus, admissionStatus)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(admissionStatus) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$ApplicationHighlightDtoCopyWith<_ApplicationHighlightDto> get copyWith =>
      __$ApplicationHighlightDtoCopyWithImpl<_ApplicationHighlightDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ApplicationHighlightDtoToJson(this);
  }
}

abstract class _ApplicationHighlightDto extends ApplicationHighlightDto {
  const factory _ApplicationHighlightDto(
      {required String applicationId,
      required String name,
      required String admissionStatus,
      required String date}) = _$_ApplicationHighlightDto;
  const _ApplicationHighlightDto._() : super._();

  factory _ApplicationHighlightDto.fromJson(Map<String, dynamic> json) =
      _$_ApplicationHighlightDto.fromJson;

  @override
  String get applicationId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get admissionStatus => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApplicationHighlightDtoCopyWith<_ApplicationHighlightDto> get copyWith =>
      throw _privateConstructorUsedError;
}

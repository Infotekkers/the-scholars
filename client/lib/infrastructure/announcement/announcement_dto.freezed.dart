// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'announcement_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnnouncementDto _$AnnouncementDtoFromJson(Map<String, dynamic> json) {
  return _AnnouncementDto.fromJson(json);
}

/// @nodoc
class _$AnnouncementDtoTearOff {
  const _$AnnouncementDtoTearOff();

  _AnnouncementDto call(
      {required String title, required String body, required String date}) {
    return _AnnouncementDto(
      title: title,
      body: body,
      date: date,
    );
  }

  AnnouncementDto fromJson(Map<String, Object> json) {
    return AnnouncementDto.fromJson(json);
  }
}

/// @nodoc
const $AnnouncementDto = _$AnnouncementDtoTearOff();

/// @nodoc
mixin _$AnnouncementDto {
  String get title => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnnouncementDtoCopyWith<AnnouncementDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementDtoCopyWith<$Res> {
  factory $AnnouncementDtoCopyWith(
          AnnouncementDto value, $Res Function(AnnouncementDto) then) =
      _$AnnouncementDtoCopyWithImpl<$Res>;
  $Res call({String title, String body, String date});
}

/// @nodoc
class _$AnnouncementDtoCopyWithImpl<$Res>
    implements $AnnouncementDtoCopyWith<$Res> {
  _$AnnouncementDtoCopyWithImpl(this._value, this._then);

  final AnnouncementDto _value;
  // ignore: unused_field
  final $Res Function(AnnouncementDto) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AnnouncementDtoCopyWith<$Res>
    implements $AnnouncementDtoCopyWith<$Res> {
  factory _$AnnouncementDtoCopyWith(
          _AnnouncementDto value, $Res Function(_AnnouncementDto) then) =
      __$AnnouncementDtoCopyWithImpl<$Res>;
  @override
  $Res call({String title, String body, String date});
}

/// @nodoc
class __$AnnouncementDtoCopyWithImpl<$Res>
    extends _$AnnouncementDtoCopyWithImpl<$Res>
    implements _$AnnouncementDtoCopyWith<$Res> {
  __$AnnouncementDtoCopyWithImpl(
      _AnnouncementDto _value, $Res Function(_AnnouncementDto) _then)
      : super(_value, (v) => _then(v as _AnnouncementDto));

  @override
  _AnnouncementDto get _value => super._value as _AnnouncementDto;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? date = freezed,
  }) {
    return _then(_AnnouncementDto(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
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
class _$_AnnouncementDto extends _AnnouncementDto {
  const _$_AnnouncementDto(
      {required this.title, required this.body, required this.date})
      : super._();

  factory _$_AnnouncementDto.fromJson(Map<String, dynamic> json) =>
      _$_$_AnnouncementDtoFromJson(json);

  @override
  final String title;
  @override
  final String body;
  @override
  final String date;

  @override
  String toString() {
    return 'AnnouncementDto(title: $title, body: $body, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnnouncementDto &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$AnnouncementDtoCopyWith<_AnnouncementDto> get copyWith =>
      __$AnnouncementDtoCopyWithImpl<_AnnouncementDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnnouncementDtoToJson(this);
  }
}

abstract class _AnnouncementDto extends AnnouncementDto {
  const factory _AnnouncementDto(
      {required String title,
      required String body,
      required String date}) = _$_AnnouncementDto;
  const _AnnouncementDto._() : super._();

  factory _AnnouncementDto.fromJson(Map<String, dynamic> json) =
      _$_AnnouncementDto.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get body => throw _privateConstructorUsedError;
  @override
  String get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnnouncementDtoCopyWith<_AnnouncementDto> get copyWith =>
      throw _privateConstructorUsedError;
}

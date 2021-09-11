// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'announcement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AnnouncementTearOff {
  const _$AnnouncementTearOff();

  _Announcement call(
      {required AnnouncementId id,
      required AnnouncementTitle title,
      required AnnouncementBody body,
      required AnnouncementDate date}) {
    return _Announcement(
      id: id,
      title: title,
      body: body,
      date: date,
    );
  }
}

/// @nodoc
const $Announcement = _$AnnouncementTearOff();

/// @nodoc
mixin _$Announcement {
  AnnouncementId get id => throw _privateConstructorUsedError;
  AnnouncementTitle get title => throw _privateConstructorUsedError;
  AnnouncementBody get body => throw _privateConstructorUsedError;
  AnnouncementDate get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnouncementCopyWith<Announcement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementCopyWith<$Res> {
  factory $AnnouncementCopyWith(
          Announcement value, $Res Function(Announcement) then) =
      _$AnnouncementCopyWithImpl<$Res>;
  $Res call(
      {AnnouncementId id,
      AnnouncementTitle title,
      AnnouncementBody body,
      AnnouncementDate date});
}

/// @nodoc
class _$AnnouncementCopyWithImpl<$Res> implements $AnnouncementCopyWith<$Res> {
  _$AnnouncementCopyWithImpl(this._value, this._then);

  final Announcement _value;
  // ignore: unused_field
  final $Res Function(Announcement) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AnnouncementId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AnnouncementTitle,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AnnouncementBody,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as AnnouncementDate,
    ));
  }
}

/// @nodoc
abstract class _$AnnouncementCopyWith<$Res>
    implements $AnnouncementCopyWith<$Res> {
  factory _$AnnouncementCopyWith(
          _Announcement value, $Res Function(_Announcement) then) =
      __$AnnouncementCopyWithImpl<$Res>;
  @override
  $Res call(
      {AnnouncementId id,
      AnnouncementTitle title,
      AnnouncementBody body,
      AnnouncementDate date});
}

/// @nodoc
class __$AnnouncementCopyWithImpl<$Res> extends _$AnnouncementCopyWithImpl<$Res>
    implements _$AnnouncementCopyWith<$Res> {
  __$AnnouncementCopyWithImpl(
      _Announcement _value, $Res Function(_Announcement) _then)
      : super(_value, (v) => _then(v as _Announcement));

  @override
  _Announcement get _value => super._value as _Announcement;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? date = freezed,
  }) {
    return _then(_Announcement(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as AnnouncementId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AnnouncementTitle,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AnnouncementBody,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as AnnouncementDate,
    ));
  }
}

/// @nodoc

class _$_Announcement implements _Announcement {
  const _$_Announcement(
      {required this.id,
      required this.title,
      required this.body,
      required this.date});

  @override
  final AnnouncementId id;
  @override
  final AnnouncementTitle title;
  @override
  final AnnouncementBody body;
  @override
  final AnnouncementDate date;

  @override
  String toString() {
    return 'Announcement(id: $id, title: $title, body: $body, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Announcement &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$AnnouncementCopyWith<_Announcement> get copyWith =>
      __$AnnouncementCopyWithImpl<_Announcement>(this, _$identity);
}

abstract class _Announcement implements Announcement {
  const factory _Announcement(
      {required AnnouncementId id,
      required AnnouncementTitle title,
      required AnnouncementBody body,
      required AnnouncementDate date}) = _$_Announcement;

  @override
  AnnouncementId get id => throw _privateConstructorUsedError;
  @override
  AnnouncementTitle get title => throw _privateConstructorUsedError;
  @override
  AnnouncementBody get body => throw _privateConstructorUsedError;
  @override
  AnnouncementDate get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnnouncementCopyWith<_Announcement> get copyWith =>
      throw _privateConstructorUsedError;
}

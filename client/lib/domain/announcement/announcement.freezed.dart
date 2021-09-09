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
      {required AnnouncementTitle title,
      required AnnouncementBody body,
      required AnnouncementDate postdate}) {
    return _Announcement(
      title: title,
      body: body,
      postdate: postdate,
    );
  }
}

/// @nodoc
const $Announcement = _$AnnouncementTearOff();

/// @nodoc
mixin _$Announcement {
  AnnouncementTitle get title => throw _privateConstructorUsedError;
  AnnouncementBody get body => throw _privateConstructorUsedError;
  AnnouncementDate get postdate => throw _privateConstructorUsedError;

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
      {AnnouncementTitle title,
      AnnouncementBody body,
      AnnouncementDate postdate});
}

/// @nodoc
class _$AnnouncementCopyWithImpl<$Res> implements $AnnouncementCopyWith<$Res> {
  _$AnnouncementCopyWithImpl(this._value, this._then);

  final Announcement _value;
  // ignore: unused_field
  final $Res Function(Announcement) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? postdate = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AnnouncementTitle,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AnnouncementBody,
      postdate: postdate == freezed
          ? _value.postdate
          : postdate // ignore: cast_nullable_to_non_nullable
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
      {AnnouncementTitle title,
      AnnouncementBody body,
      AnnouncementDate postdate});
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
    Object? title = freezed,
    Object? body = freezed,
    Object? postdate = freezed,
  }) {
    return _then(_Announcement(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AnnouncementTitle,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AnnouncementBody,
      postdate: postdate == freezed
          ? _value.postdate
          : postdate // ignore: cast_nullable_to_non_nullable
              as AnnouncementDate,
    ));
  }
}

/// @nodoc

class _$_Announcement implements _Announcement {
  const _$_Announcement(
      {required this.title, required this.body, required this.postdate});

  @override
  final AnnouncementTitle title;
  @override
  final AnnouncementBody body;
  @override
  final AnnouncementDate postdate;

  @override
  String toString() {
    return 'Announcement(title: $title, body: $body, postdate: $postdate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Announcement &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.postdate, postdate) ||
                const DeepCollectionEquality()
                    .equals(other.postdate, postdate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(postdate);

  @JsonKey(ignore: true)
  @override
  _$AnnouncementCopyWith<_Announcement> get copyWith =>
      __$AnnouncementCopyWithImpl<_Announcement>(this, _$identity);
}

abstract class _Announcement implements Announcement {
  const factory _Announcement(
      {required AnnouncementTitle title,
      required AnnouncementBody body,
      required AnnouncementDate postdate}) = _$_Announcement;

  @override
  AnnouncementTitle get title => throw _privateConstructorUsedError;
  @override
  AnnouncementBody get body => throw _privateConstructorUsedError;
  @override
  AnnouncementDate get postdate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnnouncementCopyWith<_Announcement> get copyWith =>
      throw _privateConstructorUsedError;
}

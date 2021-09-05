// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'application_highlight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApplicationHighlightTearOff {
  const _$ApplicationHighlightTearOff();

  _ApplicationHighlight call(
      {required ApplicationId applicationId,
      required Name name,
      required AdmissionStatus admissionStatus}) {
    return _ApplicationHighlight(
      applicationId: applicationId,
      name: name,
      admissionStatus: admissionStatus,
    );
  }
}

/// @nodoc
const $ApplicationHighlight = _$ApplicationHighlightTearOff();

/// @nodoc
mixin _$ApplicationHighlight {
  ApplicationId get applicationId => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  AdmissionStatus get admissionStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationHighlightCopyWith<ApplicationHighlight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationHighlightCopyWith<$Res> {
  factory $ApplicationHighlightCopyWith(ApplicationHighlight value,
          $Res Function(ApplicationHighlight) then) =
      _$ApplicationHighlightCopyWithImpl<$Res>;
  $Res call(
      {ApplicationId applicationId,
      Name name,
      AdmissionStatus admissionStatus});
}

/// @nodoc
class _$ApplicationHighlightCopyWithImpl<$Res>
    implements $ApplicationHighlightCopyWith<$Res> {
  _$ApplicationHighlightCopyWithImpl(this._value, this._then);

  final ApplicationHighlight _value;
  // ignore: unused_field
  final $Res Function(ApplicationHighlight) _then;

  @override
  $Res call({
    Object? applicationId = freezed,
    Object? name = freezed,
    Object? admissionStatus = freezed,
  }) {
    return _then(_value.copyWith(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as ApplicationId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      admissionStatus: admissionStatus == freezed
          ? _value.admissionStatus
          : admissionStatus // ignore: cast_nullable_to_non_nullable
              as AdmissionStatus,
    ));
  }
}

/// @nodoc
abstract class _$ApplicationHighlightCopyWith<$Res>
    implements $ApplicationHighlightCopyWith<$Res> {
  factory _$ApplicationHighlightCopyWith(_ApplicationHighlight value,
          $Res Function(_ApplicationHighlight) then) =
      __$ApplicationHighlightCopyWithImpl<$Res>;
  @override
  $Res call(
      {ApplicationId applicationId,
      Name name,
      AdmissionStatus admissionStatus});
}

/// @nodoc
class __$ApplicationHighlightCopyWithImpl<$Res>
    extends _$ApplicationHighlightCopyWithImpl<$Res>
    implements _$ApplicationHighlightCopyWith<$Res> {
  __$ApplicationHighlightCopyWithImpl(
      _ApplicationHighlight _value, $Res Function(_ApplicationHighlight) _then)
      : super(_value, (v) => _then(v as _ApplicationHighlight));

  @override
  _ApplicationHighlight get _value => super._value as _ApplicationHighlight;

  @override
  $Res call({
    Object? applicationId = freezed,
    Object? name = freezed,
    Object? admissionStatus = freezed,
  }) {
    return _then(_ApplicationHighlight(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as ApplicationId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      admissionStatus: admissionStatus == freezed
          ? _value.admissionStatus
          : admissionStatus // ignore: cast_nullable_to_non_nullable
              as AdmissionStatus,
    ));
  }
}

/// @nodoc

class _$_ApplicationHighlight implements _ApplicationHighlight {
  const _$_ApplicationHighlight(
      {required this.applicationId,
      required this.name,
      required this.admissionStatus});

  @override
  final ApplicationId applicationId;
  @override
  final Name name;
  @override
  final AdmissionStatus admissionStatus;

  @override
  String toString() {
    return 'ApplicationHighlight(applicationId: $applicationId, name: $name, admissionStatus: $admissionStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApplicationHighlight &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.admissionStatus, admissionStatus) ||
                const DeepCollectionEquality()
                    .equals(other.admissionStatus, admissionStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(applicationId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(admissionStatus);

  @JsonKey(ignore: true)
  @override
  _$ApplicationHighlightCopyWith<_ApplicationHighlight> get copyWith =>
      __$ApplicationHighlightCopyWithImpl<_ApplicationHighlight>(
          this, _$identity);
}

abstract class _ApplicationHighlight implements ApplicationHighlight {
  const factory _ApplicationHighlight(
      {required ApplicationId applicationId,
      required Name name,
      required AdmissionStatus admissionStatus}) = _$_ApplicationHighlight;

  @override
  ApplicationId get applicationId => throw _privateConstructorUsedError;
  @override
  Name get name => throw _privateConstructorUsedError;
  @override
  AdmissionStatus get admissionStatus => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApplicationHighlightCopyWith<_ApplicationHighlight> get copyWith =>
      throw _privateConstructorUsedError;
}

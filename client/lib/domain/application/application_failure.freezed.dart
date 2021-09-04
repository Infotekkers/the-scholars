// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'application_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApplicationFailureTearOff {
  const _$ApplicationFailureTearOff();

  InvalidApplication invalidApplication() {
    return const InvalidApplication();
  }
}

/// @nodoc
const $ApplicationFailure = _$ApplicationFailureTearOff();

/// @nodoc
mixin _$ApplicationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidApplication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidApplication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidApplication value) invalidApplication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidApplication value)? invalidApplication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationFailureCopyWith<$Res> {
  factory $ApplicationFailureCopyWith(
          ApplicationFailure value, $Res Function(ApplicationFailure) then) =
      _$ApplicationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApplicationFailureCopyWithImpl<$Res>
    implements $ApplicationFailureCopyWith<$Res> {
  _$ApplicationFailureCopyWithImpl(this._value, this._then);

  final ApplicationFailure _value;
  // ignore: unused_field
  final $Res Function(ApplicationFailure) _then;
}

/// @nodoc
abstract class $InvalidApplicationCopyWith<$Res> {
  factory $InvalidApplicationCopyWith(
          InvalidApplication value, $Res Function(InvalidApplication) then) =
      _$InvalidApplicationCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidApplicationCopyWithImpl<$Res>
    extends _$ApplicationFailureCopyWithImpl<$Res>
    implements $InvalidApplicationCopyWith<$Res> {
  _$InvalidApplicationCopyWithImpl(
      InvalidApplication _value, $Res Function(InvalidApplication) _then)
      : super(_value, (v) => _then(v as InvalidApplication));

  @override
  InvalidApplication get _value => super._value as InvalidApplication;
}

/// @nodoc

class _$InvalidApplication implements InvalidApplication {
  const _$InvalidApplication();

  @override
  String toString() {
    return 'ApplicationFailure.invalidApplication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidApplication);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidApplication,
  }) {
    return invalidApplication();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidApplication,
    required TResult orElse(),
  }) {
    if (invalidApplication != null) {
      return invalidApplication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidApplication value) invalidApplication,
  }) {
    return invalidApplication(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidApplication value)? invalidApplication,
    required TResult orElse(),
  }) {
    if (invalidApplication != null) {
      return invalidApplication(this);
    }
    return orElse();
  }
}

abstract class InvalidApplication implements ApplicationFailure {
  const factory InvalidApplication() = _$InvalidApplication;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'credentials_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CredentialsEventTearOff {
  const _$CredentialsEventTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActivteEmailResetArea activateEmailResetArea() {
    return const _ActivteEmailResetArea();
  }

  _ActivtePasswordResetArea activatePasswordResetArea() {
    return const _ActivtePasswordResetArea();
  }

  _DeactivteEmailResetArea deactivateEmailResetArea() {
    return const _DeactivteEmailResetArea();
  }

  _DeactivtePasswordResetArea deactivatePasswordResetArea() {
    return const _DeactivtePasswordResetArea();
  }

  _NewEmailChanged newEmailAddressChanged({required String newEmailAddress}) {
    return _NewEmailChanged(
      newEmailAddress: newEmailAddress,
    );
  }

  _NewPasswordEmailChanged newPasswordEmailChanged(
      {required String newPassword}) {
    return _NewPasswordEmailChanged(
      newPassword: newPassword,
    );
  }

  _NewPasswordChanged newPasswordChanged({required String newPassword}) {
    return _NewPasswordChanged(
      newPassword: newPassword,
    );
  }

  _CurrentPasswordChanged currentPasswordChanged(
      {required String currentPassword}) {
    return _CurrentPasswordChanged(
      currentPassword: currentPassword,
    );
  }

  _EmailSubmit emailSubmitEvent() {
    return const _EmailSubmit();
  }

  _PasswordSubmit passwordSubmitEvent() {
    return const _PasswordSubmit();
  }
}

/// @nodoc
const $CredentialsEvent = _$CredentialsEventTearOff();

/// @nodoc
mixin _$CredentialsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activateEmailResetArea,
    required TResult Function() activatePasswordResetArea,
    required TResult Function() deactivateEmailResetArea,
    required TResult Function() deactivatePasswordResetArea,
    required TResult Function(String newEmailAddress) newEmailAddressChanged,
    required TResult Function(String newPassword) newPasswordEmailChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String currentPassword) currentPasswordChanged,
    required TResult Function() emailSubmitEvent,
    required TResult Function() passwordSubmitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activateEmailResetArea,
    TResult Function()? activatePasswordResetArea,
    TResult Function()? deactivateEmailResetArea,
    TResult Function()? deactivatePasswordResetArea,
    TResult Function(String newEmailAddress)? newEmailAddressChanged,
    TResult Function(String newPassword)? newPasswordEmailChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String currentPassword)? currentPasswordChanged,
    TResult Function()? emailSubmitEvent,
    TResult Function()? passwordSubmitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActivteEmailResetArea value)
        activateEmailResetArea,
    required TResult Function(_ActivtePasswordResetArea value)
        activatePasswordResetArea,
    required TResult Function(_DeactivteEmailResetArea value)
        deactivateEmailResetArea,
    required TResult Function(_DeactivtePasswordResetArea value)
        deactivatePasswordResetArea,
    required TResult Function(_NewEmailChanged value) newEmailAddressChanged,
    required TResult Function(_NewPasswordEmailChanged value)
        newPasswordEmailChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_CurrentPasswordChanged value)
        currentPasswordChanged,
    required TResult Function(_EmailSubmit value) emailSubmitEvent,
    required TResult Function(_PasswordSubmit value) passwordSubmitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActivteEmailResetArea value)? activateEmailResetArea,
    TResult Function(_ActivtePasswordResetArea value)?
        activatePasswordResetArea,
    TResult Function(_DeactivteEmailResetArea value)? deactivateEmailResetArea,
    TResult Function(_DeactivtePasswordResetArea value)?
        deactivatePasswordResetArea,
    TResult Function(_NewEmailChanged value)? newEmailAddressChanged,
    TResult Function(_NewPasswordEmailChanged value)? newPasswordEmailChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_CurrentPasswordChanged value)? currentPasswordChanged,
    TResult Function(_EmailSubmit value)? emailSubmitEvent,
    TResult Function(_PasswordSubmit value)? passwordSubmitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialsEventCopyWith<$Res> {
  factory $CredentialsEventCopyWith(
          CredentialsEvent value, $Res Function(CredentialsEvent) then) =
      _$CredentialsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CredentialsEventCopyWithImpl<$Res>
    implements $CredentialsEventCopyWith<$Res> {
  _$CredentialsEventCopyWithImpl(this._value, this._then);

  final CredentialsEvent _value;
  // ignore: unused_field
  final $Res Function(CredentialsEvent) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CredentialsEventCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CredentialsEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activateEmailResetArea,
    required TResult Function() activatePasswordResetArea,
    required TResult Function() deactivateEmailResetArea,
    required TResult Function() deactivatePasswordResetArea,
    required TResult Function(String newEmailAddress) newEmailAddressChanged,
    required TResult Function(String newPassword) newPasswordEmailChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String currentPassword) currentPasswordChanged,
    required TResult Function() emailSubmitEvent,
    required TResult Function() passwordSubmitEvent,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activateEmailResetArea,
    TResult Function()? activatePasswordResetArea,
    TResult Function()? deactivateEmailResetArea,
    TResult Function()? deactivatePasswordResetArea,
    TResult Function(String newEmailAddress)? newEmailAddressChanged,
    TResult Function(String newPassword)? newPasswordEmailChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String currentPassword)? currentPasswordChanged,
    TResult Function()? emailSubmitEvent,
    TResult Function()? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActivteEmailResetArea value)
        activateEmailResetArea,
    required TResult Function(_ActivtePasswordResetArea value)
        activatePasswordResetArea,
    required TResult Function(_DeactivteEmailResetArea value)
        deactivateEmailResetArea,
    required TResult Function(_DeactivtePasswordResetArea value)
        deactivatePasswordResetArea,
    required TResult Function(_NewEmailChanged value) newEmailAddressChanged,
    required TResult Function(_NewPasswordEmailChanged value)
        newPasswordEmailChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_CurrentPasswordChanged value)
        currentPasswordChanged,
    required TResult Function(_EmailSubmit value) emailSubmitEvent,
    required TResult Function(_PasswordSubmit value) passwordSubmitEvent,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActivteEmailResetArea value)? activateEmailResetArea,
    TResult Function(_ActivtePasswordResetArea value)?
        activatePasswordResetArea,
    TResult Function(_DeactivteEmailResetArea value)? deactivateEmailResetArea,
    TResult Function(_DeactivtePasswordResetArea value)?
        deactivatePasswordResetArea,
    TResult Function(_NewEmailChanged value)? newEmailAddressChanged,
    TResult Function(_NewPasswordEmailChanged value)? newPasswordEmailChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_CurrentPasswordChanged value)? currentPasswordChanged,
    TResult Function(_EmailSubmit value)? emailSubmitEvent,
    TResult Function(_PasswordSubmit value)? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CredentialsEvent {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActivteEmailResetAreaCopyWith<$Res> {
  factory _$ActivteEmailResetAreaCopyWith(_ActivteEmailResetArea value,
          $Res Function(_ActivteEmailResetArea) then) =
      __$ActivteEmailResetAreaCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActivteEmailResetAreaCopyWithImpl<$Res>
    extends _$CredentialsEventCopyWithImpl<$Res>
    implements _$ActivteEmailResetAreaCopyWith<$Res> {
  __$ActivteEmailResetAreaCopyWithImpl(_ActivteEmailResetArea _value,
      $Res Function(_ActivteEmailResetArea) _then)
      : super(_value, (v) => _then(v as _ActivteEmailResetArea));

  @override
  _ActivteEmailResetArea get _value => super._value as _ActivteEmailResetArea;
}

/// @nodoc

class _$_ActivteEmailResetArea implements _ActivteEmailResetArea {
  const _$_ActivteEmailResetArea();

  @override
  String toString() {
    return 'CredentialsEvent.activateEmailResetArea()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActivteEmailResetArea);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activateEmailResetArea,
    required TResult Function() activatePasswordResetArea,
    required TResult Function() deactivateEmailResetArea,
    required TResult Function() deactivatePasswordResetArea,
    required TResult Function(String newEmailAddress) newEmailAddressChanged,
    required TResult Function(String newPassword) newPasswordEmailChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String currentPassword) currentPasswordChanged,
    required TResult Function() emailSubmitEvent,
    required TResult Function() passwordSubmitEvent,
  }) {
    return activateEmailResetArea();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activateEmailResetArea,
    TResult Function()? activatePasswordResetArea,
    TResult Function()? deactivateEmailResetArea,
    TResult Function()? deactivatePasswordResetArea,
    TResult Function(String newEmailAddress)? newEmailAddressChanged,
    TResult Function(String newPassword)? newPasswordEmailChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String currentPassword)? currentPasswordChanged,
    TResult Function()? emailSubmitEvent,
    TResult Function()? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (activateEmailResetArea != null) {
      return activateEmailResetArea();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActivteEmailResetArea value)
        activateEmailResetArea,
    required TResult Function(_ActivtePasswordResetArea value)
        activatePasswordResetArea,
    required TResult Function(_DeactivteEmailResetArea value)
        deactivateEmailResetArea,
    required TResult Function(_DeactivtePasswordResetArea value)
        deactivatePasswordResetArea,
    required TResult Function(_NewEmailChanged value) newEmailAddressChanged,
    required TResult Function(_NewPasswordEmailChanged value)
        newPasswordEmailChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_CurrentPasswordChanged value)
        currentPasswordChanged,
    required TResult Function(_EmailSubmit value) emailSubmitEvent,
    required TResult Function(_PasswordSubmit value) passwordSubmitEvent,
  }) {
    return activateEmailResetArea(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActivteEmailResetArea value)? activateEmailResetArea,
    TResult Function(_ActivtePasswordResetArea value)?
        activatePasswordResetArea,
    TResult Function(_DeactivteEmailResetArea value)? deactivateEmailResetArea,
    TResult Function(_DeactivtePasswordResetArea value)?
        deactivatePasswordResetArea,
    TResult Function(_NewEmailChanged value)? newEmailAddressChanged,
    TResult Function(_NewPasswordEmailChanged value)? newPasswordEmailChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_CurrentPasswordChanged value)? currentPasswordChanged,
    TResult Function(_EmailSubmit value)? emailSubmitEvent,
    TResult Function(_PasswordSubmit value)? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (activateEmailResetArea != null) {
      return activateEmailResetArea(this);
    }
    return orElse();
  }
}

abstract class _ActivteEmailResetArea implements CredentialsEvent {
  const factory _ActivteEmailResetArea() = _$_ActivteEmailResetArea;
}

/// @nodoc
abstract class _$ActivtePasswordResetAreaCopyWith<$Res> {
  factory _$ActivtePasswordResetAreaCopyWith(_ActivtePasswordResetArea value,
          $Res Function(_ActivtePasswordResetArea) then) =
      __$ActivtePasswordResetAreaCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActivtePasswordResetAreaCopyWithImpl<$Res>
    extends _$CredentialsEventCopyWithImpl<$Res>
    implements _$ActivtePasswordResetAreaCopyWith<$Res> {
  __$ActivtePasswordResetAreaCopyWithImpl(_ActivtePasswordResetArea _value,
      $Res Function(_ActivtePasswordResetArea) _then)
      : super(_value, (v) => _then(v as _ActivtePasswordResetArea));

  @override
  _ActivtePasswordResetArea get _value =>
      super._value as _ActivtePasswordResetArea;
}

/// @nodoc

class _$_ActivtePasswordResetArea implements _ActivtePasswordResetArea {
  const _$_ActivtePasswordResetArea();

  @override
  String toString() {
    return 'CredentialsEvent.activatePasswordResetArea()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActivtePasswordResetArea);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activateEmailResetArea,
    required TResult Function() activatePasswordResetArea,
    required TResult Function() deactivateEmailResetArea,
    required TResult Function() deactivatePasswordResetArea,
    required TResult Function(String newEmailAddress) newEmailAddressChanged,
    required TResult Function(String newPassword) newPasswordEmailChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String currentPassword) currentPasswordChanged,
    required TResult Function() emailSubmitEvent,
    required TResult Function() passwordSubmitEvent,
  }) {
    return activatePasswordResetArea();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activateEmailResetArea,
    TResult Function()? activatePasswordResetArea,
    TResult Function()? deactivateEmailResetArea,
    TResult Function()? deactivatePasswordResetArea,
    TResult Function(String newEmailAddress)? newEmailAddressChanged,
    TResult Function(String newPassword)? newPasswordEmailChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String currentPassword)? currentPasswordChanged,
    TResult Function()? emailSubmitEvent,
    TResult Function()? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (activatePasswordResetArea != null) {
      return activatePasswordResetArea();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActivteEmailResetArea value)
        activateEmailResetArea,
    required TResult Function(_ActivtePasswordResetArea value)
        activatePasswordResetArea,
    required TResult Function(_DeactivteEmailResetArea value)
        deactivateEmailResetArea,
    required TResult Function(_DeactivtePasswordResetArea value)
        deactivatePasswordResetArea,
    required TResult Function(_NewEmailChanged value) newEmailAddressChanged,
    required TResult Function(_NewPasswordEmailChanged value)
        newPasswordEmailChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_CurrentPasswordChanged value)
        currentPasswordChanged,
    required TResult Function(_EmailSubmit value) emailSubmitEvent,
    required TResult Function(_PasswordSubmit value) passwordSubmitEvent,
  }) {
    return activatePasswordResetArea(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActivteEmailResetArea value)? activateEmailResetArea,
    TResult Function(_ActivtePasswordResetArea value)?
        activatePasswordResetArea,
    TResult Function(_DeactivteEmailResetArea value)? deactivateEmailResetArea,
    TResult Function(_DeactivtePasswordResetArea value)?
        deactivatePasswordResetArea,
    TResult Function(_NewEmailChanged value)? newEmailAddressChanged,
    TResult Function(_NewPasswordEmailChanged value)? newPasswordEmailChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_CurrentPasswordChanged value)? currentPasswordChanged,
    TResult Function(_EmailSubmit value)? emailSubmitEvent,
    TResult Function(_PasswordSubmit value)? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (activatePasswordResetArea != null) {
      return activatePasswordResetArea(this);
    }
    return orElse();
  }
}

abstract class _ActivtePasswordResetArea implements CredentialsEvent {
  const factory _ActivtePasswordResetArea() = _$_ActivtePasswordResetArea;
}

/// @nodoc
abstract class _$DeactivteEmailResetAreaCopyWith<$Res> {
  factory _$DeactivteEmailResetAreaCopyWith(_DeactivteEmailResetArea value,
          $Res Function(_DeactivteEmailResetArea) then) =
      __$DeactivteEmailResetAreaCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeactivteEmailResetAreaCopyWithImpl<$Res>
    extends _$CredentialsEventCopyWithImpl<$Res>
    implements _$DeactivteEmailResetAreaCopyWith<$Res> {
  __$DeactivteEmailResetAreaCopyWithImpl(_DeactivteEmailResetArea _value,
      $Res Function(_DeactivteEmailResetArea) _then)
      : super(_value, (v) => _then(v as _DeactivteEmailResetArea));

  @override
  _DeactivteEmailResetArea get _value =>
      super._value as _DeactivteEmailResetArea;
}

/// @nodoc

class _$_DeactivteEmailResetArea implements _DeactivteEmailResetArea {
  const _$_DeactivteEmailResetArea();

  @override
  String toString() {
    return 'CredentialsEvent.deactivateEmailResetArea()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeactivteEmailResetArea);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activateEmailResetArea,
    required TResult Function() activatePasswordResetArea,
    required TResult Function() deactivateEmailResetArea,
    required TResult Function() deactivatePasswordResetArea,
    required TResult Function(String newEmailAddress) newEmailAddressChanged,
    required TResult Function(String newPassword) newPasswordEmailChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String currentPassword) currentPasswordChanged,
    required TResult Function() emailSubmitEvent,
    required TResult Function() passwordSubmitEvent,
  }) {
    return deactivateEmailResetArea();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activateEmailResetArea,
    TResult Function()? activatePasswordResetArea,
    TResult Function()? deactivateEmailResetArea,
    TResult Function()? deactivatePasswordResetArea,
    TResult Function(String newEmailAddress)? newEmailAddressChanged,
    TResult Function(String newPassword)? newPasswordEmailChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String currentPassword)? currentPasswordChanged,
    TResult Function()? emailSubmitEvent,
    TResult Function()? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (deactivateEmailResetArea != null) {
      return deactivateEmailResetArea();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActivteEmailResetArea value)
        activateEmailResetArea,
    required TResult Function(_ActivtePasswordResetArea value)
        activatePasswordResetArea,
    required TResult Function(_DeactivteEmailResetArea value)
        deactivateEmailResetArea,
    required TResult Function(_DeactivtePasswordResetArea value)
        deactivatePasswordResetArea,
    required TResult Function(_NewEmailChanged value) newEmailAddressChanged,
    required TResult Function(_NewPasswordEmailChanged value)
        newPasswordEmailChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_CurrentPasswordChanged value)
        currentPasswordChanged,
    required TResult Function(_EmailSubmit value) emailSubmitEvent,
    required TResult Function(_PasswordSubmit value) passwordSubmitEvent,
  }) {
    return deactivateEmailResetArea(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActivteEmailResetArea value)? activateEmailResetArea,
    TResult Function(_ActivtePasswordResetArea value)?
        activatePasswordResetArea,
    TResult Function(_DeactivteEmailResetArea value)? deactivateEmailResetArea,
    TResult Function(_DeactivtePasswordResetArea value)?
        deactivatePasswordResetArea,
    TResult Function(_NewEmailChanged value)? newEmailAddressChanged,
    TResult Function(_NewPasswordEmailChanged value)? newPasswordEmailChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_CurrentPasswordChanged value)? currentPasswordChanged,
    TResult Function(_EmailSubmit value)? emailSubmitEvent,
    TResult Function(_PasswordSubmit value)? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (deactivateEmailResetArea != null) {
      return deactivateEmailResetArea(this);
    }
    return orElse();
  }
}

abstract class _DeactivteEmailResetArea implements CredentialsEvent {
  const factory _DeactivteEmailResetArea() = _$_DeactivteEmailResetArea;
}

/// @nodoc
abstract class _$DeactivtePasswordResetAreaCopyWith<$Res> {
  factory _$DeactivtePasswordResetAreaCopyWith(
          _DeactivtePasswordResetArea value,
          $Res Function(_DeactivtePasswordResetArea) then) =
      __$DeactivtePasswordResetAreaCopyWithImpl<$Res>;
}

/// @nodoc
class __$DeactivtePasswordResetAreaCopyWithImpl<$Res>
    extends _$CredentialsEventCopyWithImpl<$Res>
    implements _$DeactivtePasswordResetAreaCopyWith<$Res> {
  __$DeactivtePasswordResetAreaCopyWithImpl(_DeactivtePasswordResetArea _value,
      $Res Function(_DeactivtePasswordResetArea) _then)
      : super(_value, (v) => _then(v as _DeactivtePasswordResetArea));

  @override
  _DeactivtePasswordResetArea get _value =>
      super._value as _DeactivtePasswordResetArea;
}

/// @nodoc

class _$_DeactivtePasswordResetArea implements _DeactivtePasswordResetArea {
  const _$_DeactivtePasswordResetArea();

  @override
  String toString() {
    return 'CredentialsEvent.deactivatePasswordResetArea()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DeactivtePasswordResetArea);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activateEmailResetArea,
    required TResult Function() activatePasswordResetArea,
    required TResult Function() deactivateEmailResetArea,
    required TResult Function() deactivatePasswordResetArea,
    required TResult Function(String newEmailAddress) newEmailAddressChanged,
    required TResult Function(String newPassword) newPasswordEmailChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String currentPassword) currentPasswordChanged,
    required TResult Function() emailSubmitEvent,
    required TResult Function() passwordSubmitEvent,
  }) {
    return deactivatePasswordResetArea();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activateEmailResetArea,
    TResult Function()? activatePasswordResetArea,
    TResult Function()? deactivateEmailResetArea,
    TResult Function()? deactivatePasswordResetArea,
    TResult Function(String newEmailAddress)? newEmailAddressChanged,
    TResult Function(String newPassword)? newPasswordEmailChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String currentPassword)? currentPasswordChanged,
    TResult Function()? emailSubmitEvent,
    TResult Function()? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (deactivatePasswordResetArea != null) {
      return deactivatePasswordResetArea();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActivteEmailResetArea value)
        activateEmailResetArea,
    required TResult Function(_ActivtePasswordResetArea value)
        activatePasswordResetArea,
    required TResult Function(_DeactivteEmailResetArea value)
        deactivateEmailResetArea,
    required TResult Function(_DeactivtePasswordResetArea value)
        deactivatePasswordResetArea,
    required TResult Function(_NewEmailChanged value) newEmailAddressChanged,
    required TResult Function(_NewPasswordEmailChanged value)
        newPasswordEmailChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_CurrentPasswordChanged value)
        currentPasswordChanged,
    required TResult Function(_EmailSubmit value) emailSubmitEvent,
    required TResult Function(_PasswordSubmit value) passwordSubmitEvent,
  }) {
    return deactivatePasswordResetArea(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActivteEmailResetArea value)? activateEmailResetArea,
    TResult Function(_ActivtePasswordResetArea value)?
        activatePasswordResetArea,
    TResult Function(_DeactivteEmailResetArea value)? deactivateEmailResetArea,
    TResult Function(_DeactivtePasswordResetArea value)?
        deactivatePasswordResetArea,
    TResult Function(_NewEmailChanged value)? newEmailAddressChanged,
    TResult Function(_NewPasswordEmailChanged value)? newPasswordEmailChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_CurrentPasswordChanged value)? currentPasswordChanged,
    TResult Function(_EmailSubmit value)? emailSubmitEvent,
    TResult Function(_PasswordSubmit value)? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (deactivatePasswordResetArea != null) {
      return deactivatePasswordResetArea(this);
    }
    return orElse();
  }
}

abstract class _DeactivtePasswordResetArea implements CredentialsEvent {
  const factory _DeactivtePasswordResetArea() = _$_DeactivtePasswordResetArea;
}

/// @nodoc
abstract class _$NewEmailChangedCopyWith<$Res> {
  factory _$NewEmailChangedCopyWith(
          _NewEmailChanged value, $Res Function(_NewEmailChanged) then) =
      __$NewEmailChangedCopyWithImpl<$Res>;
  $Res call({String newEmailAddress});
}

/// @nodoc
class __$NewEmailChangedCopyWithImpl<$Res>
    extends _$CredentialsEventCopyWithImpl<$Res>
    implements _$NewEmailChangedCopyWith<$Res> {
  __$NewEmailChangedCopyWithImpl(
      _NewEmailChanged _value, $Res Function(_NewEmailChanged) _then)
      : super(_value, (v) => _then(v as _NewEmailChanged));

  @override
  _NewEmailChanged get _value => super._value as _NewEmailChanged;

  @override
  $Res call({
    Object? newEmailAddress = freezed,
  }) {
    return _then(_NewEmailChanged(
      newEmailAddress: newEmailAddress == freezed
          ? _value.newEmailAddress
          : newEmailAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewEmailChanged implements _NewEmailChanged {
  const _$_NewEmailChanged({required this.newEmailAddress});

  @override
  final String newEmailAddress;

  @override
  String toString() {
    return 'CredentialsEvent.newEmailAddressChanged(newEmailAddress: $newEmailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewEmailChanged &&
            (identical(other.newEmailAddress, newEmailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.newEmailAddress, newEmailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newEmailAddress);

  @JsonKey(ignore: true)
  @override
  _$NewEmailChangedCopyWith<_NewEmailChanged> get copyWith =>
      __$NewEmailChangedCopyWithImpl<_NewEmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activateEmailResetArea,
    required TResult Function() activatePasswordResetArea,
    required TResult Function() deactivateEmailResetArea,
    required TResult Function() deactivatePasswordResetArea,
    required TResult Function(String newEmailAddress) newEmailAddressChanged,
    required TResult Function(String newPassword) newPasswordEmailChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String currentPassword) currentPasswordChanged,
    required TResult Function() emailSubmitEvent,
    required TResult Function() passwordSubmitEvent,
  }) {
    return newEmailAddressChanged(newEmailAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activateEmailResetArea,
    TResult Function()? activatePasswordResetArea,
    TResult Function()? deactivateEmailResetArea,
    TResult Function()? deactivatePasswordResetArea,
    TResult Function(String newEmailAddress)? newEmailAddressChanged,
    TResult Function(String newPassword)? newPasswordEmailChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String currentPassword)? currentPasswordChanged,
    TResult Function()? emailSubmitEvent,
    TResult Function()? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (newEmailAddressChanged != null) {
      return newEmailAddressChanged(newEmailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActivteEmailResetArea value)
        activateEmailResetArea,
    required TResult Function(_ActivtePasswordResetArea value)
        activatePasswordResetArea,
    required TResult Function(_DeactivteEmailResetArea value)
        deactivateEmailResetArea,
    required TResult Function(_DeactivtePasswordResetArea value)
        deactivatePasswordResetArea,
    required TResult Function(_NewEmailChanged value) newEmailAddressChanged,
    required TResult Function(_NewPasswordEmailChanged value)
        newPasswordEmailChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_CurrentPasswordChanged value)
        currentPasswordChanged,
    required TResult Function(_EmailSubmit value) emailSubmitEvent,
    required TResult Function(_PasswordSubmit value) passwordSubmitEvent,
  }) {
    return newEmailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActivteEmailResetArea value)? activateEmailResetArea,
    TResult Function(_ActivtePasswordResetArea value)?
        activatePasswordResetArea,
    TResult Function(_DeactivteEmailResetArea value)? deactivateEmailResetArea,
    TResult Function(_DeactivtePasswordResetArea value)?
        deactivatePasswordResetArea,
    TResult Function(_NewEmailChanged value)? newEmailAddressChanged,
    TResult Function(_NewPasswordEmailChanged value)? newPasswordEmailChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_CurrentPasswordChanged value)? currentPasswordChanged,
    TResult Function(_EmailSubmit value)? emailSubmitEvent,
    TResult Function(_PasswordSubmit value)? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (newEmailAddressChanged != null) {
      return newEmailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _NewEmailChanged implements CredentialsEvent {
  const factory _NewEmailChanged({required String newEmailAddress}) =
      _$_NewEmailChanged;

  String get newEmailAddress => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NewEmailChangedCopyWith<_NewEmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NewPasswordEmailChangedCopyWith<$Res> {
  factory _$NewPasswordEmailChangedCopyWith(_NewPasswordEmailChanged value,
          $Res Function(_NewPasswordEmailChanged) then) =
      __$NewPasswordEmailChangedCopyWithImpl<$Res>;
  $Res call({String newPassword});
}

/// @nodoc
class __$NewPasswordEmailChangedCopyWithImpl<$Res>
    extends _$CredentialsEventCopyWithImpl<$Res>
    implements _$NewPasswordEmailChangedCopyWith<$Res> {
  __$NewPasswordEmailChangedCopyWithImpl(_NewPasswordEmailChanged _value,
      $Res Function(_NewPasswordEmailChanged) _then)
      : super(_value, (v) => _then(v as _NewPasswordEmailChanged));

  @override
  _NewPasswordEmailChanged get _value =>
      super._value as _NewPasswordEmailChanged;

  @override
  $Res call({
    Object? newPassword = freezed,
  }) {
    return _then(_NewPasswordEmailChanged(
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewPasswordEmailChanged implements _NewPasswordEmailChanged {
  const _$_NewPasswordEmailChanged({required this.newPassword});

  @override
  final String newPassword;

  @override
  String toString() {
    return 'CredentialsEvent.newPasswordEmailChanged(newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewPasswordEmailChanged &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newPassword);

  @JsonKey(ignore: true)
  @override
  _$NewPasswordEmailChangedCopyWith<_NewPasswordEmailChanged> get copyWith =>
      __$NewPasswordEmailChangedCopyWithImpl<_NewPasswordEmailChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activateEmailResetArea,
    required TResult Function() activatePasswordResetArea,
    required TResult Function() deactivateEmailResetArea,
    required TResult Function() deactivatePasswordResetArea,
    required TResult Function(String newEmailAddress) newEmailAddressChanged,
    required TResult Function(String newPassword) newPasswordEmailChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String currentPassword) currentPasswordChanged,
    required TResult Function() emailSubmitEvent,
    required TResult Function() passwordSubmitEvent,
  }) {
    return newPasswordEmailChanged(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activateEmailResetArea,
    TResult Function()? activatePasswordResetArea,
    TResult Function()? deactivateEmailResetArea,
    TResult Function()? deactivatePasswordResetArea,
    TResult Function(String newEmailAddress)? newEmailAddressChanged,
    TResult Function(String newPassword)? newPasswordEmailChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String currentPassword)? currentPasswordChanged,
    TResult Function()? emailSubmitEvent,
    TResult Function()? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (newPasswordEmailChanged != null) {
      return newPasswordEmailChanged(newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActivteEmailResetArea value)
        activateEmailResetArea,
    required TResult Function(_ActivtePasswordResetArea value)
        activatePasswordResetArea,
    required TResult Function(_DeactivteEmailResetArea value)
        deactivateEmailResetArea,
    required TResult Function(_DeactivtePasswordResetArea value)
        deactivatePasswordResetArea,
    required TResult Function(_NewEmailChanged value) newEmailAddressChanged,
    required TResult Function(_NewPasswordEmailChanged value)
        newPasswordEmailChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_CurrentPasswordChanged value)
        currentPasswordChanged,
    required TResult Function(_EmailSubmit value) emailSubmitEvent,
    required TResult Function(_PasswordSubmit value) passwordSubmitEvent,
  }) {
    return newPasswordEmailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActivteEmailResetArea value)? activateEmailResetArea,
    TResult Function(_ActivtePasswordResetArea value)?
        activatePasswordResetArea,
    TResult Function(_DeactivteEmailResetArea value)? deactivateEmailResetArea,
    TResult Function(_DeactivtePasswordResetArea value)?
        deactivatePasswordResetArea,
    TResult Function(_NewEmailChanged value)? newEmailAddressChanged,
    TResult Function(_NewPasswordEmailChanged value)? newPasswordEmailChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_CurrentPasswordChanged value)? currentPasswordChanged,
    TResult Function(_EmailSubmit value)? emailSubmitEvent,
    TResult Function(_PasswordSubmit value)? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (newPasswordEmailChanged != null) {
      return newPasswordEmailChanged(this);
    }
    return orElse();
  }
}

abstract class _NewPasswordEmailChanged implements CredentialsEvent {
  const factory _NewPasswordEmailChanged({required String newPassword}) =
      _$_NewPasswordEmailChanged;

  String get newPassword => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NewPasswordEmailChangedCopyWith<_NewPasswordEmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NewPasswordChangedCopyWith<$Res> {
  factory _$NewPasswordChangedCopyWith(
          _NewPasswordChanged value, $Res Function(_NewPasswordChanged) then) =
      __$NewPasswordChangedCopyWithImpl<$Res>;
  $Res call({String newPassword});
}

/// @nodoc
class __$NewPasswordChangedCopyWithImpl<$Res>
    extends _$CredentialsEventCopyWithImpl<$Res>
    implements _$NewPasswordChangedCopyWith<$Res> {
  __$NewPasswordChangedCopyWithImpl(
      _NewPasswordChanged _value, $Res Function(_NewPasswordChanged) _then)
      : super(_value, (v) => _then(v as _NewPasswordChanged));

  @override
  _NewPasswordChanged get _value => super._value as _NewPasswordChanged;

  @override
  $Res call({
    Object? newPassword = freezed,
  }) {
    return _then(_NewPasswordChanged(
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewPasswordChanged implements _NewPasswordChanged {
  const _$_NewPasswordChanged({required this.newPassword});

  @override
  final String newPassword;

  @override
  String toString() {
    return 'CredentialsEvent.newPasswordChanged(newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewPasswordChanged &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newPassword);

  @JsonKey(ignore: true)
  @override
  _$NewPasswordChangedCopyWith<_NewPasswordChanged> get copyWith =>
      __$NewPasswordChangedCopyWithImpl<_NewPasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activateEmailResetArea,
    required TResult Function() activatePasswordResetArea,
    required TResult Function() deactivateEmailResetArea,
    required TResult Function() deactivatePasswordResetArea,
    required TResult Function(String newEmailAddress) newEmailAddressChanged,
    required TResult Function(String newPassword) newPasswordEmailChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String currentPassword) currentPasswordChanged,
    required TResult Function() emailSubmitEvent,
    required TResult Function() passwordSubmitEvent,
  }) {
    return newPasswordChanged(newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activateEmailResetArea,
    TResult Function()? activatePasswordResetArea,
    TResult Function()? deactivateEmailResetArea,
    TResult Function()? deactivatePasswordResetArea,
    TResult Function(String newEmailAddress)? newEmailAddressChanged,
    TResult Function(String newPassword)? newPasswordEmailChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String currentPassword)? currentPasswordChanged,
    TResult Function()? emailSubmitEvent,
    TResult Function()? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActivteEmailResetArea value)
        activateEmailResetArea,
    required TResult Function(_ActivtePasswordResetArea value)
        activatePasswordResetArea,
    required TResult Function(_DeactivteEmailResetArea value)
        deactivateEmailResetArea,
    required TResult Function(_DeactivtePasswordResetArea value)
        deactivatePasswordResetArea,
    required TResult Function(_NewEmailChanged value) newEmailAddressChanged,
    required TResult Function(_NewPasswordEmailChanged value)
        newPasswordEmailChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_CurrentPasswordChanged value)
        currentPasswordChanged,
    required TResult Function(_EmailSubmit value) emailSubmitEvent,
    required TResult Function(_PasswordSubmit value) passwordSubmitEvent,
  }) {
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActivteEmailResetArea value)? activateEmailResetArea,
    TResult Function(_ActivtePasswordResetArea value)?
        activatePasswordResetArea,
    TResult Function(_DeactivteEmailResetArea value)? deactivateEmailResetArea,
    TResult Function(_DeactivtePasswordResetArea value)?
        deactivatePasswordResetArea,
    TResult Function(_NewEmailChanged value)? newEmailAddressChanged,
    TResult Function(_NewPasswordEmailChanged value)? newPasswordEmailChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_CurrentPasswordChanged value)? currentPasswordChanged,
    TResult Function(_EmailSubmit value)? emailSubmitEvent,
    TResult Function(_PasswordSubmit value)? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _NewPasswordChanged implements CredentialsEvent {
  const factory _NewPasswordChanged({required String newPassword}) =
      _$_NewPasswordChanged;

  String get newPassword => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$NewPasswordChangedCopyWith<_NewPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CurrentPasswordChangedCopyWith<$Res> {
  factory _$CurrentPasswordChangedCopyWith(_CurrentPasswordChanged value,
          $Res Function(_CurrentPasswordChanged) then) =
      __$CurrentPasswordChangedCopyWithImpl<$Res>;
  $Res call({String currentPassword});
}

/// @nodoc
class __$CurrentPasswordChangedCopyWithImpl<$Res>
    extends _$CredentialsEventCopyWithImpl<$Res>
    implements _$CurrentPasswordChangedCopyWith<$Res> {
  __$CurrentPasswordChangedCopyWithImpl(_CurrentPasswordChanged _value,
      $Res Function(_CurrentPasswordChanged) _then)
      : super(_value, (v) => _then(v as _CurrentPasswordChanged));

  @override
  _CurrentPasswordChanged get _value => super._value as _CurrentPasswordChanged;

  @override
  $Res call({
    Object? currentPassword = freezed,
  }) {
    return _then(_CurrentPasswordChanged(
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrentPasswordChanged implements _CurrentPasswordChanged {
  const _$_CurrentPasswordChanged({required this.currentPassword});

  @override
  final String currentPassword;

  @override
  String toString() {
    return 'CredentialsEvent.currentPasswordChanged(currentPassword: $currentPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrentPasswordChanged &&
            (identical(other.currentPassword, currentPassword) ||
                const DeepCollectionEquality()
                    .equals(other.currentPassword, currentPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPassword);

  @JsonKey(ignore: true)
  @override
  _$CurrentPasswordChangedCopyWith<_CurrentPasswordChanged> get copyWith =>
      __$CurrentPasswordChangedCopyWithImpl<_CurrentPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activateEmailResetArea,
    required TResult Function() activatePasswordResetArea,
    required TResult Function() deactivateEmailResetArea,
    required TResult Function() deactivatePasswordResetArea,
    required TResult Function(String newEmailAddress) newEmailAddressChanged,
    required TResult Function(String newPassword) newPasswordEmailChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String currentPassword) currentPasswordChanged,
    required TResult Function() emailSubmitEvent,
    required TResult Function() passwordSubmitEvent,
  }) {
    return currentPasswordChanged(currentPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activateEmailResetArea,
    TResult Function()? activatePasswordResetArea,
    TResult Function()? deactivateEmailResetArea,
    TResult Function()? deactivatePasswordResetArea,
    TResult Function(String newEmailAddress)? newEmailAddressChanged,
    TResult Function(String newPassword)? newPasswordEmailChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String currentPassword)? currentPasswordChanged,
    TResult Function()? emailSubmitEvent,
    TResult Function()? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (currentPasswordChanged != null) {
      return currentPasswordChanged(currentPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActivteEmailResetArea value)
        activateEmailResetArea,
    required TResult Function(_ActivtePasswordResetArea value)
        activatePasswordResetArea,
    required TResult Function(_DeactivteEmailResetArea value)
        deactivateEmailResetArea,
    required TResult Function(_DeactivtePasswordResetArea value)
        deactivatePasswordResetArea,
    required TResult Function(_NewEmailChanged value) newEmailAddressChanged,
    required TResult Function(_NewPasswordEmailChanged value)
        newPasswordEmailChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_CurrentPasswordChanged value)
        currentPasswordChanged,
    required TResult Function(_EmailSubmit value) emailSubmitEvent,
    required TResult Function(_PasswordSubmit value) passwordSubmitEvent,
  }) {
    return currentPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActivteEmailResetArea value)? activateEmailResetArea,
    TResult Function(_ActivtePasswordResetArea value)?
        activatePasswordResetArea,
    TResult Function(_DeactivteEmailResetArea value)? deactivateEmailResetArea,
    TResult Function(_DeactivtePasswordResetArea value)?
        deactivatePasswordResetArea,
    TResult Function(_NewEmailChanged value)? newEmailAddressChanged,
    TResult Function(_NewPasswordEmailChanged value)? newPasswordEmailChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_CurrentPasswordChanged value)? currentPasswordChanged,
    TResult Function(_EmailSubmit value)? emailSubmitEvent,
    TResult Function(_PasswordSubmit value)? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (currentPasswordChanged != null) {
      return currentPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _CurrentPasswordChanged implements CredentialsEvent {
  const factory _CurrentPasswordChanged({required String currentPassword}) =
      _$_CurrentPasswordChanged;

  String get currentPassword => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CurrentPasswordChangedCopyWith<_CurrentPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmailSubmitCopyWith<$Res> {
  factory _$EmailSubmitCopyWith(
          _EmailSubmit value, $Res Function(_EmailSubmit) then) =
      __$EmailSubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmailSubmitCopyWithImpl<$Res>
    extends _$CredentialsEventCopyWithImpl<$Res>
    implements _$EmailSubmitCopyWith<$Res> {
  __$EmailSubmitCopyWithImpl(
      _EmailSubmit _value, $Res Function(_EmailSubmit) _then)
      : super(_value, (v) => _then(v as _EmailSubmit));

  @override
  _EmailSubmit get _value => super._value as _EmailSubmit;
}

/// @nodoc

class _$_EmailSubmit implements _EmailSubmit {
  const _$_EmailSubmit();

  @override
  String toString() {
    return 'CredentialsEvent.emailSubmitEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmailSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activateEmailResetArea,
    required TResult Function() activatePasswordResetArea,
    required TResult Function() deactivateEmailResetArea,
    required TResult Function() deactivatePasswordResetArea,
    required TResult Function(String newEmailAddress) newEmailAddressChanged,
    required TResult Function(String newPassword) newPasswordEmailChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String currentPassword) currentPasswordChanged,
    required TResult Function() emailSubmitEvent,
    required TResult Function() passwordSubmitEvent,
  }) {
    return emailSubmitEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activateEmailResetArea,
    TResult Function()? activatePasswordResetArea,
    TResult Function()? deactivateEmailResetArea,
    TResult Function()? deactivatePasswordResetArea,
    TResult Function(String newEmailAddress)? newEmailAddressChanged,
    TResult Function(String newPassword)? newPasswordEmailChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String currentPassword)? currentPasswordChanged,
    TResult Function()? emailSubmitEvent,
    TResult Function()? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (emailSubmitEvent != null) {
      return emailSubmitEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActivteEmailResetArea value)
        activateEmailResetArea,
    required TResult Function(_ActivtePasswordResetArea value)
        activatePasswordResetArea,
    required TResult Function(_DeactivteEmailResetArea value)
        deactivateEmailResetArea,
    required TResult Function(_DeactivtePasswordResetArea value)
        deactivatePasswordResetArea,
    required TResult Function(_NewEmailChanged value) newEmailAddressChanged,
    required TResult Function(_NewPasswordEmailChanged value)
        newPasswordEmailChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_CurrentPasswordChanged value)
        currentPasswordChanged,
    required TResult Function(_EmailSubmit value) emailSubmitEvent,
    required TResult Function(_PasswordSubmit value) passwordSubmitEvent,
  }) {
    return emailSubmitEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActivteEmailResetArea value)? activateEmailResetArea,
    TResult Function(_ActivtePasswordResetArea value)?
        activatePasswordResetArea,
    TResult Function(_DeactivteEmailResetArea value)? deactivateEmailResetArea,
    TResult Function(_DeactivtePasswordResetArea value)?
        deactivatePasswordResetArea,
    TResult Function(_NewEmailChanged value)? newEmailAddressChanged,
    TResult Function(_NewPasswordEmailChanged value)? newPasswordEmailChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_CurrentPasswordChanged value)? currentPasswordChanged,
    TResult Function(_EmailSubmit value)? emailSubmitEvent,
    TResult Function(_PasswordSubmit value)? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (emailSubmitEvent != null) {
      return emailSubmitEvent(this);
    }
    return orElse();
  }
}

abstract class _EmailSubmit implements CredentialsEvent {
  const factory _EmailSubmit() = _$_EmailSubmit;
}

/// @nodoc
abstract class _$PasswordSubmitCopyWith<$Res> {
  factory _$PasswordSubmitCopyWith(
          _PasswordSubmit value, $Res Function(_PasswordSubmit) then) =
      __$PasswordSubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$PasswordSubmitCopyWithImpl<$Res>
    extends _$CredentialsEventCopyWithImpl<$Res>
    implements _$PasswordSubmitCopyWith<$Res> {
  __$PasswordSubmitCopyWithImpl(
      _PasswordSubmit _value, $Res Function(_PasswordSubmit) _then)
      : super(_value, (v) => _then(v as _PasswordSubmit));

  @override
  _PasswordSubmit get _value => super._value as _PasswordSubmit;
}

/// @nodoc

class _$_PasswordSubmit implements _PasswordSubmit {
  const _$_PasswordSubmit();

  @override
  String toString() {
    return 'CredentialsEvent.passwordSubmitEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PasswordSubmit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() activateEmailResetArea,
    required TResult Function() activatePasswordResetArea,
    required TResult Function() deactivateEmailResetArea,
    required TResult Function() deactivatePasswordResetArea,
    required TResult Function(String newEmailAddress) newEmailAddressChanged,
    required TResult Function(String newPassword) newPasswordEmailChanged,
    required TResult Function(String newPassword) newPasswordChanged,
    required TResult Function(String currentPassword) currentPasswordChanged,
    required TResult Function() emailSubmitEvent,
    required TResult Function() passwordSubmitEvent,
  }) {
    return passwordSubmitEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? activateEmailResetArea,
    TResult Function()? activatePasswordResetArea,
    TResult Function()? deactivateEmailResetArea,
    TResult Function()? deactivatePasswordResetArea,
    TResult Function(String newEmailAddress)? newEmailAddressChanged,
    TResult Function(String newPassword)? newPasswordEmailChanged,
    TResult Function(String newPassword)? newPasswordChanged,
    TResult Function(String currentPassword)? currentPasswordChanged,
    TResult Function()? emailSubmitEvent,
    TResult Function()? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (passwordSubmitEvent != null) {
      return passwordSubmitEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActivteEmailResetArea value)
        activateEmailResetArea,
    required TResult Function(_ActivtePasswordResetArea value)
        activatePasswordResetArea,
    required TResult Function(_DeactivteEmailResetArea value)
        deactivateEmailResetArea,
    required TResult Function(_DeactivtePasswordResetArea value)
        deactivatePasswordResetArea,
    required TResult Function(_NewEmailChanged value) newEmailAddressChanged,
    required TResult Function(_NewPasswordEmailChanged value)
        newPasswordEmailChanged,
    required TResult Function(_NewPasswordChanged value) newPasswordChanged,
    required TResult Function(_CurrentPasswordChanged value)
        currentPasswordChanged,
    required TResult Function(_EmailSubmit value) emailSubmitEvent,
    required TResult Function(_PasswordSubmit value) passwordSubmitEvent,
  }) {
    return passwordSubmitEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActivteEmailResetArea value)? activateEmailResetArea,
    TResult Function(_ActivtePasswordResetArea value)?
        activatePasswordResetArea,
    TResult Function(_DeactivteEmailResetArea value)? deactivateEmailResetArea,
    TResult Function(_DeactivtePasswordResetArea value)?
        deactivatePasswordResetArea,
    TResult Function(_NewEmailChanged value)? newEmailAddressChanged,
    TResult Function(_NewPasswordEmailChanged value)? newPasswordEmailChanged,
    TResult Function(_NewPasswordChanged value)? newPasswordChanged,
    TResult Function(_CurrentPasswordChanged value)? currentPasswordChanged,
    TResult Function(_EmailSubmit value)? emailSubmitEvent,
    TResult Function(_PasswordSubmit value)? passwordSubmitEvent,
    required TResult orElse(),
  }) {
    if (passwordSubmitEvent != null) {
      return passwordSubmitEvent(this);
    }
    return orElse();
  }
}

abstract class _PasswordSubmit implements CredentialsEvent {
  const factory _PasswordSubmit() = _$_PasswordSubmit;
}

/// @nodoc
class _$CredentialStateTearOff {
  const _$CredentialStateTearOff();

  _CredentialState call(
      {required EmailAddress currentEmailAddress,
      required EmailAddress newEmailAddress,
      required Password newPassword,
      required Password currentPassword,
      required bool showErrorMessages,
      required bool isFetching,
      required bool isEmailResetActive,
      required bool isPasswordResetActive,
      required Option<Either<CredentialFailure, String>> resetFailureOrSuccess,
      required Option<Either<ValueFailure, dynamic>> valueFailureOrSuccess}) {
    return _CredentialState(
      currentEmailAddress: currentEmailAddress,
      newEmailAddress: newEmailAddress,
      newPassword: newPassword,
      currentPassword: currentPassword,
      showErrorMessages: showErrorMessages,
      isFetching: isFetching,
      isEmailResetActive: isEmailResetActive,
      isPasswordResetActive: isPasswordResetActive,
      resetFailureOrSuccess: resetFailureOrSuccess,
      valueFailureOrSuccess: valueFailureOrSuccess,
    );
  }
}

/// @nodoc
const $CredentialState = _$CredentialStateTearOff();

/// @nodoc
mixin _$CredentialState {
  EmailAddress get currentEmailAddress => throw _privateConstructorUsedError;
  EmailAddress get newEmailAddress => throw _privateConstructorUsedError;
  Password get newPassword => throw _privateConstructorUsedError;
  Password get currentPassword => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isEmailResetActive => throw _privateConstructorUsedError;
  bool get isPasswordResetActive => throw _privateConstructorUsedError;
  Option<Either<CredentialFailure, String>> get resetFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Option<Either<ValueFailure, dynamic>> get valueFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CredentialStateCopyWith<CredentialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CredentialStateCopyWith<$Res> {
  factory $CredentialStateCopyWith(
          CredentialState value, $Res Function(CredentialState) then) =
      _$CredentialStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress currentEmailAddress,
      EmailAddress newEmailAddress,
      Password newPassword,
      Password currentPassword,
      bool showErrorMessages,
      bool isFetching,
      bool isEmailResetActive,
      bool isPasswordResetActive,
      Option<Either<CredentialFailure, String>> resetFailureOrSuccess,
      Option<Either<ValueFailure, dynamic>> valueFailureOrSuccess});
}

/// @nodoc
class _$CredentialStateCopyWithImpl<$Res>
    implements $CredentialStateCopyWith<$Res> {
  _$CredentialStateCopyWithImpl(this._value, this._then);

  final CredentialState _value;
  // ignore: unused_field
  final $Res Function(CredentialState) _then;

  @override
  $Res call({
    Object? currentEmailAddress = freezed,
    Object? newEmailAddress = freezed,
    Object? newPassword = freezed,
    Object? currentPassword = freezed,
    Object? showErrorMessages = freezed,
    Object? isFetching = freezed,
    Object? isEmailResetActive = freezed,
    Object? isPasswordResetActive = freezed,
    Object? resetFailureOrSuccess = freezed,
    Object? valueFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      currentEmailAddress: currentEmailAddress == freezed
          ? _value.currentEmailAddress
          : currentEmailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      newEmailAddress: newEmailAddress == freezed
          ? _value.newEmailAddress
          : newEmailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailResetActive: isEmailResetActive == freezed
          ? _value.isEmailResetActive
          : isEmailResetActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordResetActive: isPasswordResetActive == freezed
          ? _value.isPasswordResetActive
          : isPasswordResetActive // ignore: cast_nullable_to_non_nullable
              as bool,
      resetFailureOrSuccess: resetFailureOrSuccess == freezed
          ? _value.resetFailureOrSuccess
          : resetFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CredentialFailure, String>>,
      valueFailureOrSuccess: valueFailureOrSuccess == freezed
          ? _value.valueFailureOrSuccess
          : valueFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$CredentialStateCopyWith<$Res>
    implements $CredentialStateCopyWith<$Res> {
  factory _$CredentialStateCopyWith(
          _CredentialState value, $Res Function(_CredentialState) then) =
      __$CredentialStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress currentEmailAddress,
      EmailAddress newEmailAddress,
      Password newPassword,
      Password currentPassword,
      bool showErrorMessages,
      bool isFetching,
      bool isEmailResetActive,
      bool isPasswordResetActive,
      Option<Either<CredentialFailure, String>> resetFailureOrSuccess,
      Option<Either<ValueFailure, dynamic>> valueFailureOrSuccess});
}

/// @nodoc
class __$CredentialStateCopyWithImpl<$Res>
    extends _$CredentialStateCopyWithImpl<$Res>
    implements _$CredentialStateCopyWith<$Res> {
  __$CredentialStateCopyWithImpl(
      _CredentialState _value, $Res Function(_CredentialState) _then)
      : super(_value, (v) => _then(v as _CredentialState));

  @override
  _CredentialState get _value => super._value as _CredentialState;

  @override
  $Res call({
    Object? currentEmailAddress = freezed,
    Object? newEmailAddress = freezed,
    Object? newPassword = freezed,
    Object? currentPassword = freezed,
    Object? showErrorMessages = freezed,
    Object? isFetching = freezed,
    Object? isEmailResetActive = freezed,
    Object? isPasswordResetActive = freezed,
    Object? resetFailureOrSuccess = freezed,
    Object? valueFailureOrSuccess = freezed,
  }) {
    return _then(_CredentialState(
      currentEmailAddress: currentEmailAddress == freezed
          ? _value.currentEmailAddress
          : currentEmailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      newEmailAddress: newEmailAddress == freezed
          ? _value.newEmailAddress
          : newEmailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      currentPassword: currentPassword == freezed
          ? _value.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailResetActive: isEmailResetActive == freezed
          ? _value.isEmailResetActive
          : isEmailResetActive // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordResetActive: isPasswordResetActive == freezed
          ? _value.isPasswordResetActive
          : isPasswordResetActive // ignore: cast_nullable_to_non_nullable
              as bool,
      resetFailureOrSuccess: resetFailureOrSuccess == freezed
          ? _value.resetFailureOrSuccess
          : resetFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CredentialFailure, String>>,
      valueFailureOrSuccess: valueFailureOrSuccess == freezed
          ? _value.valueFailureOrSuccess
          : valueFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_CredentialState implements _CredentialState {
  const _$_CredentialState(
      {required this.currentEmailAddress,
      required this.newEmailAddress,
      required this.newPassword,
      required this.currentPassword,
      required this.showErrorMessages,
      required this.isFetching,
      required this.isEmailResetActive,
      required this.isPasswordResetActive,
      required this.resetFailureOrSuccess,
      required this.valueFailureOrSuccess});

  @override
  final EmailAddress currentEmailAddress;
  @override
  final EmailAddress newEmailAddress;
  @override
  final Password newPassword;
  @override
  final Password currentPassword;
  @override
  final bool showErrorMessages;
  @override
  final bool isFetching;
  @override
  final bool isEmailResetActive;
  @override
  final bool isPasswordResetActive;
  @override
  final Option<Either<CredentialFailure, String>> resetFailureOrSuccess;
  @override
  final Option<Either<ValueFailure, dynamic>> valueFailureOrSuccess;

  @override
  String toString() {
    return 'CredentialState(currentEmailAddress: $currentEmailAddress, newEmailAddress: $newEmailAddress, newPassword: $newPassword, currentPassword: $currentPassword, showErrorMessages: $showErrorMessages, isFetching: $isFetching, isEmailResetActive: $isEmailResetActive, isPasswordResetActive: $isPasswordResetActive, resetFailureOrSuccess: $resetFailureOrSuccess, valueFailureOrSuccess: $valueFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CredentialState &&
            (identical(other.currentEmailAddress, currentEmailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.currentEmailAddress, currentEmailAddress)) &&
            (identical(other.newEmailAddress, newEmailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.newEmailAddress, newEmailAddress)) &&
            (identical(other.newPassword, newPassword) ||
                const DeepCollectionEquality()
                    .equals(other.newPassword, newPassword)) &&
            (identical(other.currentPassword, currentPassword) ||
                const DeepCollectionEquality()
                    .equals(other.currentPassword, currentPassword)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isFetching, isFetching) ||
                const DeepCollectionEquality()
                    .equals(other.isFetching, isFetching)) &&
            (identical(other.isEmailResetActive, isEmailResetActive) ||
                const DeepCollectionEquality()
                    .equals(other.isEmailResetActive, isEmailResetActive)) &&
            (identical(other.isPasswordResetActive, isPasswordResetActive) ||
                const DeepCollectionEquality().equals(
                    other.isPasswordResetActive, isPasswordResetActive)) &&
            (identical(other.resetFailureOrSuccess, resetFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.resetFailureOrSuccess, resetFailureOrSuccess)) &&
            (identical(other.valueFailureOrSuccess, valueFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.valueFailureOrSuccess, valueFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentEmailAddress) ^
      const DeepCollectionEquality().hash(newEmailAddress) ^
      const DeepCollectionEquality().hash(newPassword) ^
      const DeepCollectionEquality().hash(currentPassword) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isFetching) ^
      const DeepCollectionEquality().hash(isEmailResetActive) ^
      const DeepCollectionEquality().hash(isPasswordResetActive) ^
      const DeepCollectionEquality().hash(resetFailureOrSuccess) ^
      const DeepCollectionEquality().hash(valueFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$CredentialStateCopyWith<_CredentialState> get copyWith =>
      __$CredentialStateCopyWithImpl<_CredentialState>(this, _$identity);
}

abstract class _CredentialState implements CredentialState {
  const factory _CredentialState(
      {required EmailAddress currentEmailAddress,
      required EmailAddress newEmailAddress,
      required Password newPassword,
      required Password currentPassword,
      required bool showErrorMessages,
      required bool isFetching,
      required bool isEmailResetActive,
      required bool isPasswordResetActive,
      required Option<Either<CredentialFailure, String>> resetFailureOrSuccess,
      required Option<Either<ValueFailure, dynamic>>
          valueFailureOrSuccess}) = _$_CredentialState;

  @override
  EmailAddress get currentEmailAddress => throw _privateConstructorUsedError;
  @override
  EmailAddress get newEmailAddress => throw _privateConstructorUsedError;
  @override
  Password get newPassword => throw _privateConstructorUsedError;
  @override
  Password get currentPassword => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isFetching => throw _privateConstructorUsedError;
  @override
  bool get isEmailResetActive => throw _privateConstructorUsedError;
  @override
  bool get isPasswordResetActive => throw _privateConstructorUsedError;
  @override
  Option<Either<CredentialFailure, String>> get resetFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<ValueFailure, dynamic>> get valueFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CredentialStateCopyWith<_CredentialState> get copyWith =>
      throw _privateConstructorUsedError;
}

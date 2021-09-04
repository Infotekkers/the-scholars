// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterFormEventTearOff {
  const _$RegisterFormEventTearOff();

  NameChanged nameChanged(String nameStr) {
    return NameChanged(
      nameStr,
    );
  }

  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

  RoleChanged roleChanged(String roleStr) {
    return RoleChanged(
      roleStr,
    );
  }

  RegistrationClicked registerPressed() {
    return const RegistrationClicked();
  }
}

/// @nodoc
const $RegisterFormEvent = _$RegisterFormEventTearOff();

/// @nodoc
mixin _$RegisterFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function() registerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function()? registerPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(RegistrationClicked value) registerPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(RegistrationClicked value)? registerPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormEventCopyWith<$Res> {
  factory $RegisterFormEventCopyWith(
          RegisterFormEvent value, $Res Function(RegisterFormEvent) then) =
      _$RegisterFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterFormEventCopyWithImpl<$Res>
    implements $RegisterFormEventCopyWith<$Res> {
  _$RegisterFormEventCopyWithImpl(this._value, this._then);

  final RegisterFormEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterFormEvent) _then;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String nameStr});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object? nameStr = freezed,
  }) {
    return _then(NameChanged(
      nameStr == freezed
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'RegisterFormEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.nameStr, nameStr) ||
                const DeepCollectionEquality().equals(other.nameStr, nameStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameStr);

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function() registerPressed,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function()? registerPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(RegistrationClicked value) registerPressed,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(RegistrationClicked value)? registerPressed,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements RegisterFormEvent {
  const factory NameChanged(String nameStr) = _$NameChanged;

  String get nameStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'RegisterFormEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function() registerPressed,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function()? registerPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(RegistrationClicked value) registerPressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(RegistrationClicked value)? registerPressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements RegisterFormEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'RegisterFormEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function() registerPressed,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function()? registerPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(RegistrationClicked value) registerPressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(RegistrationClicked value)? registerPressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements RegisterFormEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoleChangedCopyWith<$Res> {
  factory $RoleChangedCopyWith(
          RoleChanged value, $Res Function(RoleChanged) then) =
      _$RoleChangedCopyWithImpl<$Res>;
  $Res call({String roleStr});
}

/// @nodoc
class _$RoleChangedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $RoleChangedCopyWith<$Res> {
  _$RoleChangedCopyWithImpl(
      RoleChanged _value, $Res Function(RoleChanged) _then)
      : super(_value, (v) => _then(v as RoleChanged));

  @override
  RoleChanged get _value => super._value as RoleChanged;

  @override
  $Res call({
    Object? roleStr = freezed,
  }) {
    return _then(RoleChanged(
      roleStr == freezed
          ? _value.roleStr
          : roleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RoleChanged implements RoleChanged {
  const _$RoleChanged(this.roleStr);

  @override
  final String roleStr;

  @override
  String toString() {
    return 'RegisterFormEvent.roleChanged(roleStr: $roleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RoleChanged &&
            (identical(other.roleStr, roleStr) ||
                const DeepCollectionEquality().equals(other.roleStr, roleStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(roleStr);

  @JsonKey(ignore: true)
  @override
  $RoleChangedCopyWith<RoleChanged> get copyWith =>
      _$RoleChangedCopyWithImpl<RoleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function() registerPressed,
  }) {
    return roleChanged(roleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function()? registerPressed,
    required TResult orElse(),
  }) {
    if (roleChanged != null) {
      return roleChanged(roleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(RegistrationClicked value) registerPressed,
  }) {
    return roleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(RegistrationClicked value)? registerPressed,
    required TResult orElse(),
  }) {
    if (roleChanged != null) {
      return roleChanged(this);
    }
    return orElse();
  }
}

abstract class RoleChanged implements RegisterFormEvent {
  const factory RoleChanged(String roleStr) = _$RoleChanged;

  String get roleStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoleChangedCopyWith<RoleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationClickedCopyWith<$Res> {
  factory $RegistrationClickedCopyWith(
          RegistrationClicked value, $Res Function(RegistrationClicked) then) =
      _$RegistrationClickedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegistrationClickedCopyWithImpl<$Res>
    extends _$RegisterFormEventCopyWithImpl<$Res>
    implements $RegistrationClickedCopyWith<$Res> {
  _$RegistrationClickedCopyWithImpl(
      RegistrationClicked _value, $Res Function(RegistrationClicked) _then)
      : super(_value, (v) => _then(v as RegistrationClicked));

  @override
  RegistrationClicked get _value => super._value as RegistrationClicked;
}

/// @nodoc

class _$RegistrationClicked implements RegistrationClicked {
  const _$RegistrationClicked();

  @override
  String toString() {
    return 'RegisterFormEvent.registerPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RegistrationClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String roleStr) roleChanged,
    required TResult Function() registerPressed,
  }) {
    return registerPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String roleStr)? roleChanged,
    TResult Function()? registerPressed,
    required TResult orElse(),
  }) {
    if (registerPressed != null) {
      return registerPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RoleChanged value) roleChanged,
    required TResult Function(RegistrationClicked value) registerPressed,
  }) {
    return registerPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RoleChanged value)? roleChanged,
    TResult Function(RegistrationClicked value)? registerPressed,
    required TResult orElse(),
  }) {
    if (registerPressed != null) {
      return registerPressed(this);
    }
    return orElse();
  }
}

abstract class RegistrationClicked implements RegisterFormEvent {
  const factory RegistrationClicked() = _$RegistrationClicked;
}

/// @nodoc
class _$RegisterFormStateTearOff {
  const _$RegisterFormStateTearOff();

  _RegisterFormState call(
      {required Name name,
      required EmailAddress emailAddress,
      required Password password,
      required Role role,
      required bool isSubmitting,
      required bool showErrorMessages,
      required Option<Either<AuthFailure, User>> authFailureOrSuccess}) {
    return _RegisterFormState(
      name: name,
      emailAddress: emailAddress,
      password: password,
      role: role,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      authFailureOrSuccess: authFailureOrSuccess,
    );
  }
}

/// @nodoc
const $RegisterFormState = _$RegisterFormStateTearOff();

/// @nodoc
mixin _$RegisterFormState {
  Name get name => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, User>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterFormStateCopyWith<RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterFormStateCopyWith<$Res> {
  factory $RegisterFormStateCopyWith(
          RegisterFormState value, $Res Function(RegisterFormState) then) =
      _$RegisterFormStateCopyWithImpl<$Res>;
  $Res call(
      {Name name,
      EmailAddress emailAddress,
      Password password,
      Role role,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, User>> authFailureOrSuccess});
}

/// @nodoc
class _$RegisterFormStateCopyWithImpl<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  _$RegisterFormStateCopyWithImpl(this._value, this._then);

  final RegisterFormState _value;
  // ignore: unused_field
  final $Res Function(RegisterFormState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
    ));
  }
}

/// @nodoc
abstract class _$RegisterFormStateCopyWith<$Res>
    implements $RegisterFormStateCopyWith<$Res> {
  factory _$RegisterFormStateCopyWith(
          _RegisterFormState value, $Res Function(_RegisterFormState) then) =
      __$RegisterFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Name name,
      EmailAddress emailAddress,
      Password password,
      Role role,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, User>> authFailureOrSuccess});
}

/// @nodoc
class __$RegisterFormStateCopyWithImpl<$Res>
    extends _$RegisterFormStateCopyWithImpl<$Res>
    implements _$RegisterFormStateCopyWith<$Res> {
  __$RegisterFormStateCopyWithImpl(
      _RegisterFormState _value, $Res Function(_RegisterFormState) _then)
      : super(_value, (v) => _then(v as _RegisterFormState));

  @override
  _RegisterFormState get _value => super._value as _RegisterFormState;

  @override
  $Res call({
    Object? name = freezed,
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessages = freezed,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_RegisterFormState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
    ));
  }
}

/// @nodoc

class _$_RegisterFormState implements _RegisterFormState {
  const _$_RegisterFormState(
      {required this.name,
      required this.emailAddress,
      required this.password,
      required this.role,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.authFailureOrSuccess});

  @override
  final Name name;
  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final Role role;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, User>> authFailureOrSuccess;

  @override
  String toString() {
    return 'RegisterFormState(name: $name, emailAddress: $emailAddress, password: $password, role: $role, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterFormState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.role, role) ||
                const DeepCollectionEquality().equals(other.role, role)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.authFailureOrSuccess, authFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(role) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith =>
      __$RegisterFormStateCopyWithImpl<_RegisterFormState>(this, _$identity);
}

abstract class _RegisterFormState implements RegisterFormState {
  const factory _RegisterFormState(
          {required Name name,
          required EmailAddress emailAddress,
          required Password password,
          required Role role,
          required bool isSubmitting,
          required bool showErrorMessages,
          required Option<Either<AuthFailure, User>> authFailureOrSuccess}) =
      _$_RegisterFormState;

  @override
  Name get name => throw _privateConstructorUsedError;
  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  Role get role => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, User>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterFormStateCopyWith<_RegisterFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

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

  EmptyApplication emptyApplication() {
    return const EmptyApplication();
  }

  IncompleteApplication incompleteApplication() {
    return const IncompleteApplication();
  }

  DatabaseError databaseError() {
    return const DatabaseError();
  }

  DuplicateApplication duplicateApplication() {
    return const DuplicateApplication();
  }

  NoConnection noConnection() {
    return const NoConnection();
  }

  ServerError serverError() {
    return const ServerError();
  }
}

/// @nodoc
const $ApplicationFailure = _$ApplicationFailureTearOff();

/// @nodoc
mixin _$ApplicationFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidApplication,
    required TResult Function() emptyApplication,
    required TResult Function() incompleteApplication,
    required TResult Function() databaseError,
    required TResult Function() duplicateApplication,
    required TResult Function() noConnection,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidApplication,
    TResult Function()? emptyApplication,
    TResult Function()? incompleteApplication,
    TResult Function()? databaseError,
    TResult Function()? duplicateApplication,
    TResult Function()? noConnection,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidApplication value) invalidApplication,
    required TResult Function(EmptyApplication value) emptyApplication,
    required TResult Function(IncompleteApplication value)
        incompleteApplication,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(DuplicateApplication value) duplicateApplication,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidApplication value)? invalidApplication,
    TResult Function(EmptyApplication value)? emptyApplication,
    TResult Function(IncompleteApplication value)? incompleteApplication,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(DuplicateApplication value)? duplicateApplication,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(ServerError value)? serverError,
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
    required TResult Function() emptyApplication,
    required TResult Function() incompleteApplication,
    required TResult Function() databaseError,
    required TResult Function() duplicateApplication,
    required TResult Function() noConnection,
    required TResult Function() serverError,
  }) {
    return invalidApplication();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidApplication,
    TResult Function()? emptyApplication,
    TResult Function()? incompleteApplication,
    TResult Function()? databaseError,
    TResult Function()? duplicateApplication,
    TResult Function()? noConnection,
    TResult Function()? serverError,
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
    required TResult Function(EmptyApplication value) emptyApplication,
    required TResult Function(IncompleteApplication value)
        incompleteApplication,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(DuplicateApplication value) duplicateApplication,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(ServerError value) serverError,
  }) {
    return invalidApplication(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidApplication value)? invalidApplication,
    TResult Function(EmptyApplication value)? emptyApplication,
    TResult Function(IncompleteApplication value)? incompleteApplication,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(DuplicateApplication value)? duplicateApplication,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(ServerError value)? serverError,
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

/// @nodoc
abstract class $EmptyApplicationCopyWith<$Res> {
  factory $EmptyApplicationCopyWith(
          EmptyApplication value, $Res Function(EmptyApplication) then) =
      _$EmptyApplicationCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmptyApplicationCopyWithImpl<$Res>
    extends _$ApplicationFailureCopyWithImpl<$Res>
    implements $EmptyApplicationCopyWith<$Res> {
  _$EmptyApplicationCopyWithImpl(
      EmptyApplication _value, $Res Function(EmptyApplication) _then)
      : super(_value, (v) => _then(v as EmptyApplication));

  @override
  EmptyApplication get _value => super._value as EmptyApplication;
}

/// @nodoc

class _$EmptyApplication implements EmptyApplication {
  const _$EmptyApplication();

  @override
  String toString() {
    return 'ApplicationFailure.emptyApplication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmptyApplication);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidApplication,
    required TResult Function() emptyApplication,
    required TResult Function() incompleteApplication,
    required TResult Function() databaseError,
    required TResult Function() duplicateApplication,
    required TResult Function() noConnection,
    required TResult Function() serverError,
  }) {
    return emptyApplication();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidApplication,
    TResult Function()? emptyApplication,
    TResult Function()? incompleteApplication,
    TResult Function()? databaseError,
    TResult Function()? duplicateApplication,
    TResult Function()? noConnection,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (emptyApplication != null) {
      return emptyApplication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidApplication value) invalidApplication,
    required TResult Function(EmptyApplication value) emptyApplication,
    required TResult Function(IncompleteApplication value)
        incompleteApplication,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(DuplicateApplication value) duplicateApplication,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(ServerError value) serverError,
  }) {
    return emptyApplication(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidApplication value)? invalidApplication,
    TResult Function(EmptyApplication value)? emptyApplication,
    TResult Function(IncompleteApplication value)? incompleteApplication,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(DuplicateApplication value)? duplicateApplication,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (emptyApplication != null) {
      return emptyApplication(this);
    }
    return orElse();
  }
}

abstract class EmptyApplication implements ApplicationFailure {
  const factory EmptyApplication() = _$EmptyApplication;
}

/// @nodoc
abstract class $IncompleteApplicationCopyWith<$Res> {
  factory $IncompleteApplicationCopyWith(IncompleteApplication value,
          $Res Function(IncompleteApplication) then) =
      _$IncompleteApplicationCopyWithImpl<$Res>;
}

/// @nodoc
class _$IncompleteApplicationCopyWithImpl<$Res>
    extends _$ApplicationFailureCopyWithImpl<$Res>
    implements $IncompleteApplicationCopyWith<$Res> {
  _$IncompleteApplicationCopyWithImpl(
      IncompleteApplication _value, $Res Function(IncompleteApplication) _then)
      : super(_value, (v) => _then(v as IncompleteApplication));

  @override
  IncompleteApplication get _value => super._value as IncompleteApplication;
}

/// @nodoc

class _$IncompleteApplication implements IncompleteApplication {
  const _$IncompleteApplication();

  @override
  String toString() {
    return 'ApplicationFailure.incompleteApplication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IncompleteApplication);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidApplication,
    required TResult Function() emptyApplication,
    required TResult Function() incompleteApplication,
    required TResult Function() databaseError,
    required TResult Function() duplicateApplication,
    required TResult Function() noConnection,
    required TResult Function() serverError,
  }) {
    return incompleteApplication();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidApplication,
    TResult Function()? emptyApplication,
    TResult Function()? incompleteApplication,
    TResult Function()? databaseError,
    TResult Function()? duplicateApplication,
    TResult Function()? noConnection,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (incompleteApplication != null) {
      return incompleteApplication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidApplication value) invalidApplication,
    required TResult Function(EmptyApplication value) emptyApplication,
    required TResult Function(IncompleteApplication value)
        incompleteApplication,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(DuplicateApplication value) duplicateApplication,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(ServerError value) serverError,
  }) {
    return incompleteApplication(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidApplication value)? invalidApplication,
    TResult Function(EmptyApplication value)? emptyApplication,
    TResult Function(IncompleteApplication value)? incompleteApplication,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(DuplicateApplication value)? duplicateApplication,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (incompleteApplication != null) {
      return incompleteApplication(this);
    }
    return orElse();
  }
}

abstract class IncompleteApplication implements ApplicationFailure {
  const factory IncompleteApplication() = _$IncompleteApplication;
}

/// @nodoc
abstract class $DatabaseErrorCopyWith<$Res> {
  factory $DatabaseErrorCopyWith(
          DatabaseError value, $Res Function(DatabaseError) then) =
      _$DatabaseErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$DatabaseErrorCopyWithImpl<$Res>
    extends _$ApplicationFailureCopyWithImpl<$Res>
    implements $DatabaseErrorCopyWith<$Res> {
  _$DatabaseErrorCopyWithImpl(
      DatabaseError _value, $Res Function(DatabaseError) _then)
      : super(_value, (v) => _then(v as DatabaseError));

  @override
  DatabaseError get _value => super._value as DatabaseError;
}

/// @nodoc

class _$DatabaseError implements DatabaseError {
  const _$DatabaseError();

  @override
  String toString() {
    return 'ApplicationFailure.databaseError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DatabaseError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidApplication,
    required TResult Function() emptyApplication,
    required TResult Function() incompleteApplication,
    required TResult Function() databaseError,
    required TResult Function() duplicateApplication,
    required TResult Function() noConnection,
    required TResult Function() serverError,
  }) {
    return databaseError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidApplication,
    TResult Function()? emptyApplication,
    TResult Function()? incompleteApplication,
    TResult Function()? databaseError,
    TResult Function()? duplicateApplication,
    TResult Function()? noConnection,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidApplication value) invalidApplication,
    required TResult Function(EmptyApplication value) emptyApplication,
    required TResult Function(IncompleteApplication value)
        incompleteApplication,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(DuplicateApplication value) duplicateApplication,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(ServerError value) serverError,
  }) {
    return databaseError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidApplication value)? invalidApplication,
    TResult Function(EmptyApplication value)? emptyApplication,
    TResult Function(IncompleteApplication value)? incompleteApplication,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(DuplicateApplication value)? duplicateApplication,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (databaseError != null) {
      return databaseError(this);
    }
    return orElse();
  }
}

abstract class DatabaseError implements ApplicationFailure {
  const factory DatabaseError() = _$DatabaseError;
}

/// @nodoc
abstract class $DuplicateApplicationCopyWith<$Res> {
  factory $DuplicateApplicationCopyWith(DuplicateApplication value,
          $Res Function(DuplicateApplication) then) =
      _$DuplicateApplicationCopyWithImpl<$Res>;
}

/// @nodoc
class _$DuplicateApplicationCopyWithImpl<$Res>
    extends _$ApplicationFailureCopyWithImpl<$Res>
    implements $DuplicateApplicationCopyWith<$Res> {
  _$DuplicateApplicationCopyWithImpl(
      DuplicateApplication _value, $Res Function(DuplicateApplication) _then)
      : super(_value, (v) => _then(v as DuplicateApplication));

  @override
  DuplicateApplication get _value => super._value as DuplicateApplication;
}

/// @nodoc

class _$DuplicateApplication implements DuplicateApplication {
  const _$DuplicateApplication();

  @override
  String toString() {
    return 'ApplicationFailure.duplicateApplication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DuplicateApplication);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidApplication,
    required TResult Function() emptyApplication,
    required TResult Function() incompleteApplication,
    required TResult Function() databaseError,
    required TResult Function() duplicateApplication,
    required TResult Function() noConnection,
    required TResult Function() serverError,
  }) {
    return duplicateApplication();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidApplication,
    TResult Function()? emptyApplication,
    TResult Function()? incompleteApplication,
    TResult Function()? databaseError,
    TResult Function()? duplicateApplication,
    TResult Function()? noConnection,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (duplicateApplication != null) {
      return duplicateApplication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidApplication value) invalidApplication,
    required TResult Function(EmptyApplication value) emptyApplication,
    required TResult Function(IncompleteApplication value)
        incompleteApplication,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(DuplicateApplication value) duplicateApplication,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(ServerError value) serverError,
  }) {
    return duplicateApplication(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidApplication value)? invalidApplication,
    TResult Function(EmptyApplication value)? emptyApplication,
    TResult Function(IncompleteApplication value)? incompleteApplication,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(DuplicateApplication value)? duplicateApplication,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (duplicateApplication != null) {
      return duplicateApplication(this);
    }
    return orElse();
  }
}

abstract class DuplicateApplication implements ApplicationFailure {
  const factory DuplicateApplication() = _$DuplicateApplication;
}

/// @nodoc
abstract class $NoConnectionCopyWith<$Res> {
  factory $NoConnectionCopyWith(
          NoConnection value, $Res Function(NoConnection) then) =
      _$NoConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoConnectionCopyWithImpl<$Res>
    extends _$ApplicationFailureCopyWithImpl<$Res>
    implements $NoConnectionCopyWith<$Res> {
  _$NoConnectionCopyWithImpl(
      NoConnection _value, $Res Function(NoConnection) _then)
      : super(_value, (v) => _then(v as NoConnection));

  @override
  NoConnection get _value => super._value as NoConnection;
}

/// @nodoc

class _$NoConnection implements NoConnection {
  const _$NoConnection();

  @override
  String toString() {
    return 'ApplicationFailure.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidApplication,
    required TResult Function() emptyApplication,
    required TResult Function() incompleteApplication,
    required TResult Function() databaseError,
    required TResult Function() duplicateApplication,
    required TResult Function() noConnection,
    required TResult Function() serverError,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidApplication,
    TResult Function()? emptyApplication,
    TResult Function()? incompleteApplication,
    TResult Function()? databaseError,
    TResult Function()? duplicateApplication,
    TResult Function()? noConnection,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidApplication value) invalidApplication,
    required TResult Function(EmptyApplication value) emptyApplication,
    required TResult Function(IncompleteApplication value)
        incompleteApplication,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(DuplicateApplication value) duplicateApplication,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(ServerError value) serverError,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidApplication value)? invalidApplication,
    TResult Function(EmptyApplication value)? emptyApplication,
    TResult Function(IncompleteApplication value)? incompleteApplication,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(DuplicateApplication value)? duplicateApplication,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class NoConnection implements ApplicationFailure {
  const factory NoConnection() = _$NoConnection;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    extends _$ApplicationFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'ApplicationFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidApplication,
    required TResult Function() emptyApplication,
    required TResult Function() incompleteApplication,
    required TResult Function() databaseError,
    required TResult Function() duplicateApplication,
    required TResult Function() noConnection,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidApplication,
    TResult Function()? emptyApplication,
    TResult Function()? incompleteApplication,
    TResult Function()? databaseError,
    TResult Function()? duplicateApplication,
    TResult Function()? noConnection,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidApplication value) invalidApplication,
    required TResult Function(EmptyApplication value) emptyApplication,
    required TResult Function(IncompleteApplication value)
        incompleteApplication,
    required TResult Function(DatabaseError value) databaseError,
    required TResult Function(DuplicateApplication value) duplicateApplication,
    required TResult Function(NoConnection value) noConnection,
    required TResult Function(ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidApplication value)? invalidApplication,
    TResult Function(EmptyApplication value)? emptyApplication,
    TResult Function(IncompleteApplication value)? incompleteApplication,
    TResult Function(DatabaseError value)? databaseError,
    TResult Function(DuplicateApplication value)? duplicateApplication,
    TResult Function(NoConnection value)? noConnection,
    TResult Function(ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements ApplicationFailure {
  const factory ServerError() = _$ServerError;
}

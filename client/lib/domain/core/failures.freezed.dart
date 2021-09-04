// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  Empty<T> empty<T>({required T failedValue}) {
    return Empty<T>(
      failedValue: failedValue,
    );
  }

  InvalidEmail<T> invalidEmail<T>({required T failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

  ShortPassword<T> shortPassword<T>({required T failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

  InvalidPassword<T> invalidPassword<T>({required T failedValue}) {
    return InvalidPassword<T>(
      failedValue: failedValue,
    );
  }

  ExceedingLength<T> exceedingLength<T>({required T failedValue}) {
    return ExceedingLength<T>(
      failedValue: failedValue,
    );
  }

  InvalidApplication<T> invalidApplication<T>({required T failedValue}) {
    return InvalidApplication<T>(
      failedValue: failedValue,
    );
  }

  EmptyApplication<T> emptyApplication<T>({required T failedValue}) {
    return EmptyApplication<T>(
      failedValue: failedValue,
    );
  }

  IncompleteApplication<T> incompleteApplication<T>({required T failedValue}) {
    return IncompleteApplication<T>(
      failedValue: failedValue,
    );
  }

  GeneralError<T> generalError<T>() {
    return GeneralError<T>();
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) exceedingLength,
    required TResult Function(T failedValue) invalidApplication,
    required TResult Function(T failedValue) emptyApplication,
    required TResult Function(T failedValue) incompleteApplication,
    required TResult Function() generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? exceedingLength,
    TResult Function(T failedValue)? invalidApplication,
    TResult Function(T failedValue)? emptyApplication,
    TResult Function(T failedValue)? incompleteApplication,
    TResult Function()? generalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidApplication<T> value) invalidApplication,
    required TResult Function(EmptyApplication<T> value) emptyApplication,
    required TResult Function(IncompleteApplication<T> value)
        incompleteApplication,
    required TResult Function(GeneralError<T> value) generalError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidApplication<T> value)? invalidApplication,
    TResult Function(EmptyApplication<T> value)? emptyApplication,
    TResult Function(IncompleteApplication<T> value)? incompleteApplication,
    TResult Function(GeneralError<T> value)? generalError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $EmptyCopyWith<T, $Res> {
  factory $EmptyCopyWith(Empty<T> value, $Res Function(Empty<T>) then) =
      _$EmptyCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyCopyWith<T, $Res> {
  _$EmptyCopyWithImpl(Empty<T> _value, $Res Function(Empty<T>) _then)
      : super(_value, (v) => _then(v as Empty<T>));

  @override
  Empty<T> get _value => super._value as Empty<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(Empty<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Empty<T> with DiagnosticableTreeMixin implements Empty<T> {
  const _$Empty({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Empty<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      _$EmptyCopyWithImpl<T, Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) exceedingLength,
    required TResult Function(T failedValue) invalidApplication,
    required TResult Function(T failedValue) emptyApplication,
    required TResult Function(T failedValue) incompleteApplication,
    required TResult Function() generalError,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? exceedingLength,
    TResult Function(T failedValue)? invalidApplication,
    TResult Function(T failedValue)? emptyApplication,
    TResult Function(T failedValue)? incompleteApplication,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidApplication<T> value) invalidApplication,
    required TResult Function(EmptyApplication<T> value) emptyApplication,
    required TResult Function(IncompleteApplication<T> value)
        incompleteApplication,
    required TResult Function(GeneralError<T> value) generalError,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidApplication<T> value)? invalidApplication,
    TResult Function(EmptyApplication<T> value)? emptyApplication,
    TResult Function(IncompleteApplication<T> value)? incompleteApplication,
    TResult Function(GeneralError<T> value)? generalError,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<T> implements ValueFailure<T> {
  const factory Empty({required T failedValue}) = _$Empty<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyCopyWith<T, Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<T>
    with DiagnosticableTreeMixin
    implements InvalidEmail<T> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) exceedingLength,
    required TResult Function(T failedValue) invalidApplication,
    required TResult Function(T failedValue) emptyApplication,
    required TResult Function(T failedValue) incompleteApplication,
    required TResult Function() generalError,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? exceedingLength,
    TResult Function(T failedValue)? invalidApplication,
    TResult Function(T failedValue)? emptyApplication,
    TResult Function(T failedValue)? incompleteApplication,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidApplication<T> value) invalidApplication,
    required TResult Function(EmptyApplication<T> value) emptyApplication,
    required TResult Function(IncompleteApplication<T> value)
        incompleteApplication,
    required TResult Function(GeneralError<T> value) generalError,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidApplication<T> value)? invalidApplication,
    TResult Function(EmptyApplication<T> value)? emptyApplication,
    TResult Function(IncompleteApplication<T> value)? incompleteApplication,
    TResult Function(GeneralError<T> value)? generalError,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({required T failedValue}) = _$InvalidEmail<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ShortPassword<T>
    with DiagnosticableTreeMixin
    implements ShortPassword<T> {
  const _$ShortPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.shortPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) exceedingLength,
    required TResult Function(T failedValue) invalidApplication,
    required TResult Function(T failedValue) emptyApplication,
    required TResult Function(T failedValue) incompleteApplication,
    required TResult Function() generalError,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? exceedingLength,
    TResult Function(T failedValue)? invalidApplication,
    TResult Function(T failedValue)? emptyApplication,
    TResult Function(T failedValue)? incompleteApplication,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidApplication<T> value) invalidApplication,
    required TResult Function(EmptyApplication<T> value) emptyApplication,
    required TResult Function(IncompleteApplication<T> value)
        incompleteApplication,
    required TResult Function(GeneralError<T> value) generalError,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidApplication<T> value)? invalidApplication,
    TResult Function(EmptyApplication<T> value)? emptyApplication,
    TResult Function(IncompleteApplication<T> value)? incompleteApplication,
    TResult Function(GeneralError<T> value)? generalError,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({required T failedValue}) = _$ShortPassword<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPasswordCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword<T> _value, $Res Function(InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidPassword<T>));

  @override
  InvalidPassword<T> get _value => super._value as InvalidPassword<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidPassword<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidPassword<T>
    with DiagnosticableTreeMixin
    implements InvalidPassword<T> {
  const _$InvalidPassword({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) exceedingLength,
    required TResult Function(T failedValue) invalidApplication,
    required TResult Function(T failedValue) emptyApplication,
    required TResult Function(T failedValue) incompleteApplication,
    required TResult Function() generalError,
  }) {
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? exceedingLength,
    TResult Function(T failedValue)? invalidApplication,
    TResult Function(T failedValue)? emptyApplication,
    TResult Function(T failedValue)? incompleteApplication,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidApplication<T> value) invalidApplication,
    required TResult Function(EmptyApplication<T> value) emptyApplication,
    required TResult Function(IncompleteApplication<T> value)
        incompleteApplication,
    required TResult Function(GeneralError<T> value) generalError,
  }) {
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidApplication<T> value)? invalidApplication,
    TResult Function(EmptyApplication<T> value)? emptyApplication,
    TResult Function(IncompleteApplication<T> value)? incompleteApplication,
    TResult Function(GeneralError<T> value)? generalError,
    required TResult orElse(),
  }) {
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements ValueFailure<T> {
  const factory InvalidPassword({required T failedValue}) =
      _$InvalidPassword<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceedingLengthCopyWith<T, $Res> {
  factory $ExceedingLengthCopyWith(
          ExceedingLength<T> value, $Res Function(ExceedingLength<T>) then) =
      _$ExceedingLengthCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ExceedingLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ExceedingLengthCopyWith<T, $Res> {
  _$ExceedingLengthCopyWithImpl(
      ExceedingLength<T> _value, $Res Function(ExceedingLength<T>) _then)
      : super(_value, (v) => _then(v as ExceedingLength<T>));

  @override
  ExceedingLength<T> get _value => super._value as ExceedingLength<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(ExceedingLength<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ExceedingLength<T>
    with DiagnosticableTreeMixin
    implements ExceedingLength<T> {
  const _$ExceedingLength({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.exceedingLength'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExceedingLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      _$ExceedingLengthCopyWithImpl<T, ExceedingLength<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) exceedingLength,
    required TResult Function(T failedValue) invalidApplication,
    required TResult Function(T failedValue) emptyApplication,
    required TResult Function(T failedValue) incompleteApplication,
    required TResult Function() generalError,
  }) {
    return exceedingLength(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? exceedingLength,
    TResult Function(T failedValue)? invalidApplication,
    TResult Function(T failedValue)? emptyApplication,
    TResult Function(T failedValue)? incompleteApplication,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidApplication<T> value) invalidApplication,
    required TResult Function(EmptyApplication<T> value) emptyApplication,
    required TResult Function(IncompleteApplication<T> value)
        incompleteApplication,
    required TResult Function(GeneralError<T> value) generalError,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidApplication<T> value)? invalidApplication,
    TResult Function(EmptyApplication<T> value)? emptyApplication,
    TResult Function(IncompleteApplication<T> value)? incompleteApplication,
    TResult Function(GeneralError<T> value)? generalError,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class ExceedingLength<T> implements ValueFailure<T> {
  const factory ExceedingLength({required T failedValue}) =
      _$ExceedingLength<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExceedingLengthCopyWith<T, ExceedingLength<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidApplicationCopyWith<T, $Res> {
  factory $InvalidApplicationCopyWith(InvalidApplication<T> value,
          $Res Function(InvalidApplication<T>) then) =
      _$InvalidApplicationCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidApplicationCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidApplicationCopyWith<T, $Res> {
  _$InvalidApplicationCopyWithImpl(
      InvalidApplication<T> _value, $Res Function(InvalidApplication<T>) _then)
      : super(_value, (v) => _then(v as InvalidApplication<T>));

  @override
  InvalidApplication<T> get _value => super._value as InvalidApplication<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidApplication<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidApplication<T>
    with DiagnosticableTreeMixin
    implements InvalidApplication<T> {
  const _$InvalidApplication({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.invalidApplication(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.invalidApplication'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidApplication<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidApplicationCopyWith<T, InvalidApplication<T>> get copyWith =>
      _$InvalidApplicationCopyWithImpl<T, InvalidApplication<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) exceedingLength,
    required TResult Function(T failedValue) invalidApplication,
    required TResult Function(T failedValue) emptyApplication,
    required TResult Function(T failedValue) incompleteApplication,
    required TResult Function() generalError,
  }) {
    return invalidApplication(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? exceedingLength,
    TResult Function(T failedValue)? invalidApplication,
    TResult Function(T failedValue)? emptyApplication,
    TResult Function(T failedValue)? incompleteApplication,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (invalidApplication != null) {
      return invalidApplication(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidApplication<T> value) invalidApplication,
    required TResult Function(EmptyApplication<T> value) emptyApplication,
    required TResult Function(IncompleteApplication<T> value)
        incompleteApplication,
    required TResult Function(GeneralError<T> value) generalError,
  }) {
    return invalidApplication(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidApplication<T> value)? invalidApplication,
    TResult Function(EmptyApplication<T> value)? emptyApplication,
    TResult Function(IncompleteApplication<T> value)? incompleteApplication,
    TResult Function(GeneralError<T> value)? generalError,
    required TResult orElse(),
  }) {
    if (invalidApplication != null) {
      return invalidApplication(this);
    }
    return orElse();
  }
}

abstract class InvalidApplication<T> implements ValueFailure<T> {
  const factory InvalidApplication({required T failedValue}) =
      _$InvalidApplication<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvalidApplicationCopyWith<T, InvalidApplication<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyApplicationCopyWith<T, $Res> {
  factory $EmptyApplicationCopyWith(
          EmptyApplication<T> value, $Res Function(EmptyApplication<T>) then) =
      _$EmptyApplicationCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$EmptyApplicationCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $EmptyApplicationCopyWith<T, $Res> {
  _$EmptyApplicationCopyWithImpl(
      EmptyApplication<T> _value, $Res Function(EmptyApplication<T>) _then)
      : super(_value, (v) => _then(v as EmptyApplication<T>));

  @override
  EmptyApplication<T> get _value => super._value as EmptyApplication<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(EmptyApplication<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyApplication<T>
    with DiagnosticableTreeMixin
    implements EmptyApplication<T> {
  const _$EmptyApplication({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.emptyApplication(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.emptyApplication'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyApplication<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $EmptyApplicationCopyWith<T, EmptyApplication<T>> get copyWith =>
      _$EmptyApplicationCopyWithImpl<T, EmptyApplication<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) exceedingLength,
    required TResult Function(T failedValue) invalidApplication,
    required TResult Function(T failedValue) emptyApplication,
    required TResult Function(T failedValue) incompleteApplication,
    required TResult Function() generalError,
  }) {
    return emptyApplication(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? exceedingLength,
    TResult Function(T failedValue)? invalidApplication,
    TResult Function(T failedValue)? emptyApplication,
    TResult Function(T failedValue)? incompleteApplication,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (emptyApplication != null) {
      return emptyApplication(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidApplication<T> value) invalidApplication,
    required TResult Function(EmptyApplication<T> value) emptyApplication,
    required TResult Function(IncompleteApplication<T> value)
        incompleteApplication,
    required TResult Function(GeneralError<T> value) generalError,
  }) {
    return emptyApplication(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidApplication<T> value)? invalidApplication,
    TResult Function(EmptyApplication<T> value)? emptyApplication,
    TResult Function(IncompleteApplication<T> value)? incompleteApplication,
    TResult Function(GeneralError<T> value)? generalError,
    required TResult orElse(),
  }) {
    if (emptyApplication != null) {
      return emptyApplication(this);
    }
    return orElse();
  }
}

abstract class EmptyApplication<T> implements ValueFailure<T> {
  const factory EmptyApplication({required T failedValue}) =
      _$EmptyApplication<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmptyApplicationCopyWith<T, EmptyApplication<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncompleteApplicationCopyWith<T, $Res> {
  factory $IncompleteApplicationCopyWith(IncompleteApplication<T> value,
          $Res Function(IncompleteApplication<T>) then) =
      _$IncompleteApplicationCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$IncompleteApplicationCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $IncompleteApplicationCopyWith<T, $Res> {
  _$IncompleteApplicationCopyWithImpl(IncompleteApplication<T> _value,
      $Res Function(IncompleteApplication<T>) _then)
      : super(_value, (v) => _then(v as IncompleteApplication<T>));

  @override
  IncompleteApplication<T> get _value =>
      super._value as IncompleteApplication<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(IncompleteApplication<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$IncompleteApplication<T>
    with DiagnosticableTreeMixin
    implements IncompleteApplication<T> {
  const _$IncompleteApplication({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.incompleteApplication(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ValueFailure<$T>.incompleteApplication'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IncompleteApplication<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $IncompleteApplicationCopyWith<T, IncompleteApplication<T>> get copyWith =>
      _$IncompleteApplicationCopyWithImpl<T, IncompleteApplication<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) exceedingLength,
    required TResult Function(T failedValue) invalidApplication,
    required TResult Function(T failedValue) emptyApplication,
    required TResult Function(T failedValue) incompleteApplication,
    required TResult Function() generalError,
  }) {
    return incompleteApplication(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? exceedingLength,
    TResult Function(T failedValue)? invalidApplication,
    TResult Function(T failedValue)? emptyApplication,
    TResult Function(T failedValue)? incompleteApplication,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (incompleteApplication != null) {
      return incompleteApplication(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidApplication<T> value) invalidApplication,
    required TResult Function(EmptyApplication<T> value) emptyApplication,
    required TResult Function(IncompleteApplication<T> value)
        incompleteApplication,
    required TResult Function(GeneralError<T> value) generalError,
  }) {
    return incompleteApplication(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidApplication<T> value)? invalidApplication,
    TResult Function(EmptyApplication<T> value)? emptyApplication,
    TResult Function(IncompleteApplication<T> value)? incompleteApplication,
    TResult Function(GeneralError<T> value)? generalError,
    required TResult orElse(),
  }) {
    if (incompleteApplication != null) {
      return incompleteApplication(this);
    }
    return orElse();
  }
}

abstract class IncompleteApplication<T> implements ValueFailure<T> {
  const factory IncompleteApplication({required T failedValue}) =
      _$IncompleteApplication<T>;

  T get failedValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncompleteApplicationCopyWith<T, IncompleteApplication<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralErrorCopyWith<T, $Res> {
  factory $GeneralErrorCopyWith(
          GeneralError<T> value, $Res Function(GeneralError<T>) then) =
      _$GeneralErrorCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$GeneralErrorCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $GeneralErrorCopyWith<T, $Res> {
  _$GeneralErrorCopyWithImpl(
      GeneralError<T> _value, $Res Function(GeneralError<T>) _then)
      : super(_value, (v) => _then(v as GeneralError<T>));

  @override
  GeneralError<T> get _value => super._value as GeneralError<T>;
}

/// @nodoc

class _$GeneralError<T>
    with DiagnosticableTreeMixin
    implements GeneralError<T> {
  const _$GeneralError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$T>.generalError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$T>.generalError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is GeneralError<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalidEmail,
    required TResult Function(T failedValue) shortPassword,
    required TResult Function(T failedValue) invalidPassword,
    required TResult Function(T failedValue) exceedingLength,
    required TResult Function(T failedValue) invalidApplication,
    required TResult Function(T failedValue) emptyApplication,
    required TResult Function(T failedValue) incompleteApplication,
    required TResult Function() generalError,
  }) {
    return generalError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalidEmail,
    TResult Function(T failedValue)? shortPassword,
    TResult Function(T failedValue)? invalidPassword,
    TResult Function(T failedValue)? exceedingLength,
    TResult Function(T failedValue)? invalidApplication,
    TResult Function(T failedValue)? emptyApplication,
    TResult Function(T failedValue)? incompleteApplication,
    TResult Function()? generalError,
    required TResult orElse(),
  }) {
    if (generalError != null) {
      return generalError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Empty<T> value) empty,
    required TResult Function(InvalidEmail<T> value) invalidEmail,
    required TResult Function(ShortPassword<T> value) shortPassword,
    required TResult Function(InvalidPassword<T> value) invalidPassword,
    required TResult Function(ExceedingLength<T> value) exceedingLength,
    required TResult Function(InvalidApplication<T> value) invalidApplication,
    required TResult Function(EmptyApplication<T> value) emptyApplication,
    required TResult Function(IncompleteApplication<T> value)
        incompleteApplication,
    required TResult Function(GeneralError<T> value) generalError,
  }) {
    return generalError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Empty<T> value)? empty,
    TResult Function(InvalidEmail<T> value)? invalidEmail,
    TResult Function(ShortPassword<T> value)? shortPassword,
    TResult Function(InvalidPassword<T> value)? invalidPassword,
    TResult Function(ExceedingLength<T> value)? exceedingLength,
    TResult Function(InvalidApplication<T> value)? invalidApplication,
    TResult Function(EmptyApplication<T> value)? emptyApplication,
    TResult Function(IncompleteApplication<T> value)? incompleteApplication,
    TResult Function(GeneralError<T> value)? generalError,
    required TResult orElse(),
  }) {
    if (generalError != null) {
      return generalError(this);
    }
    return orElse();
  }
}

abstract class GeneralError<T> implements ValueFailure<T> {
  const factory GeneralError() = _$GeneralError<T>;
}

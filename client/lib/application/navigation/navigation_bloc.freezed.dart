// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigationEventTearOff {
  const _$NavigationEventTearOff();

  _ChangePage changePage({required int pageIndexNumber}) {
    return _ChangePage(
      pageIndexNumber: pageIndexNumber,
    );
  }
}

/// @nodoc
const $NavigationEvent = _$NavigationEventTearOff();

/// @nodoc
mixin _$NavigationEvent {
  int get pageIndexNumber => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndexNumber) changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndexNumber)? changePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePage value) changePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationEventCopyWith<NavigationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res>;
  $Res call({int pageIndexNumber});
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  final NavigationEvent _value;
  // ignore: unused_field
  final $Res Function(NavigationEvent) _then;

  @override
  $Res call({
    Object? pageIndexNumber = freezed,
  }) {
    return _then(_value.copyWith(
      pageIndexNumber: pageIndexNumber == freezed
          ? _value.pageIndexNumber
          : pageIndexNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ChangePageCopyWith<$Res>
    implements $NavigationEventCopyWith<$Res> {
  factory _$ChangePageCopyWith(
          _ChangePage value, $Res Function(_ChangePage) then) =
      __$ChangePageCopyWithImpl<$Res>;
  @override
  $Res call({int pageIndexNumber});
}

/// @nodoc
class __$ChangePageCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res>
    implements _$ChangePageCopyWith<$Res> {
  __$ChangePageCopyWithImpl(
      _ChangePage _value, $Res Function(_ChangePage) _then)
      : super(_value, (v) => _then(v as _ChangePage));

  @override
  _ChangePage get _value => super._value as _ChangePage;

  @override
  $Res call({
    Object? pageIndexNumber = freezed,
  }) {
    return _then(_ChangePage(
      pageIndexNumber: pageIndexNumber == freezed
          ? _value.pageIndexNumber
          : pageIndexNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChangePage implements _ChangePage {
  const _$_ChangePage({required this.pageIndexNumber});

  @override
  final int pageIndexNumber;

  @override
  String toString() {
    return 'NavigationEvent.changePage(pageIndexNumber: $pageIndexNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangePage &&
            (identical(other.pageIndexNumber, pageIndexNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndexNumber, pageIndexNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageIndexNumber);

  @JsonKey(ignore: true)
  @override
  _$ChangePageCopyWith<_ChangePage> get copyWith =>
      __$ChangePageCopyWithImpl<_ChangePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndexNumber) changePage,
  }) {
    return changePage(pageIndexNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndexNumber)? changePage,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(pageIndexNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePage value) changePage,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class _ChangePage implements NavigationEvent {
  const factory _ChangePage({required int pageIndexNumber}) = _$_ChangePage;

  @override
  int get pageIndexNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChangePageCopyWith<_ChangePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NavigationStateTearOff {
  const _$NavigationStateTearOff();

  _NavigationState call({required int pageIndexNumber}) {
    return _NavigationState(
      pageIndexNumber: pageIndexNumber,
    );
  }
}

/// @nodoc
const $NavigationState = _$NavigationStateTearOff();

/// @nodoc
mixin _$NavigationState {
  int get pageIndexNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res>;
  $Res call({int pageIndexNumber});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  final NavigationState _value;
  // ignore: unused_field
  final $Res Function(NavigationState) _then;

  @override
  $Res call({
    Object? pageIndexNumber = freezed,
  }) {
    return _then(_value.copyWith(
      pageIndexNumber: pageIndexNumber == freezed
          ? _value.pageIndexNumber
          : pageIndexNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$NavigationStateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$NavigationStateCopyWith(
          _NavigationState value, $Res Function(_NavigationState) then) =
      __$NavigationStateCopyWithImpl<$Res>;
  @override
  $Res call({int pageIndexNumber});
}

/// @nodoc
class __$NavigationStateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res>
    implements _$NavigationStateCopyWith<$Res> {
  __$NavigationStateCopyWithImpl(
      _NavigationState _value, $Res Function(_NavigationState) _then)
      : super(_value, (v) => _then(v as _NavigationState));

  @override
  _NavigationState get _value => super._value as _NavigationState;

  @override
  $Res call({
    Object? pageIndexNumber = freezed,
  }) {
    return _then(_NavigationState(
      pageIndexNumber: pageIndexNumber == freezed
          ? _value.pageIndexNumber
          : pageIndexNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_NavigationState implements _NavigationState {
  const _$_NavigationState({required this.pageIndexNumber});

  @override
  final int pageIndexNumber;

  @override
  String toString() {
    return 'NavigationState(pageIndexNumber: $pageIndexNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NavigationState &&
            (identical(other.pageIndexNumber, pageIndexNumber) ||
                const DeepCollectionEquality()
                    .equals(other.pageIndexNumber, pageIndexNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pageIndexNumber);

  @JsonKey(ignore: true)
  @override
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      __$NavigationStateCopyWithImpl<_NavigationState>(this, _$identity);
}

abstract class _NavigationState implements NavigationState {
  const factory _NavigationState({required int pageIndexNumber}) =
      _$_NavigationState;

  @override
  int get pageIndexNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NavigationStateCopyWith<_NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

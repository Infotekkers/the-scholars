// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'applications_overview_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApplicationsOverviewActorEventTearOff {
  const _$ApplicationsOverviewActorEventTearOff();

  _Downloaded downloaded(ApplicationHighlight applicationHighlight) {
    return _Downloaded(
      applicationHighlight,
    );
  }

  _Accepted accepted(ApplicationHighlight applicationHighlight) {
    return _Accepted(
      applicationHighlight,
    );
  }

  _Rejected rejected(ApplicationHighlight applicationHighlight) {
    return _Rejected(
      applicationHighlight,
    );
  }
}

/// @nodoc
const $ApplicationsOverviewActorEvent =
    _$ApplicationsOverviewActorEventTearOff();

/// @nodoc
mixin _$ApplicationsOverviewActorEvent {
  ApplicationHighlight get applicationHighlight =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplicationHighlight applicationHighlight)
        downloaded,
    required TResult Function(ApplicationHighlight applicationHighlight)
        accepted,
    required TResult Function(ApplicationHighlight applicationHighlight)
        rejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplicationHighlight applicationHighlight)? downloaded,
    TResult Function(ApplicationHighlight applicationHighlight)? accepted,
    TResult Function(ApplicationHighlight applicationHighlight)? rejected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_Accepted value) accepted,
    required TResult Function(_Rejected value) rejected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Accepted value)? accepted,
    TResult Function(_Rejected value)? rejected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicationsOverviewActorEventCopyWith<ApplicationsOverviewActorEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationsOverviewActorEventCopyWith<$Res> {
  factory $ApplicationsOverviewActorEventCopyWith(
          ApplicationsOverviewActorEvent value,
          $Res Function(ApplicationsOverviewActorEvent) then) =
      _$ApplicationsOverviewActorEventCopyWithImpl<$Res>;
  $Res call({ApplicationHighlight applicationHighlight});

  $ApplicationHighlightCopyWith<$Res> get applicationHighlight;
}

/// @nodoc
class _$ApplicationsOverviewActorEventCopyWithImpl<$Res>
    implements $ApplicationsOverviewActorEventCopyWith<$Res> {
  _$ApplicationsOverviewActorEventCopyWithImpl(this._value, this._then);

  final ApplicationsOverviewActorEvent _value;
  // ignore: unused_field
  final $Res Function(ApplicationsOverviewActorEvent) _then;

  @override
  $Res call({
    Object? applicationHighlight = freezed,
  }) {
    return _then(_value.copyWith(
      applicationHighlight: applicationHighlight == freezed
          ? _value.applicationHighlight
          : applicationHighlight // ignore: cast_nullable_to_non_nullable
              as ApplicationHighlight,
    ));
  }

  @override
  $ApplicationHighlightCopyWith<$Res> get applicationHighlight {
    return $ApplicationHighlightCopyWith<$Res>(_value.applicationHighlight,
        (value) {
      return _then(_value.copyWith(applicationHighlight: value));
    });
  }
}

/// @nodoc
abstract class _$DownloadedCopyWith<$Res>
    implements $ApplicationsOverviewActorEventCopyWith<$Res> {
  factory _$DownloadedCopyWith(
          _Downloaded value, $Res Function(_Downloaded) then) =
      __$DownloadedCopyWithImpl<$Res>;
  @override
  $Res call({ApplicationHighlight applicationHighlight});

  @override
  $ApplicationHighlightCopyWith<$Res> get applicationHighlight;
}

/// @nodoc
class __$DownloadedCopyWithImpl<$Res>
    extends _$ApplicationsOverviewActorEventCopyWithImpl<$Res>
    implements _$DownloadedCopyWith<$Res> {
  __$DownloadedCopyWithImpl(
      _Downloaded _value, $Res Function(_Downloaded) _then)
      : super(_value, (v) => _then(v as _Downloaded));

  @override
  _Downloaded get _value => super._value as _Downloaded;

  @override
  $Res call({
    Object? applicationHighlight = freezed,
  }) {
    return _then(_Downloaded(
      applicationHighlight == freezed
          ? _value.applicationHighlight
          : applicationHighlight // ignore: cast_nullable_to_non_nullable
              as ApplicationHighlight,
    ));
  }
}

/// @nodoc

class _$_Downloaded implements _Downloaded {
  const _$_Downloaded(this.applicationHighlight);

  @override
  final ApplicationHighlight applicationHighlight;

  @override
  String toString() {
    return 'ApplicationsOverviewActorEvent.downloaded(applicationHighlight: $applicationHighlight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Downloaded &&
            (identical(other.applicationHighlight, applicationHighlight) ||
                const DeepCollectionEquality()
                    .equals(other.applicationHighlight, applicationHighlight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(applicationHighlight);

  @JsonKey(ignore: true)
  @override
  _$DownloadedCopyWith<_Downloaded> get copyWith =>
      __$DownloadedCopyWithImpl<_Downloaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplicationHighlight applicationHighlight)
        downloaded,
    required TResult Function(ApplicationHighlight applicationHighlight)
        accepted,
    required TResult Function(ApplicationHighlight applicationHighlight)
        rejected,
  }) {
    return downloaded(applicationHighlight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplicationHighlight applicationHighlight)? downloaded,
    TResult Function(ApplicationHighlight applicationHighlight)? accepted,
    TResult Function(ApplicationHighlight applicationHighlight)? rejected,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(applicationHighlight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_Accepted value) accepted,
    required TResult Function(_Rejected value) rejected,
  }) {
    return downloaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Accepted value)? accepted,
    TResult Function(_Rejected value)? rejected,
    required TResult orElse(),
  }) {
    if (downloaded != null) {
      return downloaded(this);
    }
    return orElse();
  }
}

abstract class _Downloaded implements ApplicationsOverviewActorEvent {
  const factory _Downloaded(ApplicationHighlight applicationHighlight) =
      _$_Downloaded;

  @override
  ApplicationHighlight get applicationHighlight =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DownloadedCopyWith<_Downloaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AcceptedCopyWith<$Res>
    implements $ApplicationsOverviewActorEventCopyWith<$Res> {
  factory _$AcceptedCopyWith(_Accepted value, $Res Function(_Accepted) then) =
      __$AcceptedCopyWithImpl<$Res>;
  @override
  $Res call({ApplicationHighlight applicationHighlight});

  @override
  $ApplicationHighlightCopyWith<$Res> get applicationHighlight;
}

/// @nodoc
class __$AcceptedCopyWithImpl<$Res>
    extends _$ApplicationsOverviewActorEventCopyWithImpl<$Res>
    implements _$AcceptedCopyWith<$Res> {
  __$AcceptedCopyWithImpl(_Accepted _value, $Res Function(_Accepted) _then)
      : super(_value, (v) => _then(v as _Accepted));

  @override
  _Accepted get _value => super._value as _Accepted;

  @override
  $Res call({
    Object? applicationHighlight = freezed,
  }) {
    return _then(_Accepted(
      applicationHighlight == freezed
          ? _value.applicationHighlight
          : applicationHighlight // ignore: cast_nullable_to_non_nullable
              as ApplicationHighlight,
    ));
  }
}

/// @nodoc

class _$_Accepted implements _Accepted {
  const _$_Accepted(this.applicationHighlight);

  @override
  final ApplicationHighlight applicationHighlight;

  @override
  String toString() {
    return 'ApplicationsOverviewActorEvent.accepted(applicationHighlight: $applicationHighlight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Accepted &&
            (identical(other.applicationHighlight, applicationHighlight) ||
                const DeepCollectionEquality()
                    .equals(other.applicationHighlight, applicationHighlight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(applicationHighlight);

  @JsonKey(ignore: true)
  @override
  _$AcceptedCopyWith<_Accepted> get copyWith =>
      __$AcceptedCopyWithImpl<_Accepted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplicationHighlight applicationHighlight)
        downloaded,
    required TResult Function(ApplicationHighlight applicationHighlight)
        accepted,
    required TResult Function(ApplicationHighlight applicationHighlight)
        rejected,
  }) {
    return accepted(applicationHighlight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplicationHighlight applicationHighlight)? downloaded,
    TResult Function(ApplicationHighlight applicationHighlight)? accepted,
    TResult Function(ApplicationHighlight applicationHighlight)? rejected,
    required TResult orElse(),
  }) {
    if (accepted != null) {
      return accepted(applicationHighlight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_Accepted value) accepted,
    required TResult Function(_Rejected value) rejected,
  }) {
    return accepted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Accepted value)? accepted,
    TResult Function(_Rejected value)? rejected,
    required TResult orElse(),
  }) {
    if (accepted != null) {
      return accepted(this);
    }
    return orElse();
  }
}

abstract class _Accepted implements ApplicationsOverviewActorEvent {
  const factory _Accepted(ApplicationHighlight applicationHighlight) =
      _$_Accepted;

  @override
  ApplicationHighlight get applicationHighlight =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AcceptedCopyWith<_Accepted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RejectedCopyWith<$Res>
    implements $ApplicationsOverviewActorEventCopyWith<$Res> {
  factory _$RejectedCopyWith(_Rejected value, $Res Function(_Rejected) then) =
      __$RejectedCopyWithImpl<$Res>;
  @override
  $Res call({ApplicationHighlight applicationHighlight});

  @override
  $ApplicationHighlightCopyWith<$Res> get applicationHighlight;
}

/// @nodoc
class __$RejectedCopyWithImpl<$Res>
    extends _$ApplicationsOverviewActorEventCopyWithImpl<$Res>
    implements _$RejectedCopyWith<$Res> {
  __$RejectedCopyWithImpl(_Rejected _value, $Res Function(_Rejected) _then)
      : super(_value, (v) => _then(v as _Rejected));

  @override
  _Rejected get _value => super._value as _Rejected;

  @override
  $Res call({
    Object? applicationHighlight = freezed,
  }) {
    return _then(_Rejected(
      applicationHighlight == freezed
          ? _value.applicationHighlight
          : applicationHighlight // ignore: cast_nullable_to_non_nullable
              as ApplicationHighlight,
    ));
  }
}

/// @nodoc

class _$_Rejected implements _Rejected {
  const _$_Rejected(this.applicationHighlight);

  @override
  final ApplicationHighlight applicationHighlight;

  @override
  String toString() {
    return 'ApplicationsOverviewActorEvent.rejected(applicationHighlight: $applicationHighlight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Rejected &&
            (identical(other.applicationHighlight, applicationHighlight) ||
                const DeepCollectionEquality()
                    .equals(other.applicationHighlight, applicationHighlight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(applicationHighlight);

  @JsonKey(ignore: true)
  @override
  _$RejectedCopyWith<_Rejected> get copyWith =>
      __$RejectedCopyWithImpl<_Rejected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApplicationHighlight applicationHighlight)
        downloaded,
    required TResult Function(ApplicationHighlight applicationHighlight)
        accepted,
    required TResult Function(ApplicationHighlight applicationHighlight)
        rejected,
  }) {
    return rejected(applicationHighlight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApplicationHighlight applicationHighlight)? downloaded,
    TResult Function(ApplicationHighlight applicationHighlight)? accepted,
    TResult Function(ApplicationHighlight applicationHighlight)? rejected,
    required TResult orElse(),
  }) {
    if (rejected != null) {
      return rejected(applicationHighlight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Downloaded value) downloaded,
    required TResult Function(_Accepted value) accepted,
    required TResult Function(_Rejected value) rejected,
  }) {
    return rejected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Downloaded value)? downloaded,
    TResult Function(_Accepted value)? accepted,
    TResult Function(_Rejected value)? rejected,
    required TResult orElse(),
  }) {
    if (rejected != null) {
      return rejected(this);
    }
    return orElse();
  }
}

abstract class _Rejected implements ApplicationsOverviewActorEvent {
  const factory _Rejected(ApplicationHighlight applicationHighlight) =
      _$_Rejected;

  @override
  ApplicationHighlight get applicationHighlight =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RejectedCopyWith<_Rejected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ApplicationsOverviewActorStateTearOff {
  const _$ApplicationsOverviewActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _ActionSuccess actionSuccess() {
    return const _ActionSuccess();
  }

  _ActionFailure actionFailure(ApplicationFailure applicationFailure) {
    return _ActionFailure(
      applicationFailure,
    );
  }
}

/// @nodoc
const $ApplicationsOverviewActorState =
    _$ApplicationsOverviewActorStateTearOff();

/// @nodoc
mixin _$ApplicationsOverviewActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(ApplicationFailure applicationFailure)
        actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(ApplicationFailure applicationFailure)? actionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicationsOverviewActorStateCopyWith<$Res> {
  factory $ApplicationsOverviewActorStateCopyWith(
          ApplicationsOverviewActorState value,
          $Res Function(ApplicationsOverviewActorState) then) =
      _$ApplicationsOverviewActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApplicationsOverviewActorStateCopyWithImpl<$Res>
    implements $ApplicationsOverviewActorStateCopyWith<$Res> {
  _$ApplicationsOverviewActorStateCopyWithImpl(this._value, this._then);

  final ApplicationsOverviewActorState _value;
  // ignore: unused_field
  final $Res Function(ApplicationsOverviewActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ApplicationsOverviewActorStateCopyWithImpl<$Res>
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
    return 'ApplicationsOverviewActorState.initial()';
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
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(ApplicationFailure applicationFailure)
        actionFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(ApplicationFailure applicationFailure)? actionFailure,
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
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ApplicationsOverviewActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$ApplicationsOverviewActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc

class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'ApplicationsOverviewActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(ApplicationFailure applicationFailure)
        actionFailure,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(ApplicationFailure applicationFailure)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ApplicationsOverviewActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$ActionSuccessCopyWith<$Res> {
  factory _$ActionSuccessCopyWith(
          _ActionSuccess value, $Res Function(_ActionSuccess) then) =
      __$ActionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionSuccessCopyWithImpl<$Res>
    extends _$ApplicationsOverviewActorStateCopyWithImpl<$Res>
    implements _$ActionSuccessCopyWith<$Res> {
  __$ActionSuccessCopyWithImpl(
      _ActionSuccess _value, $Res Function(_ActionSuccess) _then)
      : super(_value, (v) => _then(v as _ActionSuccess));

  @override
  _ActionSuccess get _value => super._value as _ActionSuccess;
}

/// @nodoc

class _$_ActionSuccess implements _ActionSuccess {
  const _$_ActionSuccess();

  @override
  String toString() {
    return 'ApplicationsOverviewActorState.actionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(ApplicationFailure applicationFailure)
        actionFailure,
  }) {
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(ApplicationFailure applicationFailure)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _ActionSuccess implements ApplicationsOverviewActorState {
  const factory _ActionSuccess() = _$_ActionSuccess;
}

/// @nodoc
abstract class _$ActionFailureCopyWith<$Res> {
  factory _$ActionFailureCopyWith(
          _ActionFailure value, $Res Function(_ActionFailure) then) =
      __$ActionFailureCopyWithImpl<$Res>;
  $Res call({ApplicationFailure applicationFailure});

  $ApplicationFailureCopyWith<$Res> get applicationFailure;
}

/// @nodoc
class __$ActionFailureCopyWithImpl<$Res>
    extends _$ApplicationsOverviewActorStateCopyWithImpl<$Res>
    implements _$ActionFailureCopyWith<$Res> {
  __$ActionFailureCopyWithImpl(
      _ActionFailure _value, $Res Function(_ActionFailure) _then)
      : super(_value, (v) => _then(v as _ActionFailure));

  @override
  _ActionFailure get _value => super._value as _ActionFailure;

  @override
  $Res call({
    Object? applicationFailure = freezed,
  }) {
    return _then(_ActionFailure(
      applicationFailure == freezed
          ? _value.applicationFailure
          : applicationFailure // ignore: cast_nullable_to_non_nullable
              as ApplicationFailure,
    ));
  }

  @override
  $ApplicationFailureCopyWith<$Res> get applicationFailure {
    return $ApplicationFailureCopyWith<$Res>(_value.applicationFailure,
        (value) {
      return _then(_value.copyWith(applicationFailure: value));
    });
  }
}

/// @nodoc

class _$_ActionFailure implements _ActionFailure {
  const _$_ActionFailure(this.applicationFailure);

  @override
  final ApplicationFailure applicationFailure;

  @override
  String toString() {
    return 'ApplicationsOverviewActorState.actionFailure(applicationFailure: $applicationFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActionFailure &&
            (identical(other.applicationFailure, applicationFailure) ||
                const DeepCollectionEquality()
                    .equals(other.applicationFailure, applicationFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(applicationFailure);

  @JsonKey(ignore: true)
  @override
  _$ActionFailureCopyWith<_ActionFailure> get copyWith =>
      __$ActionFailureCopyWithImpl<_ActionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function() actionSuccess,
    required TResult Function(ApplicationFailure applicationFailure)
        actionFailure,
  }) {
    return actionFailure(applicationFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function()? actionSuccess,
    TResult Function(ApplicationFailure applicationFailure)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(applicationFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_ActionSuccess value) actionSuccess,
    required TResult Function(_ActionFailure value) actionFailure,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_ActionSuccess value)? actionSuccess,
    TResult Function(_ActionFailure value)? actionFailure,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _ActionFailure implements ApplicationsOverviewActorState {
  const factory _ActionFailure(ApplicationFailure applicationFailure) =
      _$_ActionFailure;

  ApplicationFailure get applicationFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ActionFailureCopyWith<_ActionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'announcement_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AnnouncementActorEventTearOff {
  const _$AnnouncementActorEventTearOff();

  _Deleted deleted(Announcement announcement) {
    return _Deleted(
      announcement,
    );
  }
}

/// @nodoc
const $AnnouncementActorEvent = _$AnnouncementActorEventTearOff();

/// @nodoc
mixin _$AnnouncementActorEvent {
  Announcement get announcement => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Announcement announcement) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Announcement announcement)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnouncementActorEventCopyWith<AnnouncementActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementActorEventCopyWith<$Res> {
  factory $AnnouncementActorEventCopyWith(AnnouncementActorEvent value,
          $Res Function(AnnouncementActorEvent) then) =
      _$AnnouncementActorEventCopyWithImpl<$Res>;
  $Res call({Announcement announcement});

  $AnnouncementCopyWith<$Res> get announcement;
}

/// @nodoc
class _$AnnouncementActorEventCopyWithImpl<$Res>
    implements $AnnouncementActorEventCopyWith<$Res> {
  _$AnnouncementActorEventCopyWithImpl(this._value, this._then);

  final AnnouncementActorEvent _value;
  // ignore: unused_field
  final $Res Function(AnnouncementActorEvent) _then;

  @override
  $Res call({
    Object? announcement = freezed,
  }) {
    return _then(_value.copyWith(
      announcement: announcement == freezed
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as Announcement,
    ));
  }

  @override
  $AnnouncementCopyWith<$Res> get announcement {
    return $AnnouncementCopyWith<$Res>(_value.announcement, (value) {
      return _then(_value.copyWith(announcement: value));
    });
  }
}

/// @nodoc
abstract class _$DeletedCopyWith<$Res>
    implements $AnnouncementActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Announcement announcement});

  @override
  $AnnouncementCopyWith<$Res> get announcement;
}

/// @nodoc
class __$DeletedCopyWithImpl<$Res>
    extends _$AnnouncementActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object? announcement = freezed,
  }) {
    return _then(_Deleted(
      announcement == freezed
          ? _value.announcement
          : announcement // ignore: cast_nullable_to_non_nullable
              as Announcement,
    ));
  }
}

/// @nodoc

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.announcement);

  @override
  final Announcement announcement;

  @override
  String toString() {
    return 'AnnouncementActorEvent.deleted(announcement: $announcement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.announcement, announcement) ||
                const DeepCollectionEquality()
                    .equals(other.announcement, announcement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(announcement);

  @JsonKey(ignore: true)
  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Announcement announcement) deleted,
  }) {
    return deleted(announcement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Announcement announcement)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(announcement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Deleted value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Deleted value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements AnnouncementActorEvent {
  const factory _Deleted(Announcement announcement) = _$_Deleted;

  @override
  Announcement get announcement => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DeletedCopyWith<_Deleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AnnouncementActorStateTearOff {
  const _$AnnouncementActorStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

  _actionFailure actionFailure(AnnouncementFailure announcementFailure) {
    return _actionFailure(
      announcementFailure,
    );
  }

  _actionSuccess actionSuccess() {
    return const _actionSuccess();
  }
}

/// @nodoc
const $AnnouncementActorState = _$AnnouncementActorStateTearOff();

/// @nodoc
mixin _$AnnouncementActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(AnnouncementFailure announcementFailure)
        actionFailure,
    required TResult Function() actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(AnnouncementFailure announcementFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_actionFailure value) actionFailure,
    required TResult Function(_actionSuccess value) actionSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementActorStateCopyWith<$Res> {
  factory $AnnouncementActorStateCopyWith(AnnouncementActorState value,
          $Res Function(AnnouncementActorState) then) =
      _$AnnouncementActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnnouncementActorStateCopyWithImpl<$Res>
    implements $AnnouncementActorStateCopyWith<$Res> {
  _$AnnouncementActorStateCopyWithImpl(this._value, this._then);

  final AnnouncementActorState _value;
  // ignore: unused_field
  final $Res Function(AnnouncementActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AnnouncementActorStateCopyWithImpl<$Res>
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
    return 'AnnouncementActorState.initial()';
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
    required TResult Function(AnnouncementFailure announcementFailure)
        actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(AnnouncementFailure announcementFailure)? actionFailure,
    TResult Function()? actionSuccess,
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
    required TResult Function(_actionFailure value) actionFailure,
    required TResult Function(_actionSuccess value) actionSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AnnouncementActorState {
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
    extends _$AnnouncementActorStateCopyWithImpl<$Res>
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
    return 'AnnouncementActorState.actionInProgress()';
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
    required TResult Function(AnnouncementFailure announcementFailure)
        actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(AnnouncementFailure announcementFailure)? actionFailure,
    TResult Function()? actionSuccess,
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
    required TResult Function(_actionFailure value) actionFailure,
    required TResult Function(_actionSuccess value) actionSuccess,
  }) {
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements AnnouncementActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$actionFailureCopyWith<$Res> {
  factory _$actionFailureCopyWith(
          _actionFailure value, $Res Function(_actionFailure) then) =
      __$actionFailureCopyWithImpl<$Res>;
  $Res call({AnnouncementFailure announcementFailure});

  $AnnouncementFailureCopyWith<$Res> get announcementFailure;
}

/// @nodoc
class __$actionFailureCopyWithImpl<$Res>
    extends _$AnnouncementActorStateCopyWithImpl<$Res>
    implements _$actionFailureCopyWith<$Res> {
  __$actionFailureCopyWithImpl(
      _actionFailure _value, $Res Function(_actionFailure) _then)
      : super(_value, (v) => _then(v as _actionFailure));

  @override
  _actionFailure get _value => super._value as _actionFailure;

  @override
  $Res call({
    Object? announcementFailure = freezed,
  }) {
    return _then(_actionFailure(
      announcementFailure == freezed
          ? _value.announcementFailure
          : announcementFailure // ignore: cast_nullable_to_non_nullable
              as AnnouncementFailure,
    ));
  }

  @override
  $AnnouncementFailureCopyWith<$Res> get announcementFailure {
    return $AnnouncementFailureCopyWith<$Res>(_value.announcementFailure,
        (value) {
      return _then(_value.copyWith(announcementFailure: value));
    });
  }
}

/// @nodoc

class _$_actionFailure implements _actionFailure {
  const _$_actionFailure(this.announcementFailure);

  @override
  final AnnouncementFailure announcementFailure;

  @override
  String toString() {
    return 'AnnouncementActorState.actionFailure(announcementFailure: $announcementFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _actionFailure &&
            (identical(other.announcementFailure, announcementFailure) ||
                const DeepCollectionEquality()
                    .equals(other.announcementFailure, announcementFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(announcementFailure);

  @JsonKey(ignore: true)
  @override
  _$actionFailureCopyWith<_actionFailure> get copyWith =>
      __$actionFailureCopyWithImpl<_actionFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(AnnouncementFailure announcementFailure)
        actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionFailure(announcementFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(AnnouncementFailure announcementFailure)? actionFailure,
    TResult Function()? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(announcementFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ActionInProgress value) actionInProgress,
    required TResult Function(_actionFailure value) actionFailure,
    required TResult Function(_actionSuccess value) actionSuccess,
  }) {
    return actionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionFailure != null) {
      return actionFailure(this);
    }
    return orElse();
  }
}

abstract class _actionFailure implements AnnouncementActorState {
  const factory _actionFailure(AnnouncementFailure announcementFailure) =
      _$_actionFailure;

  AnnouncementFailure get announcementFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$actionFailureCopyWith<_actionFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$actionSuccessCopyWith<$Res> {
  factory _$actionSuccessCopyWith(
          _actionSuccess value, $Res Function(_actionSuccess) then) =
      __$actionSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$actionSuccessCopyWithImpl<$Res>
    extends _$AnnouncementActorStateCopyWithImpl<$Res>
    implements _$actionSuccessCopyWith<$Res> {
  __$actionSuccessCopyWithImpl(
      _actionSuccess _value, $Res Function(_actionSuccess) _then)
      : super(_value, (v) => _then(v as _actionSuccess));

  @override
  _actionSuccess get _value => super._value as _actionSuccess;
}

/// @nodoc

class _$_actionSuccess implements _actionSuccess {
  const _$_actionSuccess();

  @override
  String toString() {
    return 'AnnouncementActorState.actionSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _actionSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() actionInProgress,
    required TResult Function(AnnouncementFailure announcementFailure)
        actionFailure,
    required TResult Function() actionSuccess,
  }) {
    return actionSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? actionInProgress,
    TResult Function(AnnouncementFailure announcementFailure)? actionFailure,
    TResult Function()? actionSuccess,
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
    required TResult Function(_actionFailure value) actionFailure,
    required TResult Function(_actionSuccess value) actionSuccess,
  }) {
    return actionSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ActionInProgress value)? actionInProgress,
    TResult Function(_actionFailure value)? actionFailure,
    TResult Function(_actionSuccess value)? actionSuccess,
    required TResult orElse(),
  }) {
    if (actionSuccess != null) {
      return actionSuccess(this);
    }
    return orElse();
  }
}

abstract class _actionSuccess implements AnnouncementActorState {
  const factory _actionSuccess() = _$_actionSuccess;
}

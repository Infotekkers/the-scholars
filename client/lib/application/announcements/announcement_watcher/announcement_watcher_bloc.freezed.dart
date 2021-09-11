// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'announcement_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AnnouncementWatcherEventTearOff {
  const _$AnnouncementWatcherEventTearOff();

  _GetAllStarted getAllStarted() {
    return const _GetAllStarted();
  }
}

/// @nodoc
const $AnnouncementWatcherEvent = _$AnnouncementWatcherEventTearOff();

/// @nodoc
mixin _$AnnouncementWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllStarted value) getAllStarted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllStarted value)? getAllStarted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementWatcherEventCopyWith<$Res> {
  factory $AnnouncementWatcherEventCopyWith(AnnouncementWatcherEvent value,
          $Res Function(AnnouncementWatcherEvent) then) =
      _$AnnouncementWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnnouncementWatcherEventCopyWithImpl<$Res>
    implements $AnnouncementWatcherEventCopyWith<$Res> {
  _$AnnouncementWatcherEventCopyWithImpl(this._value, this._then);

  final AnnouncementWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(AnnouncementWatcherEvent) _then;
}

/// @nodoc
abstract class _$GetAllStartedCopyWith<$Res> {
  factory _$GetAllStartedCopyWith(
          _GetAllStarted value, $Res Function(_GetAllStarted) then) =
      __$GetAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllStartedCopyWithImpl<$Res>
    extends _$AnnouncementWatcherEventCopyWithImpl<$Res>
    implements _$GetAllStartedCopyWith<$Res> {
  __$GetAllStartedCopyWithImpl(
      _GetAllStarted _value, $Res Function(_GetAllStarted) _then)
      : super(_value, (v) => _then(v as _GetAllStarted));

  @override
  _GetAllStarted get _value => super._value as _GetAllStarted;
}

/// @nodoc

class _$_GetAllStarted implements _GetAllStarted {
  const _$_GetAllStarted();

  @override
  String toString() {
    return 'AnnouncementWatcherEvent.getAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllStarted,
  }) {
    return getAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllStarted,
    required TResult orElse(),
  }) {
    if (getAllStarted != null) {
      return getAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllStarted value) getAllStarted,
  }) {
    return getAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllStarted value)? getAllStarted,
    required TResult orElse(),
  }) {
    if (getAllStarted != null) {
      return getAllStarted(this);
    }
    return orElse();
  }
}

abstract class _GetAllStarted implements AnnouncementWatcherEvent {
  const factory _GetAllStarted() = _$_GetAllStarted;
}

/// @nodoc
class _$AnnouncementWatcherStateTearOff {
  const _$AnnouncementWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadSuccess loadSuccess(List<Announcement> annoucements) {
    return _LoadSuccess(
      annoucements,
    );
  }

  _LoadFailure loadFailure(AnnouncementFailure announcementFailure) {
    return _LoadFailure(
      announcementFailure,
    );
  }
}

/// @nodoc
const $AnnouncementWatcherState = _$AnnouncementWatcherStateTearOff();

/// @nodoc
mixin _$AnnouncementWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Announcement> annoucements) loadSuccess,
    required TResult Function(AnnouncementFailure announcementFailure)
        loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Announcement> annoucements)? loadSuccess,
    TResult Function(AnnouncementFailure announcementFailure)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementWatcherStateCopyWith<$Res> {
  factory $AnnouncementWatcherStateCopyWith(AnnouncementWatcherState value,
          $Res Function(AnnouncementWatcherState) then) =
      _$AnnouncementWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnnouncementWatcherStateCopyWithImpl<$Res>
    implements $AnnouncementWatcherStateCopyWith<$Res> {
  _$AnnouncementWatcherStateCopyWithImpl(this._value, this._then);

  final AnnouncementWatcherState _value;
  // ignore: unused_field
  final $Res Function(AnnouncementWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AnnouncementWatcherStateCopyWithImpl<$Res>
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
    return 'AnnouncementWatcherState.initial()';
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
    required TResult Function() loadInProgress,
    required TResult Function(List<Announcement> annoucements) loadSuccess,
    required TResult Function(AnnouncementFailure announcementFailure)
        loadFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Announcement> annoucements)? loadSuccess,
    TResult Function(AnnouncementFailure announcementFailure)? loadFailure,
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
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AnnouncementWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$AnnouncementWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'AnnouncementWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Announcement> annoucements) loadSuccess,
    required TResult Function(AnnouncementFailure announcementFailure)
        loadFailure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Announcement> annoucements)? loadSuccess,
    TResult Function(AnnouncementFailure announcementFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements AnnouncementWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Announcement> annoucements});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$AnnouncementWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? annoucements = freezed,
  }) {
    return _then(_LoadSuccess(
      annoucements == freezed
          ? _value.annoucements
          : annoucements // ignore: cast_nullable_to_non_nullable
              as List<Announcement>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.annoucements);

  @override
  final List<Announcement> annoucements;

  @override
  String toString() {
    return 'AnnouncementWatcherState.loadSuccess(annoucements: $annoucements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.annoucements, annoucements) ||
                const DeepCollectionEquality()
                    .equals(other.annoucements, annoucements)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(annoucements);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Announcement> annoucements) loadSuccess,
    required TResult Function(AnnouncementFailure announcementFailure)
        loadFailure,
  }) {
    return loadSuccess(annoucements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Announcement> annoucements)? loadSuccess,
    TResult Function(AnnouncementFailure announcementFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(annoucements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements AnnouncementWatcherState {
  const factory _LoadSuccess(List<Announcement> annoucements) = _$_LoadSuccess;

  List<Announcement> get annoucements => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({AnnouncementFailure announcementFailure});

  $AnnouncementFailureCopyWith<$Res> get announcementFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$AnnouncementWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? announcementFailure = freezed,
  }) {
    return _then(_LoadFailure(
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

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.announcementFailure);

  @override
  final AnnouncementFailure announcementFailure;

  @override
  String toString() {
    return 'AnnouncementWatcherState.loadFailure(announcementFailure: $announcementFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
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
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Announcement> annoucements) loadSuccess,
    required TResult Function(AnnouncementFailure announcementFailure)
        loadFailure,
  }) {
    return loadFailure(announcementFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Announcement> annoucements)? loadSuccess,
    TResult Function(AnnouncementFailure announcementFailure)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(announcementFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadFailure value) loadFailure,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadFailure value)? loadFailure,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements AnnouncementWatcherState {
  const factory _LoadFailure(AnnouncementFailure announcementFailure) =
      _$_LoadFailure;

  AnnouncementFailure get announcementFailure =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'view_application_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ViewApplicationEventTearOff {
  const _$ViewApplicationEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Details details({required ApplicationId applicationId}) {
    return _Details(
      applicationId: applicationId,
    );
  }
}

/// @nodoc
const $ViewApplicationEvent = _$ViewApplicationEventTearOff();

/// @nodoc
mixin _$ViewApplicationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ApplicationId applicationId) details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ApplicationId applicationId)? details,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Details value) details,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Details value)? details,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewApplicationEventCopyWith<$Res> {
  factory $ViewApplicationEventCopyWith(ViewApplicationEvent value,
          $Res Function(ViewApplicationEvent) then) =
      _$ViewApplicationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ViewApplicationEventCopyWithImpl<$Res>
    implements $ViewApplicationEventCopyWith<$Res> {
  _$ViewApplicationEventCopyWithImpl(this._value, this._then);

  final ViewApplicationEvent _value;
  // ignore: unused_field
  final $Res Function(ViewApplicationEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$ViewApplicationEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ViewApplicationEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ApplicationId applicationId) details,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ApplicationId applicationId)? details,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Details value) details,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Details value)? details,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ViewApplicationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$DetailsCopyWith<$Res> {
  factory _$DetailsCopyWith(_Details value, $Res Function(_Details) then) =
      __$DetailsCopyWithImpl<$Res>;
  $Res call({ApplicationId applicationId});
}

/// @nodoc
class __$DetailsCopyWithImpl<$Res>
    extends _$ViewApplicationEventCopyWithImpl<$Res>
    implements _$DetailsCopyWith<$Res> {
  __$DetailsCopyWithImpl(_Details _value, $Res Function(_Details) _then)
      : super(_value, (v) => _then(v as _Details));

  @override
  _Details get _value => super._value as _Details;

  @override
  $Res call({
    Object? applicationId = freezed,
  }) {
    return _then(_Details(
      applicationId: applicationId == freezed
          ? _value.applicationId
          : applicationId // ignore: cast_nullable_to_non_nullable
              as ApplicationId,
    ));
  }
}

/// @nodoc

class _$_Details implements _Details {
  const _$_Details({required this.applicationId});

  @override
  final ApplicationId applicationId;

  @override
  String toString() {
    return 'ViewApplicationEvent.details(applicationId: $applicationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Details &&
            (identical(other.applicationId, applicationId) ||
                const DeepCollectionEquality()
                    .equals(other.applicationId, applicationId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(applicationId);

  @JsonKey(ignore: true)
  @override
  _$DetailsCopyWith<_Details> get copyWith =>
      __$DetailsCopyWithImpl<_Details>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ApplicationId applicationId) details,
  }) {
    return details(applicationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ApplicationId applicationId)? details,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(applicationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Details value) details,
  }) {
    return details(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Details value)? details,
    required TResult orElse(),
  }) {
    if (details != null) {
      return details(this);
    }
    return orElse();
  }
}

abstract class _Details implements ViewApplicationEvent {
  const factory _Details({required ApplicationId applicationId}) = _$_Details;

  ApplicationId get applicationId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DetailsCopyWith<_Details> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ViewApplicationStateTearOff {
  const _$ViewApplicationStateTearOff();

  _ViewApplicationState call(
      {required List<ApplicationHighlightDto> allApplications,
      required bool isLoaded,
      required bool isFetching,
      required bool showErrorMessages,
      required Option<Either<ApplicationFailure, List<ApplicationHighlightDto>>>
          viewApplicationFailureOrSuccess}) {
    return _ViewApplicationState(
      allApplications: allApplications,
      isLoaded: isLoaded,
      isFetching: isFetching,
      showErrorMessages: showErrorMessages,
      viewApplicationFailureOrSuccess: viewApplicationFailureOrSuccess,
    );
  }
}

/// @nodoc
const $ViewApplicationState = _$ViewApplicationStateTearOff();

/// @nodoc
mixin _$ViewApplicationState {
  List<ApplicationHighlightDto> get allApplications =>
      throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<ApplicationFailure, List<ApplicationHighlightDto>>>
      get viewApplicationFailureOrSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ViewApplicationStateCopyWith<ViewApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViewApplicationStateCopyWith<$Res> {
  factory $ViewApplicationStateCopyWith(ViewApplicationState value,
          $Res Function(ViewApplicationState) then) =
      _$ViewApplicationStateCopyWithImpl<$Res>;
  $Res call(
      {List<ApplicationHighlightDto> allApplications,
      bool isLoaded,
      bool isFetching,
      bool showErrorMessages,
      Option<Either<ApplicationFailure, List<ApplicationHighlightDto>>>
          viewApplicationFailureOrSuccess});
}

/// @nodoc
class _$ViewApplicationStateCopyWithImpl<$Res>
    implements $ViewApplicationStateCopyWith<$Res> {
  _$ViewApplicationStateCopyWithImpl(this._value, this._then);

  final ViewApplicationState _value;
  // ignore: unused_field
  final $Res Function(ViewApplicationState) _then;

  @override
  $Res call({
    Object? allApplications = freezed,
    Object? isLoaded = freezed,
    Object? isFetching = freezed,
    Object? showErrorMessages = freezed,
    Object? viewApplicationFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      allApplications: allApplications == freezed
          ? _value.allApplications
          : allApplications // ignore: cast_nullable_to_non_nullable
              as List<ApplicationHighlightDto>,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      viewApplicationFailureOrSuccess: viewApplicationFailureOrSuccess ==
              freezed
          ? _value.viewApplicationFailureOrSuccess
          : viewApplicationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<ApplicationFailure, List<ApplicationHighlightDto>>>,
    ));
  }
}

/// @nodoc
abstract class _$ViewApplicationStateCopyWith<$Res>
    implements $ViewApplicationStateCopyWith<$Res> {
  factory _$ViewApplicationStateCopyWith(_ViewApplicationState value,
          $Res Function(_ViewApplicationState) then) =
      __$ViewApplicationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ApplicationHighlightDto> allApplications,
      bool isLoaded,
      bool isFetching,
      bool showErrorMessages,
      Option<Either<ApplicationFailure, List<ApplicationHighlightDto>>>
          viewApplicationFailureOrSuccess});
}

/// @nodoc
class __$ViewApplicationStateCopyWithImpl<$Res>
    extends _$ViewApplicationStateCopyWithImpl<$Res>
    implements _$ViewApplicationStateCopyWith<$Res> {
  __$ViewApplicationStateCopyWithImpl(
      _ViewApplicationState _value, $Res Function(_ViewApplicationState) _then)
      : super(_value, (v) => _then(v as _ViewApplicationState));

  @override
  _ViewApplicationState get _value => super._value as _ViewApplicationState;

  @override
  $Res call({
    Object? allApplications = freezed,
    Object? isLoaded = freezed,
    Object? isFetching = freezed,
    Object? showErrorMessages = freezed,
    Object? viewApplicationFailureOrSuccess = freezed,
  }) {
    return _then(_ViewApplicationState(
      allApplications: allApplications == freezed
          ? _value.allApplications
          : allApplications // ignore: cast_nullable_to_non_nullable
              as List<ApplicationHighlightDto>,
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetching: isFetching == freezed
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      viewApplicationFailureOrSuccess: viewApplicationFailureOrSuccess ==
              freezed
          ? _value.viewApplicationFailureOrSuccess
          : viewApplicationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<
                  Either<ApplicationFailure, List<ApplicationHighlightDto>>>,
    ));
  }
}

/// @nodoc

class _$_ViewApplicationState implements _ViewApplicationState {
  const _$_ViewApplicationState(
      {required this.allApplications,
      required this.isLoaded,
      required this.isFetching,
      required this.showErrorMessages,
      required this.viewApplicationFailureOrSuccess});

  @override
  final List<ApplicationHighlightDto> allApplications;
  @override
  final bool isLoaded;
  @override
  final bool isFetching;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<ApplicationFailure, List<ApplicationHighlightDto>>>
      viewApplicationFailureOrSuccess;

  @override
  String toString() {
    return 'ViewApplicationState(allApplications: $allApplications, isLoaded: $isLoaded, isFetching: $isFetching, showErrorMessages: $showErrorMessages, viewApplicationFailureOrSuccess: $viewApplicationFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewApplicationState &&
            (identical(other.allApplications, allApplications) ||
                const DeepCollectionEquality()
                    .equals(other.allApplications, allApplications)) &&
            (identical(other.isLoaded, isLoaded) ||
                const DeepCollectionEquality()
                    .equals(other.isLoaded, isLoaded)) &&
            (identical(other.isFetching, isFetching) ||
                const DeepCollectionEquality()
                    .equals(other.isFetching, isFetching)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.viewApplicationFailureOrSuccess,
                    viewApplicationFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.viewApplicationFailureOrSuccess,
                    viewApplicationFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allApplications) ^
      const DeepCollectionEquality().hash(isLoaded) ^
      const DeepCollectionEquality().hash(isFetching) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(viewApplicationFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$ViewApplicationStateCopyWith<_ViewApplicationState> get copyWith =>
      __$ViewApplicationStateCopyWithImpl<_ViewApplicationState>(
          this, _$identity);
}

abstract class _ViewApplicationState implements ViewApplicationState {
  const factory _ViewApplicationState(
      {required List<ApplicationHighlightDto> allApplications,
      required bool isLoaded,
      required bool isFetching,
      required bool showErrorMessages,
      required Option<Either<ApplicationFailure, List<ApplicationHighlightDto>>>
          viewApplicationFailureOrSuccess}) = _$_ViewApplicationState;

  @override
  List<ApplicationHighlightDto> get allApplications =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoaded => throw _privateConstructorUsedError;
  @override
  bool get isFetching => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  Option<Either<ApplicationFailure, List<ApplicationHighlightDto>>>
      get viewApplicationFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ViewApplicationStateCopyWith<_ViewApplicationState> get copyWith =>
      throw _privateConstructorUsedError;
}

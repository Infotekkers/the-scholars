// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'announcement_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AnnouncementFormEventTearOff {
  const _$AnnouncementFormEventTearOff();

  _Initialized initialized(Option<Announcement> initialAnnOption) {
    return _Initialized(
      initialAnnOption,
    );
  }

  TitleChanged titleChanged(String titleStr) {
    return TitleChanged(
      titleStr,
    );
  }

  BodyChanged bodyChanged(String bodyStr) {
    return BodyChanged(
      bodyStr,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $AnnouncementFormEvent = _$AnnouncementFormEventTearOff();

/// @nodoc
mixin _$AnnouncementFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Announcement> initialAnnOption)
        initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Announcement> initialAnnOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementFormEventCopyWith<$Res> {
  factory $AnnouncementFormEventCopyWith(AnnouncementFormEvent value,
          $Res Function(AnnouncementFormEvent) then) =
      _$AnnouncementFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AnnouncementFormEventCopyWithImpl<$Res>
    implements $AnnouncementFormEventCopyWith<$Res> {
  _$AnnouncementFormEventCopyWithImpl(this._value, this._then);

  final AnnouncementFormEvent _value;
  // ignore: unused_field
  final $Res Function(AnnouncementFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Announcement> initialAnnOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$AnnouncementFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialAnnOption = freezed,
  }) {
    return _then(_Initialized(
      initialAnnOption == freezed
          ? _value.initialAnnOption
          : initialAnnOption // ignore: cast_nullable_to_non_nullable
              as Option<Announcement>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialAnnOption);

  @override
  final Option<Announcement> initialAnnOption;

  @override
  String toString() {
    return 'AnnouncementFormEvent.initialized(initialAnnOption: $initialAnnOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialAnnOption, initialAnnOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialAnnOption, initialAnnOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialAnnOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Announcement> initialAnnOption)
        initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialAnnOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Announcement> initialAnnOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialAnnOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AnnouncementFormEvent {
  const factory _Initialized(Option<Announcement> initialAnnOption) =
      _$_Initialized;

  Option<Announcement> get initialAnnOption =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TitleChangedCopyWith<$Res> {
  factory $TitleChangedCopyWith(
          TitleChanged value, $Res Function(TitleChanged) then) =
      _$TitleChangedCopyWithImpl<$Res>;
  $Res call({String titleStr});
}

/// @nodoc
class _$TitleChangedCopyWithImpl<$Res>
    extends _$AnnouncementFormEventCopyWithImpl<$Res>
    implements $TitleChangedCopyWith<$Res> {
  _$TitleChangedCopyWithImpl(
      TitleChanged _value, $Res Function(TitleChanged) _then)
      : super(_value, (v) => _then(v as TitleChanged));

  @override
  TitleChanged get _value => super._value as TitleChanged;

  @override
  $Res call({
    Object? titleStr = freezed,
  }) {
    return _then(TitleChanged(
      titleStr == freezed
          ? _value.titleStr
          : titleStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChanged implements TitleChanged {
  const _$TitleChanged(this.titleStr);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'AnnouncementFormEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is TitleChanged &&
            (identical(other.titleStr, titleStr) ||
                const DeepCollectionEquality()
                    .equals(other.titleStr, titleStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(titleStr);

  @JsonKey(ignore: true)
  @override
  $TitleChangedCopyWith<TitleChanged> get copyWith =>
      _$TitleChangedCopyWithImpl<TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Announcement> initialAnnOption)
        initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function() saved,
  }) {
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Announcement> initialAnnOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TitleChanged implements AnnouncementFormEvent {
  const factory TitleChanged(String titleStr) = _$TitleChanged;

  String get titleStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TitleChangedCopyWith<TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyChangedCopyWith<$Res> {
  factory $BodyChangedCopyWith(
          BodyChanged value, $Res Function(BodyChanged) then) =
      _$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

/// @nodoc
class _$BodyChangedCopyWithImpl<$Res>
    extends _$AnnouncementFormEventCopyWithImpl<$Res>
    implements $BodyChangedCopyWith<$Res> {
  _$BodyChangedCopyWithImpl(
      BodyChanged _value, $Res Function(BodyChanged) _then)
      : super(_value, (v) => _then(v as BodyChanged));

  @override
  BodyChanged get _value => super._value as BodyChanged;

  @override
  $Res call({
    Object? bodyStr = freezed,
  }) {
    return _then(BodyChanged(
      bodyStr == freezed
          ? _value.bodyStr
          : bodyStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BodyChanged implements BodyChanged {
  const _$BodyChanged(this.bodyStr);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'AnnouncementFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is BodyChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @JsonKey(ignore: true)
  @override
  $BodyChangedCopyWith<BodyChanged> get copyWith =>
      _$BodyChangedCopyWithImpl<BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Announcement> initialAnnOption)
        initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function() saved,
  }) {
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Announcement> initialAnnOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class BodyChanged implements AnnouncementFormEvent {
  const factory BodyChanged(String bodyStr) = _$BodyChanged;

  String get bodyStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BodyChangedCopyWith<BodyChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res>
    extends _$AnnouncementFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'AnnouncementFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Announcement> initialAnnOption)
        initialized,
    required TResult Function(String titleStr) titleChanged,
    required TResult Function(String bodyStr) bodyChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Announcement> initialAnnOption)? initialized,
    TResult Function(String titleStr)? titleChanged,
    TResult Function(String bodyStr)? bodyChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(TitleChanged value) titleChanged,
    required TResult Function(BodyChanged value) bodyChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(TitleChanged value)? titleChanged,
    TResult Function(BodyChanged value)? bodyChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements AnnouncementFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$AnnouncementFormStateTearOff {
  const _$AnnouncementFormStateTearOff();

  _AnnouncementFormState call(
      {required AnnouncementTitle title,
      required AnnouncementBody body,
      required AnnouncementDate date,
      required bool showErrorMessages,
      required bool isSaving,
      required bool isEditing,
      required Option<Either<AnnouncementFailure, Unit>>
          saveFailureOrSuccess}) {
    return _AnnouncementFormState(
      title: title,
      body: body,
      date: date,
      showErrorMessages: showErrorMessages,
      isSaving: isSaving,
      isEditing: isEditing,
      saveFailureOrSuccess: saveFailureOrSuccess,
    );
  }
}

/// @nodoc
const $AnnouncementFormState = _$AnnouncementFormStateTearOff();

/// @nodoc
mixin _$AnnouncementFormState {
  AnnouncementTitle get title => throw _privateConstructorUsedError;
  AnnouncementBody get body => throw _privateConstructorUsedError;
  AnnouncementDate get date => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  Option<Either<AnnouncementFailure, Unit>> get saveFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnnouncementFormStateCopyWith<AnnouncementFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnnouncementFormStateCopyWith<$Res> {
  factory $AnnouncementFormStateCopyWith(AnnouncementFormState value,
          $Res Function(AnnouncementFormState) then) =
      _$AnnouncementFormStateCopyWithImpl<$Res>;
  $Res call(
      {AnnouncementTitle title,
      AnnouncementBody body,
      AnnouncementDate date,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<AnnouncementFailure, Unit>> saveFailureOrSuccess});
}

/// @nodoc
class _$AnnouncementFormStateCopyWithImpl<$Res>
    implements $AnnouncementFormStateCopyWith<$Res> {
  _$AnnouncementFormStateCopyWithImpl(this._value, this._then);

  final AnnouncementFormState _value;
  // ignore: unused_field
  final $Res Function(AnnouncementFormState) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? date = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? saveFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AnnouncementTitle,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AnnouncementBody,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as AnnouncementDate,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccess: saveFailureOrSuccess == freezed
          ? _value.saveFailureOrSuccess
          : saveFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AnnouncementFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$AnnouncementFormStateCopyWith<$Res>
    implements $AnnouncementFormStateCopyWith<$Res> {
  factory _$AnnouncementFormStateCopyWith(_AnnouncementFormState value,
          $Res Function(_AnnouncementFormState) then) =
      __$AnnouncementFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {AnnouncementTitle title,
      AnnouncementBody body,
      AnnouncementDate date,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<AnnouncementFailure, Unit>> saveFailureOrSuccess});
}

/// @nodoc
class __$AnnouncementFormStateCopyWithImpl<$Res>
    extends _$AnnouncementFormStateCopyWithImpl<$Res>
    implements _$AnnouncementFormStateCopyWith<$Res> {
  __$AnnouncementFormStateCopyWithImpl(_AnnouncementFormState _value,
      $Res Function(_AnnouncementFormState) _then)
      : super(_value, (v) => _then(v as _AnnouncementFormState));

  @override
  _AnnouncementFormState get _value => super._value as _AnnouncementFormState;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
    Object? date = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? saveFailureOrSuccess = freezed,
  }) {
    return _then(_AnnouncementFormState(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as AnnouncementTitle,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as AnnouncementBody,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as AnnouncementDate,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccess: saveFailureOrSuccess == freezed
          ? _value.saveFailureOrSuccess
          : saveFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AnnouncementFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AnnouncementFormState implements _AnnouncementFormState {
  const _$_AnnouncementFormState(
      {required this.title,
      required this.body,
      required this.date,
      required this.showErrorMessages,
      required this.isSaving,
      required this.isEditing,
      required this.saveFailureOrSuccess});

  @override
  final AnnouncementTitle title;
  @override
  final AnnouncementBody body;
  @override
  final AnnouncementDate date;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Option<Either<AnnouncementFailure, Unit>> saveFailureOrSuccess;

  @override
  String toString() {
    return 'AnnouncementFormState(title: $title, body: $body, date: $date, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isEditing: $isEditing, saveFailureOrSuccess: $saveFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnnouncementFormState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.saveFailureOrSuccess, saveFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.saveFailureOrSuccess, saveFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$AnnouncementFormStateCopyWith<_AnnouncementFormState> get copyWith =>
      __$AnnouncementFormStateCopyWithImpl<_AnnouncementFormState>(
          this, _$identity);
}

abstract class _AnnouncementFormState implements AnnouncementFormState {
  const factory _AnnouncementFormState(
      {required AnnouncementTitle title,
      required AnnouncementBody body,
      required AnnouncementDate date,
      required bool showErrorMessages,
      required bool isSaving,
      required bool isEditing,
      required Option<Either<AnnouncementFailure, Unit>>
          saveFailureOrSuccess}) = _$_AnnouncementFormState;

  @override
  AnnouncementTitle get title => throw _privateConstructorUsedError;
  @override
  AnnouncementBody get body => throw _privateConstructorUsedError;
  @override
  AnnouncementDate get date => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  Option<Either<AnnouncementFailure, Unit>> get saveFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AnnouncementFormStateCopyWith<_AnnouncementFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

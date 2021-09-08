// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _FullNameChanged fullNameChanged(String fullName) {
    return _FullNameChanged(
      fullName,
    );
  }

  _BirthDateChanged birthDateChanged(DateTime birthDate) {
    return _BirthDateChanged(
      birthDate,
    );
  }

  _GenderChanged genderChanged(String gender) {
    return _GenderChanged(
      gender,
    );
  }

  _LocationChanged locationChanged(String location) {
    return _LocationChanged(
      location,
    );
  }

  _PhoneCodeChanged phoneCodeChanged(String phoneCode) {
    return _PhoneCodeChanged(
      phoneCode,
    );
  }

  _PhoneNumberChanged phoneNumberChanged(String phoneNumber) {
    return _PhoneNumberChanged(
      phoneNumber,
    );
  }

  _SaveProfile saveProfile({required bool isEditPage}) {
    return _SaveProfile(
      isEditPage: isEditPage,
    );
  }

  _EditProfile editProfile() {
    return const _EditProfile();
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(DateTime birthDate) birthDateChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(String phoneCode) phoneCodeChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(bool isEditPage) saveProfile,
    required TResult Function() editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(DateTime birthDate)? birthDateChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(String phoneCode)? phoneCodeChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(bool isEditPage)? saveProfile,
    TResult Function()? editProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_BirthDateChanged value) birthDateChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PhoneCodeChanged value) phoneCodeChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SaveProfile value) saveProfile,
    required TResult Function(_EditProfile value) editProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_BirthDateChanged value)? birthDateChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PhoneCodeChanged value)? phoneCodeChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SaveProfile value)? saveProfile,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$FullNameChangedCopyWith<$Res> {
  factory _$FullNameChangedCopyWith(
          _FullNameChanged value, $Res Function(_FullNameChanged) then) =
      __$FullNameChangedCopyWithImpl<$Res>;
  $Res call({String fullName});
}

/// @nodoc
class __$FullNameChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$FullNameChangedCopyWith<$Res> {
  __$FullNameChangedCopyWithImpl(
      _FullNameChanged _value, $Res Function(_FullNameChanged) _then)
      : super(_value, (v) => _then(v as _FullNameChanged));

  @override
  _FullNameChanged get _value => super._value as _FullNameChanged;

  @override
  $Res call({
    Object? fullName = freezed,
  }) {
    return _then(_FullNameChanged(
      fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FullNameChanged implements _FullNameChanged {
  const _$_FullNameChanged(this.fullName);

  @override
  final String fullName;

  @override
  String toString() {
    return 'ProfileEvent.fullNameChanged(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FullNameChanged &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fullName);

  @JsonKey(ignore: true)
  @override
  _$FullNameChangedCopyWith<_FullNameChanged> get copyWith =>
      __$FullNameChangedCopyWithImpl<_FullNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(DateTime birthDate) birthDateChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(String phoneCode) phoneCodeChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(bool isEditPage) saveProfile,
    required TResult Function() editProfile,
  }) {
    return fullNameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(DateTime birthDate)? birthDateChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(String phoneCode)? phoneCodeChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(bool isEditPage)? saveProfile,
    TResult Function()? editProfile,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_BirthDateChanged value) birthDateChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PhoneCodeChanged value) phoneCodeChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SaveProfile value) saveProfile,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_BirthDateChanged value)? birthDateChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PhoneCodeChanged value)? phoneCodeChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SaveProfile value)? saveProfile,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FullNameChanged implements ProfileEvent {
  const factory _FullNameChanged(String fullName) = _$_FullNameChanged;

  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FullNameChangedCopyWith<_FullNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$BirthDateChangedCopyWith<$Res> {
  factory _$BirthDateChangedCopyWith(
          _BirthDateChanged value, $Res Function(_BirthDateChanged) then) =
      __$BirthDateChangedCopyWithImpl<$Res>;
  $Res call({DateTime birthDate});
}

/// @nodoc
class __$BirthDateChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$BirthDateChangedCopyWith<$Res> {
  __$BirthDateChangedCopyWithImpl(
      _BirthDateChanged _value, $Res Function(_BirthDateChanged) _then)
      : super(_value, (v) => _then(v as _BirthDateChanged));

  @override
  _BirthDateChanged get _value => super._value as _BirthDateChanged;

  @override
  $Res call({
    Object? birthDate = freezed,
  }) {
    return _then(_BirthDateChanged(
      birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_BirthDateChanged implements _BirthDateChanged {
  const _$_BirthDateChanged(this.birthDate);

  @override
  final DateTime birthDate;

  @override
  String toString() {
    return 'ProfileEvent.birthDateChanged(birthDate: $birthDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BirthDateChanged &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(birthDate);

  @JsonKey(ignore: true)
  @override
  _$BirthDateChangedCopyWith<_BirthDateChanged> get copyWith =>
      __$BirthDateChangedCopyWithImpl<_BirthDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(DateTime birthDate) birthDateChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(String phoneCode) phoneCodeChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(bool isEditPage) saveProfile,
    required TResult Function() editProfile,
  }) {
    return birthDateChanged(birthDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(DateTime birthDate)? birthDateChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(String phoneCode)? phoneCodeChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(bool isEditPage)? saveProfile,
    TResult Function()? editProfile,
    required TResult orElse(),
  }) {
    if (birthDateChanged != null) {
      return birthDateChanged(birthDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_BirthDateChanged value) birthDateChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PhoneCodeChanged value) phoneCodeChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SaveProfile value) saveProfile,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return birthDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_BirthDateChanged value)? birthDateChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PhoneCodeChanged value)? phoneCodeChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SaveProfile value)? saveProfile,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (birthDateChanged != null) {
      return birthDateChanged(this);
    }
    return orElse();
  }
}

abstract class _BirthDateChanged implements ProfileEvent {
  const factory _BirthDateChanged(DateTime birthDate) = _$_BirthDateChanged;

  DateTime get birthDate => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$BirthDateChangedCopyWith<_BirthDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GenderChangedCopyWith<$Res> {
  factory _$GenderChangedCopyWith(
          _GenderChanged value, $Res Function(_GenderChanged) then) =
      __$GenderChangedCopyWithImpl<$Res>;
  $Res call({String gender});
}

/// @nodoc
class __$GenderChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$GenderChangedCopyWith<$Res> {
  __$GenderChangedCopyWithImpl(
      _GenderChanged _value, $Res Function(_GenderChanged) _then)
      : super(_value, (v) => _then(v as _GenderChanged));

  @override
  _GenderChanged get _value => super._value as _GenderChanged;

  @override
  $Res call({
    Object? gender = freezed,
  }) {
    return _then(_GenderChanged(
      gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GenderChanged implements _GenderChanged {
  const _$_GenderChanged(this.gender);

  @override
  final String gender;

  @override
  String toString() {
    return 'ProfileEvent.genderChanged(gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenderChanged &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(gender);

  @JsonKey(ignore: true)
  @override
  _$GenderChangedCopyWith<_GenderChanged> get copyWith =>
      __$GenderChangedCopyWithImpl<_GenderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(DateTime birthDate) birthDateChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(String phoneCode) phoneCodeChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(bool isEditPage) saveProfile,
    required TResult Function() editProfile,
  }) {
    return genderChanged(gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(DateTime birthDate)? birthDateChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(String phoneCode)? phoneCodeChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(bool isEditPage)? saveProfile,
    TResult Function()? editProfile,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_BirthDateChanged value) birthDateChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PhoneCodeChanged value) phoneCodeChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SaveProfile value) saveProfile,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_BirthDateChanged value)? birthDateChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PhoneCodeChanged value)? phoneCodeChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SaveProfile value)? saveProfile,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class _GenderChanged implements ProfileEvent {
  const factory _GenderChanged(String gender) = _$_GenderChanged;

  String get gender => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GenderChangedCopyWith<_GenderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LocationChangedCopyWith<$Res> {
  factory _$LocationChangedCopyWith(
          _LocationChanged value, $Res Function(_LocationChanged) then) =
      __$LocationChangedCopyWithImpl<$Res>;
  $Res call({String location});
}

/// @nodoc
class __$LocationChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$LocationChangedCopyWith<$Res> {
  __$LocationChangedCopyWithImpl(
      _LocationChanged _value, $Res Function(_LocationChanged) _then)
      : super(_value, (v) => _then(v as _LocationChanged));

  @override
  _LocationChanged get _value => super._value as _LocationChanged;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_LocationChanged(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationChanged implements _LocationChanged {
  const _$_LocationChanged(this.location);

  @override
  final String location;

  @override
  String toString() {
    return 'ProfileEvent.locationChanged(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LocationChanged &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$LocationChangedCopyWith<_LocationChanged> get copyWith =>
      __$LocationChangedCopyWithImpl<_LocationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(DateTime birthDate) birthDateChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(String phoneCode) phoneCodeChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(bool isEditPage) saveProfile,
    required TResult Function() editProfile,
  }) {
    return locationChanged(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(DateTime birthDate)? birthDateChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(String phoneCode)? phoneCodeChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(bool isEditPage)? saveProfile,
    TResult Function()? editProfile,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_BirthDateChanged value) birthDateChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PhoneCodeChanged value) phoneCodeChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SaveProfile value) saveProfile,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_BirthDateChanged value)? birthDateChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PhoneCodeChanged value)? phoneCodeChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SaveProfile value)? saveProfile,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class _LocationChanged implements ProfileEvent {
  const factory _LocationChanged(String location) = _$_LocationChanged;

  String get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LocationChangedCopyWith<_LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhoneCodeChangedCopyWith<$Res> {
  factory _$PhoneCodeChangedCopyWith(
          _PhoneCodeChanged value, $Res Function(_PhoneCodeChanged) then) =
      __$PhoneCodeChangedCopyWithImpl<$Res>;
  $Res call({String phoneCode});
}

/// @nodoc
class __$PhoneCodeChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$PhoneCodeChangedCopyWith<$Res> {
  __$PhoneCodeChangedCopyWithImpl(
      _PhoneCodeChanged _value, $Res Function(_PhoneCodeChanged) _then)
      : super(_value, (v) => _then(v as _PhoneCodeChanged));

  @override
  _PhoneCodeChanged get _value => super._value as _PhoneCodeChanged;

  @override
  $Res call({
    Object? phoneCode = freezed,
  }) {
    return _then(_PhoneCodeChanged(
      phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneCodeChanged implements _PhoneCodeChanged {
  const _$_PhoneCodeChanged(this.phoneCode);

  @override
  final String phoneCode;

  @override
  String toString() {
    return 'ProfileEvent.phoneCodeChanged(phoneCode: $phoneCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneCodeChanged &&
            (identical(other.phoneCode, phoneCode) ||
                const DeepCollectionEquality()
                    .equals(other.phoneCode, phoneCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneCode);

  @JsonKey(ignore: true)
  @override
  _$PhoneCodeChangedCopyWith<_PhoneCodeChanged> get copyWith =>
      __$PhoneCodeChangedCopyWithImpl<_PhoneCodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(DateTime birthDate) birthDateChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(String phoneCode) phoneCodeChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(bool isEditPage) saveProfile,
    required TResult Function() editProfile,
  }) {
    return phoneCodeChanged(phoneCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(DateTime birthDate)? birthDateChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(String phoneCode)? phoneCodeChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(bool isEditPage)? saveProfile,
    TResult Function()? editProfile,
    required TResult orElse(),
  }) {
    if (phoneCodeChanged != null) {
      return phoneCodeChanged(phoneCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_BirthDateChanged value) birthDateChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PhoneCodeChanged value) phoneCodeChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SaveProfile value) saveProfile,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return phoneCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_BirthDateChanged value)? birthDateChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PhoneCodeChanged value)? phoneCodeChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SaveProfile value)? saveProfile,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (phoneCodeChanged != null) {
      return phoneCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneCodeChanged implements ProfileEvent {
  const factory _PhoneCodeChanged(String phoneCode) = _$_PhoneCodeChanged;

  String get phoneCode => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneCodeChangedCopyWith<_PhoneCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PhoneNumberChangedCopyWith<$Res> {
  factory _$PhoneNumberChangedCopyWith(
          _PhoneNumberChanged value, $Res Function(_PhoneNumberChanged) then) =
      __$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class __$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$PhoneNumberChangedCopyWith<$Res> {
  __$PhoneNumberChangedCopyWithImpl(
      _PhoneNumberChanged _value, $Res Function(_PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _PhoneNumberChanged));

  @override
  _PhoneNumberChanged get _value => super._value as _PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_PhoneNumberChanged(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberChanged implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ProfileEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      __$PhoneNumberChangedCopyWithImpl<_PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(DateTime birthDate) birthDateChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(String phoneCode) phoneCodeChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(bool isEditPage) saveProfile,
    required TResult Function() editProfile,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(DateTime birthDate)? birthDateChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(String phoneCode)? phoneCodeChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(bool isEditPage)? saveProfile,
    TResult Function()? editProfile,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_BirthDateChanged value) birthDateChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PhoneCodeChanged value) phoneCodeChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SaveProfile value) saveProfile,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_BirthDateChanged value)? birthDateChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PhoneCodeChanged value)? phoneCodeChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SaveProfile value)? saveProfile,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements ProfileEvent {
  const factory _PhoneNumberChanged(String phoneNumber) = _$_PhoneNumberChanged;

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PhoneNumberChangedCopyWith<_PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveProfileCopyWith<$Res> {
  factory _$SaveProfileCopyWith(
          _SaveProfile value, $Res Function(_SaveProfile) then) =
      __$SaveProfileCopyWithImpl<$Res>;
  $Res call({bool isEditPage});
}

/// @nodoc
class __$SaveProfileCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$SaveProfileCopyWith<$Res> {
  __$SaveProfileCopyWithImpl(
      _SaveProfile _value, $Res Function(_SaveProfile) _then)
      : super(_value, (v) => _then(v as _SaveProfile));

  @override
  _SaveProfile get _value => super._value as _SaveProfile;

  @override
  $Res call({
    Object? isEditPage = freezed,
  }) {
    return _then(_SaveProfile(
      isEditPage: isEditPage == freezed
          ? _value.isEditPage
          : isEditPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SaveProfile implements _SaveProfile {
  const _$_SaveProfile({required this.isEditPage});

  @override
  final bool isEditPage;

  @override
  String toString() {
    return 'ProfileEvent.saveProfile(isEditPage: $isEditPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SaveProfile &&
            (identical(other.isEditPage, isEditPage) ||
                const DeepCollectionEquality()
                    .equals(other.isEditPage, isEditPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isEditPage);

  @JsonKey(ignore: true)
  @override
  _$SaveProfileCopyWith<_SaveProfile> get copyWith =>
      __$SaveProfileCopyWithImpl<_SaveProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(DateTime birthDate) birthDateChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(String phoneCode) phoneCodeChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(bool isEditPage) saveProfile,
    required TResult Function() editProfile,
  }) {
    return saveProfile(isEditPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(DateTime birthDate)? birthDateChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(String phoneCode)? phoneCodeChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(bool isEditPage)? saveProfile,
    TResult Function()? editProfile,
    required TResult orElse(),
  }) {
    if (saveProfile != null) {
      return saveProfile(isEditPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_BirthDateChanged value) birthDateChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PhoneCodeChanged value) phoneCodeChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SaveProfile value) saveProfile,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return saveProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_BirthDateChanged value)? birthDateChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PhoneCodeChanged value)? phoneCodeChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SaveProfile value)? saveProfile,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (saveProfile != null) {
      return saveProfile(this);
    }
    return orElse();
  }
}

abstract class _SaveProfile implements ProfileEvent {
  const factory _SaveProfile({required bool isEditPage}) = _$_SaveProfile;

  bool get isEditPage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SaveProfileCopyWith<_SaveProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditProfileCopyWith<$Res> {
  factory _$EditProfileCopyWith(
          _EditProfile value, $Res Function(_EditProfile) then) =
      __$EditProfileCopyWithImpl<$Res>;
}

/// @nodoc
class __$EditProfileCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
    implements _$EditProfileCopyWith<$Res> {
  __$EditProfileCopyWithImpl(
      _EditProfile _value, $Res Function(_EditProfile) _then)
      : super(_value, (v) => _then(v as _EditProfile));

  @override
  _EditProfile get _value => super._value as _EditProfile;
}

/// @nodoc

class _$_EditProfile implements _EditProfile {
  const _$_EditProfile();

  @override
  String toString() {
    return 'ProfileEvent.editProfile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EditProfile);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(DateTime birthDate) birthDateChanged,
    required TResult Function(String gender) genderChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function(String phoneCode) phoneCodeChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(bool isEditPage) saveProfile,
    required TResult Function() editProfile,
  }) {
    return editProfile();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(DateTime birthDate)? birthDateChanged,
    TResult Function(String gender)? genderChanged,
    TResult Function(String location)? locationChanged,
    TResult Function(String phoneCode)? phoneCodeChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(bool isEditPage)? saveProfile,
    TResult Function()? editProfile,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_BirthDateChanged value) birthDateChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_PhoneCodeChanged value) phoneCodeChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_SaveProfile value) saveProfile,
    required TResult Function(_EditProfile value) editProfile,
  }) {
    return editProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_BirthDateChanged value)? birthDateChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_PhoneCodeChanged value)? phoneCodeChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_SaveProfile value)? saveProfile,
    TResult Function(_EditProfile value)? editProfile,
    required TResult orElse(),
  }) {
    if (editProfile != null) {
      return editProfile(this);
    }
    return orElse();
  }
}

abstract class _EditProfile implements ProfileEvent {
  const factory _EditProfile() = _$_EditProfile;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _ProfileState call(
      {required FullName fullName,
      required DateTime birthDate,
      required Gender gender,
      required Location location,
      required PhoneCode phoneCode,
      required PhoneNumber phoneNumber,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<ApplicationProfileFailure, ApplicationProfile>>
          applicationProfileFailureOrSuccess,
      required Option<Either<ValueFailure, dynamic>> valueFailureOrSuccess}) {
    return _ProfileState(
      fullName: fullName,
      birthDate: birthDate,
      gender: gender,
      location: location,
      phoneCode: phoneCode,
      phoneNumber: phoneNumber,
      showErrorMessages: showErrorMessages,
      isSubmitting: isSubmitting,
      applicationProfileFailureOrSuccess: applicationProfileFailureOrSuccess,
      valueFailureOrSuccess: valueFailureOrSuccess,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  FullName get fullName => throw _privateConstructorUsedError;
  DateTime get birthDate => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  PhoneCode get phoneCode => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<ApplicationProfileFailure, ApplicationProfile>>
      get applicationProfileFailureOrSuccess =>
          throw _privateConstructorUsedError;
  Option<Either<ValueFailure, dynamic>> get valueFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {FullName fullName,
      DateTime birthDate,
      Gender gender,
      Location location,
      PhoneCode phoneCode,
      PhoneNumber phoneNumber,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ApplicationProfileFailure, ApplicationProfile>>
          applicationProfileFailureOrSuccess,
      Option<Either<ValueFailure, dynamic>> valueFailureOrSuccess});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
    Object? location = freezed,
    Object? phoneCode = freezed,
    Object? phoneNumber = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? applicationProfileFailureOrSuccess = freezed,
    Object? valueFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      phoneCode: phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as PhoneCode,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      applicationProfileFailureOrSuccess: applicationProfileFailureOrSuccess ==
              freezed
          ? _value.applicationProfileFailureOrSuccess
          : applicationProfileFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApplicationProfileFailure, ApplicationProfile>>,
      valueFailureOrSuccess: valueFailureOrSuccess == freezed
          ? _value.valueFailureOrSuccess
          : valueFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, dynamic>>,
    ));
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FullName fullName,
      DateTime birthDate,
      Gender gender,
      Location location,
      PhoneCode phoneCode,
      PhoneNumber phoneNumber,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<ApplicationProfileFailure, ApplicationProfile>>
          applicationProfileFailureOrSuccess,
      Option<Either<ValueFailure, dynamic>> valueFailureOrSuccess});
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? birthDate = freezed,
    Object? gender = freezed,
    Object? location = freezed,
    Object? phoneCode = freezed,
    Object? phoneNumber = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? applicationProfileFailureOrSuccess = freezed,
    Object? valueFailureOrSuccess = freezed,
  }) {
    return _then(_ProfileState(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      birthDate: birthDate == freezed
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      phoneCode: phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as PhoneCode,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      applicationProfileFailureOrSuccess: applicationProfileFailureOrSuccess ==
              freezed
          ? _value.applicationProfileFailureOrSuccess
          : applicationProfileFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApplicationProfileFailure, ApplicationProfile>>,
      valueFailureOrSuccess: valueFailureOrSuccess == freezed
          ? _value.valueFailureOrSuccess
          : valueFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.fullName,
      required this.birthDate,
      required this.gender,
      required this.location,
      required this.phoneCode,
      required this.phoneNumber,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.applicationProfileFailureOrSuccess,
      required this.valueFailureOrSuccess});

  @override
  final FullName fullName;
  @override
  final DateTime birthDate;
  @override
  final Gender gender;
  @override
  final Location location;
  @override
  final PhoneCode phoneCode;
  @override
  final PhoneNumber phoneNumber;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<ApplicationProfileFailure, ApplicationProfile>>
      applicationProfileFailureOrSuccess;
  @override
  final Option<Either<ValueFailure, dynamic>> valueFailureOrSuccess;

  @override
  String toString() {
    return 'ProfileState(fullName: $fullName, birthDate: $birthDate, gender: $gender, location: $location, phoneCode: $phoneCode, phoneNumber: $phoneNumber, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, applicationProfileFailureOrSuccess: $applicationProfileFailureOrSuccess, valueFailureOrSuccess: $valueFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileState &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.birthDate, birthDate) ||
                const DeepCollectionEquality()
                    .equals(other.birthDate, birthDate)) &&
            (identical(other.gender, gender) ||
                const DeepCollectionEquality().equals(other.gender, gender)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.phoneCode, phoneCode) ||
                const DeepCollectionEquality()
                    .equals(other.phoneCode, phoneCode)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.applicationProfileFailureOrSuccess,
                    applicationProfileFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.applicationProfileFailureOrSuccess,
                    applicationProfileFailureOrSuccess)) &&
            (identical(other.valueFailureOrSuccess, valueFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.valueFailureOrSuccess, valueFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(birthDate) ^
      const DeepCollectionEquality().hash(gender) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(phoneCode) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(applicationProfileFailureOrSuccess) ^
      const DeepCollectionEquality().hash(valueFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required FullName fullName,
      required DateTime birthDate,
      required Gender gender,
      required Location location,
      required PhoneCode phoneCode,
      required PhoneNumber phoneNumber,
      required bool showErrorMessages,
      required bool isSubmitting,
      required Option<Either<ApplicationProfileFailure, ApplicationProfile>>
          applicationProfileFailureOrSuccess,
      required Option<Either<ValueFailure, dynamic>>
          valueFailureOrSuccess}) = _$_ProfileState;

  @override
  FullName get fullName => throw _privateConstructorUsedError;
  @override
  DateTime get birthDate => throw _privateConstructorUsedError;
  @override
  Gender get gender => throw _privateConstructorUsedError;
  @override
  Location get location => throw _privateConstructorUsedError;
  @override
  PhoneCode get phoneCode => throw _privateConstructorUsedError;
  @override
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<ApplicationProfileFailure, ApplicationProfile>>
      get applicationProfileFailureOrSuccess =>
          throw _privateConstructorUsedError;
  @override
  Option<Either<ValueFailure, dynamic>> get valueFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

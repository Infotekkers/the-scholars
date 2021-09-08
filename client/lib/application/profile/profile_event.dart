part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  // Event for Full Name
  const factory ProfileEvent.fullNameChanged(String fullName) =
      _FullNameChanged;

  // Event for BithDate
  const factory ProfileEvent.birthDateChanged(DateTime birthDate) =
      _BirthDateChanged;

  // Event for Gender
  const factory ProfileEvent.genderChanged(String gender) = _GenderChanged;

// Event for location
  const factory ProfileEvent.locationChanged(String location) =
      _LocationChanged;

// Event for phone Code
  const factory ProfileEvent.phoneCodeChanged(String phoneCode) =
      _PhoneCodeChanged;

// Event for Phone Number
  const factory ProfileEvent.phoneNumberChanged(String phoneNumber) =
      _PhoneNumberChanged;

// Event for Save profile button
  const factory ProfileEvent.saveProfile() = _SaveProfile;

  const factory ProfileEvent.editProfile() = _EditProfile;
}

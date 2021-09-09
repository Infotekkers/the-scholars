part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required FullName fullName,
    required DateTime birthDate,
    required Gender gender,
    required Location location,
    required PhoneCode phoneCode,
    required PhoneNumber phoneNumber,
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool isDeleted,
    required Option<Either<ApplicationProfileFailure, ApplicationProfile>>
        applicationProfileFailureOrSuccess,
    required Option<Either<ValueFailure, dynamic>> valueFailureOrSuccess,
  }) = _ProfileState;

  factory ProfileState.initial() => ProfileState(
        fullName: FullName(fullName: ''),
        birthDate: DateTime(DateTime.now().year - 15),
        gender: Gender(gender: ""),
        location: Location(location: "Ethiopia"),
        phoneCode: PhoneCode(phoneCode: "+251"),
        phoneNumber: PhoneNumber(phoneNumber: ""),
        isSubmitting: false,
        isDeleted: false,
        showErrorMessages: false,
        applicationProfileFailureOrSuccess: none(),
        valueFailureOrSuccess: none(),
      );
}

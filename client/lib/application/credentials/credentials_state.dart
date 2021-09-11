part of 'credentials_bloc.dart';

@freezed
class CredentialState with _$CredentialState {
  const factory CredentialState({
    required EmailAddress currentEmailAddress,
    required EmailAddress newEmailAddress,
    required Password newPassword,
    required Password currentPassword,
    required bool showErrorMessages,
    required bool isFetching,
    required bool isDeleted,
    required bool isEmailResetActive,
    required bool isPasswordResetActive,
    required Option<Either<CredentialFailure, String>> resetFailureOrSuccess,
    required Option<Either<ValueFailure, dynamic>> valueFailureOrSuccess,

    // Add More States
  }) = _CredentialState;

  factory CredentialState.initial() => CredentialState(
        currentEmailAddress: EmailAddress(""),
        newEmailAddress: EmailAddress(""),
        newPassword: Password(""),
        currentPassword: Password(""),
        isFetching: true,
        isDeleted: false,
        isEmailResetActive: false,
        isPasswordResetActive: false,
        showErrorMessages: false,
        resetFailureOrSuccess: none(),
        valueFailureOrSuccess: none(),
      );
}

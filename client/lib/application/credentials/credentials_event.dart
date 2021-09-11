part of 'credentials_bloc.dart';

@freezed
class CredentialsEvent with _$CredentialsEvent {
  const factory CredentialsEvent.initial() = _Initial;
  // Display Email Reset Area
  const factory CredentialsEvent.activateEmailResetArea() =
      _ActivteEmailResetArea;

  // Display Password Reset Area
  const factory CredentialsEvent.activatePasswordResetArea() =
      _ActivtePasswordResetArea;

  // Display Email Reset Area
  const factory CredentialsEvent.deactivateEmailResetArea() =
      _DeactivteEmailResetArea;

  // Display Password Reset Area
  const factory CredentialsEvent.deactivatePasswordResetArea() =
      _DeactivtePasswordResetArea;

  const factory CredentialsEvent.newEmailAddressChanged(
      {required String newEmailAddress}) = _NewEmailChanged;

  const factory CredentialsEvent.newPasswordEmailChanged(
      {required String newPassword}) = _NewPasswordEmailChanged;

  const factory CredentialsEvent.newPasswordChanged(
      {required String newPassword}) = _NewPasswordChanged;

  const factory CredentialsEvent.currentPasswordChanged(
      {required String currentPassword}) = _CurrentPasswordChanged;

  const factory CredentialsEvent.emailSubmitEvent() = _EmailSubmit;

  const factory CredentialsEvent.passwordSubmitEvent() = _PasswordSubmit;
}

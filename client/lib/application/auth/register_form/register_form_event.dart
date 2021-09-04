part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormEvent with _$RegisterFormEvent {
  const factory RegisterFormEvent.nameChanged(String nameStr) = NameChanged;
  const factory RegisterFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory RegisterFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory RegisterFormEvent.roleChanged(String roleStr) = RoleChanged;
  const factory RegisterFormEvent.registerPressed() = RegistrationClicked;
}

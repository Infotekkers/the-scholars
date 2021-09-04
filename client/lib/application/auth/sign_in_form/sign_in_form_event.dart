part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.nameChanged(String nameStr) = NameChanged;
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.roleChanged(String roleStr) = RoleChanged;
  const factory SignInFormEvent.registerPressed() = RegistrationClicked;
  const factory SignInFormEvent.signInPressed() = SignInClicked;
}

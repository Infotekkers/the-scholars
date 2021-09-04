part of 'register_form_bloc.dart';

@freezed
abstract class RegisterFormState with _$RegisterFormState {
  const factory RegisterFormState({
    required Name name,
    required EmailAddress emailAddress,
    required Password password,
    required Role role,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, User>> authFailureOrSuccess,
  }) = _RegisterFormState;

  factory RegisterFormState.initial() => RegisterFormState(
        name: Name(""),
        emailAddress: EmailAddress(""),
        password: Password(""),
        role: Role(""),
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccess: none(),
      );
}

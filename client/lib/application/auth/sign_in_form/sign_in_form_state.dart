part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required Name name,
    required EmailAddress emailAddress,
    required Password password,
    required Role role,
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, User>> authFailureOrSuccess,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
        name: Name(""),
        emailAddress: EmailAddress(""),
        password: Password(""),
        role: Role(""),
        isSubmitting: false,
        showErrorMessages: false,
        authFailureOrSuccess: none(),
      );
}

import 'package:client/domain/auth/auth_failure.dart';
import 'package:client/domain/auth/i_auth_repository.dart';
import 'package:client/domain/auth/user.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthRepository authRepository;

  SignInFormBloc(this.authRepository) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(SignInFormEvent event) async* {
    yield* event.map(
      nameChanged: (e) async* {
        yield state.copyWith(name: Name(e.nameStr));
      },
      emailChanged: (e) async* {
        yield state.copyWith(emailAddress: EmailAddress(e.emailStr));
      },
      passwordChanged: (e) async* {
        yield state.copyWith(password: Password(e.passwordStr));
      },
      roleChanged: (e) async* {
        yield state.copyWith(role: Role(e.roleStr));
      },
      registerPressed: (e) async* {
        Either<AuthFailure, User>? failureOrSuccess;

        if (state.name.isValid() &&
            state.emailAddress.isValid() &&
            state.password.isValid() &&
            state.role.isValid()) {
          yield state.copyWith(
              isSubmitting: true, authFailureOrSuccess: none());

          final User user = User.initial();
          user.copyWith(emailAddress: state.emailAddress);
          user.copyWith(name: state.name);
          user.copyWith(role: state.role);

          failureOrSuccess = await authRepository.register(
              user: user, password: state.password);
        }

        yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccess: optionOf(failureOrSuccess));
      },
      signInPressed: (e) async* {
        Either<AuthFailure, User>? failureOrSuccess;

        if (state.emailAddress.isValid() && state.password.isValid()) {
          yield state.copyWith(
              isSubmitting: true, authFailureOrSuccess: none());

          final User user = User.initial();
          user.copyWith(emailAddress: state.emailAddress);
          failureOrSuccess =
              await authRepository.signIn(user: user, password: state.password);
        }

        yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccess: optionOf(failureOrSuccess));
      },
    );
  }
}

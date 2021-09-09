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
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccess: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccess: none(),
        );
      },
      signInPressed: (e) async* {
        Either<AuthFailure, User>? failureOrSuccess;

        if (state.emailAddress.isValid() && state.password.isValid()) {
          yield state.copyWith(
              isSubmitting: true, authFailureOrSuccess: none());

          final User user = User.initial();
          failureOrSuccess = await authRepository.signIn(
              user: user.copyWith(emailAddress: state.emailAddress),
              password: state.password);
        }

        yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccess: optionOf(failureOrSuccess));

        if (failureOrSuccess?.isRight() ?? false) {
          failureOrSuccess!.fold((l) => {}, (r) async {
            await authRepository.setCachedUser(user: r);
          });
        }
      },
    );
  }
}

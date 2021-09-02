import 'package:bloc_test/bloc_test.dart';
import 'package:client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:client/domain/auth/auth_failure.dart';
import 'package:client/domain/auth/user.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:client/infrastructure/auth/api_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class MockApiAuthRepository extends Mock implements ApiAuthRepository {}

void main() {
  final MockApiAuthRepository mockApiAuthRepository = MockApiAuthRepository();

  // setUp(() {
  //   mockApiAuthRepository = ;
  // });

  group("Sign In Form bloc", () {
    blocTest<SignInFormBloc, SignInFormState>(
      "should emit nothing",
      build: () => SignInFormBloc(mockApiAuthRepository),
      expect: () => const [],
    );
    blocTest<SignInFormBloc, SignInFormState>(
      "should emit email changed",
      build: () => SignInFormBloc(mockApiAuthRepository),
      act: (bloc) =>
          bloc.add(const SignInFormEvent.emailChanged("clown@ing.com")),
      expect: () {
        SignInFormState state = SignInFormState.initial();
        state = state.copyWith(emailAddress: EmailAddress("clown@ing.com"));
        return [state];
      },
    );
    blocTest<SignInFormBloc, SignInFormState>(
      "should emit password changed",
      build: () => SignInFormBloc(mockApiAuthRepository),
      act: (bloc) =>
          bloc.add(const SignInFormEvent.passwordChanged("Testing@12")),
      expect: () {
        SignInFormState state = SignInFormState.initial();
        state = state.copyWith(password: Password("Testing@12"));
        return [state];
      },
    );
    blocTest<SignInFormBloc, SignInFormState>(
      "should emit sign in pressed",
      build: () => SignInFormBloc(mockApiAuthRepository),
      act: (bloc) => bloc.add(const SignInFormEvent.signInPressed()),
      expect: () {
        final SignInFormState state = SignInFormState.initial();
        return [
          state.copyWith(
            showErrorMessages: true,
            authFailureOrSuccess: none(),
          ),
        ];
      },
    );
  });
}

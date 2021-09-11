import 'package:bloc_test/bloc_test.dart';
import 'package:client/application/auth/auth_bloc.dart';
import 'package:client/domain/auth/user.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:client/domain/core/value_objects.dart';
import 'package:client/infrastructure/auth/api_auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test/test.dart';

void main() {
  group("Auth bloc", () {
    blocTest<AuthBloc, AuthState>("should emit nothing",
        build: () => AuthBloc(ApiAuthRepository()), expect: () => const []);
    blocTest<AuthBloc, AuthState>(
      "should emit authorized",
      build: () {
        SharedPreferences.setMockInitialValues({
          "user": """
            {
              "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoiNjEyMGQ3Mjk0YTk0N2Q0MDZjZTgzM2IwIiwiaWF0IjoxNjMwNDc0Njk4LCJleHAiOjE2MzA0NzgyOTh9.3pMZDPaGcBaEWOMufLFdeM6oiMqdqk5IoM9MrTraTJ4",
              "name": "Clown",
              "emailAddress": "clown@ing.com",
              "role": "User"
          }
          """
        });
        return AuthBloc(ApiAuthRepository())
          ..add(const AuthEvent.authCheckRequested());
      },
      expect: () {
        User user = User.initial();
        user = user.copyWith(
            emailAddress: EmailAddress("clown@ing.com"),
            role: Role("User"),
            name: Name("Clown"),
            token: Token(
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoiNjEyMGQ3Mjk0YTk0N2Q0MDZjZTgzM2IwIiwiaWF0IjoxNjMwNDc0Njk4LCJleHAiOjE2MzA0NzgyOTh9.3pMZDPaGcBaEWOMufLFdeM6oiMqdqk5IoM9MrTraTJ4"));
        return [AuthState.authorized(user)];
      },
    );
    blocTest<AuthBloc, AuthState>(
      "should emit unauthorized",
      build: () {
        SharedPreferences.setMockInitialValues({
          "user": """
            {
              "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoiNjEyMGQ3Mjk0YTk0N2Q0MDZjZTgzM2IwIiwiaWF0IjoxNjMwNDc0Njk4LCJleHAiOjE2MzA0NzgyOTh9.3pMZDPaGcBaEWOMufLFdeM6oiMqdqk5IoM9MrTraTJ4",
              "name": "Clown",
              "emailAddress": "clown@ing.com",
              "role": "User"
          }
          """
        });
        return AuthBloc(ApiAuthRepository())
          ..add(const AuthEvent.authCheckRequested(claimedRole: "Admin"));
      },
      expect: () => [],
    );
    blocTest<AuthBloc, AuthState>(
      "should emit unauthenticated",
      build: () {
        SharedPreferences.setMockInitialValues({});
        return AuthBloc(ApiAuthRepository())
          ..add(const AuthEvent.authCheckRequested());
      },
      expect: () => [const AuthState.unauthenticated()],
    );
  });
}

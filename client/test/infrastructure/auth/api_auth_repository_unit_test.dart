import 'package:client/domain/auth/user.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:client/infrastructure/auth/api_auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // * SIGN IN
  group("Auth Repo sign in", () {
    test("should return a valid user object", () async {
      final authRepo = ApiAuthRepository();
      final user = User.initial();
      user.copyWith(emailAddress: EmailAddress("emailStr"));
      final result = await authRepo.signIn(
          user: user.copyWith(emailAddress: EmailAddress("clown@ing.com")),
          password: Password("Testing@12"));

      expect(result.isRight(), true);
    });
    test("should return an auth failure", () async {
      final authRepo = ApiAuthRepository();
      final user = User.initial();
      user.copyWith(emailAddress: EmailAddress("emailStr"));
      final result = await authRepo.signIn(
          user: user.copyWith(emailAddress: EmailAddress("clown@ing.com")),
          password: Password("Testing@12"));

      expect(result.isRight(), false);
    });
  });
  // * REGISTER
  group("Auth Repo register", () {
    test("should return a valid user object", () async {
      final authRepo = ApiAuthRepository();
      final user = User.initial();
      final result = await authRepo.register(
        user: user.copyWith(
            emailAddress: EmailAddress("clown@ing2.com"),
            role: Role("user"),
            name: Name("Clown")),
        password: Password("Testing@12"),
      );

      expect(result.isRight(), true);
    });
    test("should return an auth failure", () async {
      final authRepo = ApiAuthRepository();
      final user = User.initial();
      final result = await authRepo.register(
        user: user.copyWith(
            emailAddress: EmailAddress("clown@ing2.com"),
            role: Role("user"),
            name: Name("Clown")),
        password: Password("Testing@12"),
      );
      expect(result.isRight(), false);
    });
  });
}

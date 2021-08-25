import 'package:client/domain/auth/user.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:client/domain/core/value_objects.dart';
import 'package:client/infrastructure/auth/api_auth_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // * SIGN IN
  group("Auth Repo sign in", () {
    test("should return a valid user object", () async {
      final authRepo = ApiAuthRepository();
      final result = await authRepo.signIn(
          emailAddress: EmailAddress("clown@ing.com"),
          password: Password("Testing@12"));

      expect(result.isRight(), true);
    });
    test("should return an auth failure", () async {
      final authRepo = ApiAuthRepository();
      final result = await authRepo.signIn(
          emailAddress: EmailAddress("notclown@ing.com"),
          password: Password("Testing@12"));

      expect(result.isRight(), false);
    });

  });
  // * REGISTER
  group("Auth Repo register", () {
    test("should return a valid user object", () async {
      final authRepo = ApiAuthRepository();
      final result = await authRepo.register(
          emailAddress: EmailAddress("clown@ing2.com"),
          password: Password("Testing@12"),
          role: Role("user"),
          name: Name("Clown"));

      expect(result.isRight(), true);
    });
    test("should return an auth failure", () async {
      final authRepo = ApiAuthRepository();
      final result = await authRepo.register(
          emailAddress: EmailAddress("clown@ing.com"),
          password: Password("Testing@12"),
          role: Role("user"),
          name: Name("Clown2"));
          
      expect(result.isRight(), false);
    });

  });
}

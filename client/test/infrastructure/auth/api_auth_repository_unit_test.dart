import 'package:client/domain/auth/auth_failure.dart';
import 'package:client/domain/auth/user.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:client/infrastructure/auth/api_auth_repository.dart';
import 'package:client/infrastructure/auth/auth_dtos.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';

import 'api_auth_repository_unit_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  const String _baseUrl = "http://localhost:3000/auth";

  // * SIGN IN
  group("Auth Repo sign in", () {
    test("should return a valid user object", () async {
      // Mock Client
      final http.Client client = MockClient();

      // Args
      User user = User.initial();
      user = user.copyWith(emailAddress: EmailAddress("clown@ing.com"));
      final Password password = Password("Testing@12");

      // Request Setup
      final Uri url = Uri.parse("$_baseUrl/login");
      final UserDto userDtoOut = UserDto.fromDomain(user);
      final outgoingJson =
          userDtoOut.copyWith(password: password.getOrCrash()).toJson();

      // Response Setup
      when(client.post(url, body: outgoingJson))
          .thenAnswer((_) async => http.Response('''
          {
              "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoiNjEyMGQ3Mjk0YTk0N2Q0MDZjZTgzM2IwIiwiaWF0IjoxNjMwNDc0Njk4LCJleHAiOjE2MzA0NzgyOTh9.3pMZDPaGcBaEWOMufLFdeM6oiMqdqk5IoM9MrTraTJ4",
              "name": "Clown",
              "emailAddress": "clown@ing.com",
              "role": "user"
          }
      ''', 200));

      // Making the Request
      final authRepo = ApiAuthRepository.test(client);
      final result =
          await authRepo.signIn(user: user, password: Password("Testing@12"));

      expect(result.fold((l) => l, (r) => r), isA<User>());
    });
    test("should return an auth failure of invalid email password combination",
        () async {
      // Mock Client
      final http.Client client = MockClient();

      // Args
      User user = User.initial();
      user = user.copyWith(emailAddress: EmailAddress("clown@ing.com"));
      final Password password = Password("Testing@12");

      // Request Setup
      final Uri url = Uri.parse("$_baseUrl/login");
      final UserDto userDtoOut = UserDto.fromDomain(user);
      final outgoingJson =
          userDtoOut.copyWith(password: password.getOrCrash()).toJson();

      // Response Setup
      when(client.post(url, body: outgoingJson))
          .thenAnswer((_) async => http.Response("{}", 400));

      // Making the Request
      final authRepo = ApiAuthRepository.test(client);
      final result =
          await authRepo.signIn(user: user, password: Password("Testing@12"));

      expect(result.fold((l) => l, (r) => r),
          isA<InvalidEmailPasswordCombination>());
    });
  });

  // * REGISTER
  group("Auth Repo register", () {
    test("should return a valid user object", () async {
      // Mock Client
      final http.Client client = MockClient();

      // Args
      User user = User.initial();
      user = user.copyWith(
          emailAddress: EmailAddress("copyclown@ing.com"),
          role: Role("user"),
          name: Name("CopyClown"));
      final Password password = Password("Testing@12");

      // Request Setup
      final Uri url = Uri.parse("$_baseUrl/register");
      final UserDto userDtoOut = UserDto.fromDomain(user);
      final outgoingJson =
          userDtoOut.copyWith(password: password.getOrCrash()).toJson();

      // Response Setup
      when(client.post(url, body: outgoingJson))
          .thenAnswer((_) async => http.Response('''
          {
              "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjoiNjEyZjFiOTY2ZTFiMWUzYmY4NThjYTAxIiwiaWF0IjoxNjMwNDc3MjA3LCJleHAiOjE2MzA0ODA4MDd9.y3wHq-Z53z91NnJ7-KeZZfryb5XCl31RAIa97gC6C4Q",
              "name": "CopyClown",
              "emailAddress": "copyclown@ing.com",
              "role": "user"
          }
      ''', 201));

      // Making the Request
      final authRepo = ApiAuthRepository.test(client);
      final result =
          await authRepo.register(user: user, password: Password("Testing@12"));

      expect(result.fold((l) => l, (r) => r), isA<User>());
    });
    test("should return an auth failure of email already in use", () async {
      // Mock Client
      final http.Client client = MockClient();

      // Args
      User user = User.initial();
      user = user.copyWith(
          emailAddress: EmailAddress("clown@ing.com"),
          role: Role("user"),
          name: Name("Clown"));
      final Password password = Password("Testing@12");

      // Request Setup
      final Uri url = Uri.parse("$_baseUrl/register");
      final UserDto userDtoOut = UserDto.fromDomain(user);
      final outgoingJson =
          userDtoOut.copyWith(password: password.getOrCrash()).toJson();

      // Response Setup
      when(client.post(url, body: outgoingJson))
          .thenAnswer((_) async => http.Response('''
          {
              "errors": {
                  "email": "Email is already in use",
                  "userName": "UserName is already in use"
              }
          }
      ''', 400));

      // Making the Request
      final authRepo = ApiAuthRepository.test(client);
      final result =
          await authRepo.register(user: user, password: Password("Testing@12"));

      expect(result.fold((l) => l, (r) => r), isA<EmailAlreadyInUse>());
    });
  });
}

import 'dart:convert';

import 'package:client/domain/auth/auth_failure.dart';
import 'package:client/domain/auth/i_auth_repository.dart';
import 'package:client/infrastructure/auth/auth_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:client/domain/auth/user.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAuthRepository)
class ApiAuthRepository implements IAuthRepository {
  static final String _baseUrl = "${dotenv.env["API"]}/auth";
  http.Client? client = http.Client();

  ApiAuthRepository();
  ApiAuthRepository.test(this.client);

  @override
  Future<Either<AuthFailure, User>> register(
      {required User user, required Password password}) async {
    final Uri url = Uri.parse("$_baseUrl/auth/register");

    final UserDto userDtoOut = UserDto.fromDomain(user);
    final outgoingJson =
        userDtoOut.copyWith(password: password.getOrCrash()).toJson();
        
    try {
      final response = await client!.post(url, body: outgoingJson);

      if (response.statusCode == 201) {
        final UserDto userDtoIn =
            UserDto.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
        return right(userDtoIn.toDomain());
      } else if (response.statusCode == 400) {
        return left(const AuthFailure.invalidEmailPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (err) {
      return left(const AuthFailure.networkError());
    }
  }

  @override
  Future<Either<AuthFailure, User>> signIn(
      {required User user, required Password password}) async {
    final Uri url = Uri.parse("$_baseUrl/login");
    final UserDto userDtoOut = UserDto.fromDomain(user);
    final outgoingJson =
        userDtoOut.copyWith(password: password.getOrCrash()).toJson();

    try {
      final response = await client!.post(url, body: outgoingJson);

      if (response.statusCode == 200) {
        final UserDto userDtoIn =
            UserDto.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
        return right(userDtoIn.toDomain());
      } else if (response.statusCode == 400) {
        return left(const AuthFailure.invalidEmailPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    } catch (err) {
      return left(const AuthFailure.networkError());
    }
  }

  @override
  Future<Option<User>> getCachedUser() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final String? response = prefs.getString("user");

      final UserDto userDtoIn =
          UserDto.fromJson(jsonDecode(response!) as Map<String, dynamic>);
      return optionOf(userDtoIn.toDomain());
    } catch (err) {
      return none();
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> setCachedUser({required User user}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final UserDto userDtoOut = UserDto.fromDomain(user);

      prefs.setString("user", jsonEncode(userDtoOut.toJson()));

      return right(unit);
    } catch (err) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> removeCachedUser() async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      prefs.remove("user");

      return right(unit);
    } catch (err) {
      return left(const AuthFailure.serverError());
    }
  }
}

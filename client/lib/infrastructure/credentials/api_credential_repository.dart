import 'dart:convert';

import 'package:client/domain/auth/value_objects.dart';
import 'package:client/domain/credentials/credentials_failures.dart';
import 'package:client/domain/credentials/credentials.dart';
import 'package:client/domain/credentials/i_credentials_repository.dart';
import 'package:client/infrastructure/credentials/credential_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ICredentialsRepository)
class ApiCredentials implements ICredentialsRepository {
  final String baseUri = "http://10.0.2.2:5000";

  // static final String baseUri = "${dotenv.env["API"]}";
  @override
  Future<Either<CredentialFailure, String>> resetEmail(
      {required CredentialsEmail credentialsEmail}) async {
    // Convert Object to Json
    final Map<String, dynamic> credJson =
        CredentialEmailDto.fromDomain(credentialsEmail: credentialsEmail)
            .toJson();

    // Send Api Call
    final response = await http.patch(
      Uri.parse("$baseUri/auth/update/email"),
      body: {
        "creds": jsonEncode(credJson),
      },
    ).timeout(
      const Duration(seconds: 10),
      onTimeout: () {
        return http.Response("Server Timeout", 503);
      },
    );

    // Filter Result R
    if (response.statusCode == 204) {
      return right("");
    } else if (response.statusCode == 404) {
      return left(const CredentialFailure.invalidAuth());
    } else {
      return left(const CredentialFailure.serverError());
    }
  }

  @override
  Future<Either<CredentialFailure, String>> resetPassword(
      {required CredentialsPassword credentialsPassword}) async {
    print("Launched");
    // Convert Object to Json
    final Map<String, dynamic> credJson = CredentialPasswordDto.fromDomain(
            credentialsPassword: credentialsPassword)
        .toJson();

    final response = await http.patch(
      Uri.parse("$baseUri/auth/update/password"),
      body: {
        "creds": jsonEncode(credJson),
      },
    ).timeout(
      const Duration(seconds: 10),
      onTimeout: () {
        return http.Response("Server Timeout", 503);
      },
    );

    // Filter Result R
    if (response.statusCode == 204) {
      return right("");
    } else if (response.statusCode == 404) {
      return left(const CredentialFailure.invalidAuth());
    } else {
      return left(const CredentialFailure.serverError());
    }
  }

  @override
  Future<Either<CredentialFailure, String>> deleteAccount(
      {required String emailAddress}) async {
    final response = await http.delete(
      Uri.parse("$baseUri/auth/delete"),
      body: {
        "email": emailAddress,
      },
    ).timeout(
      const Duration(seconds: 10),
      onTimeout: () {
        return http.Response("Server Timeout", 503);
      },
    );

    // Filter Result R

    return right("");
  }
}

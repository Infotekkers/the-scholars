import 'package:client/domain/auth/value_objects.dart';
import 'package:client/domain/credentials/credentials.dart';
import 'package:client/domain/credentials/credentials_failures.dart';
import 'package:dartz/dartz.dart';

abstract class ICredentialsRepository {
  Future<Either<CredentialFailure, String>> resetPassword(
      {required CredentialsPassword credentialsPassword});

  Future<Either<CredentialFailure, String>> resetEmail(
      {required CredentialsEmail credentialsEmail});
}

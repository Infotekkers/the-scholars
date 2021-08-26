import 'package:client/domain/auth/auth_failure.dart';
import 'package:client/domain/auth/user.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<AuthFailure, User>> signIn({
    required User user, required Password password
  });
  Future<Either<AuthFailure, User>> register({
    required User user, required Password password
  });
}

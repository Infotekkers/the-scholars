import 'package:client/domain/auth/value_validators.dart';
import 'package:client/domain/core/failures.dart';
import 'package:client/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String emailStr) {
    return EmailAddress._(validateEmailAddress(emailStr));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String passwordStr) {
    return Password._(validatePassword(passwordStr));
  }

  const Password._(this.value);
}

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String nameStr) {
    return Name._(validateName(nameStr));
  }

  const Name._(this.value);
}

class Role extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Role(String roleStr) {
    return Role._(validateRole(roleStr: roleStr));
  }

  const Role._(this.value);
}

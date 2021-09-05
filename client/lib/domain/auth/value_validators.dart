import 'package:client/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String emailStr) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegex).hasMatch(emailStr)) {
    return right(emailStr);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: emailStr));
  }
  
}

Either<ValueFailure<String>, String> validatePassword(String passwordStr) {
  // TODO: Implement validation
  return right("");
}

Either<ValueFailure<String>, String> validateName(String nameStr) {
  // TODO: Implement validation
  return right("");
}

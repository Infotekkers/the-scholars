import 'package:client/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String emailStr) {
  const emailRegex =
      r'''^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+''';

  if (RegExp(emailRegex).hasMatch(emailStr)) {
    return right(emailStr);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: emailStr));
  }
}

Either<ValueFailure<String>, String> validatePassword(String passwordStr) {
  const passwordRegex =
      r'''^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$''';

  if (RegExp(passwordRegex).hasMatch(passwordStr)) {
    return right(passwordStr);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: passwordStr));
  }
}

Either<ValueFailure<String>, String> validateName(String nameStr) {
  const nameRegex = r'''([A-Z][a-z]{1,})\w+\s+([A-Z][a-z]{0,})\w''';

  if (RegExp(nameRegex).hasMatch(nameStr)) {
    return right(nameStr);
  } else {
    return left(ValueFailure.invalidUsername(failedValue: nameStr));
  }
}

Either<ValueFailure<String>, String> validateRole({required String roleStr}) {
  if (!(roleStr == 'User' || roleStr == 'Admin')) {
    return left(const ValueFailure.invalidRole());
  }
  return right(roleStr);
}

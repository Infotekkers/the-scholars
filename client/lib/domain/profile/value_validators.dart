import 'package:client/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

// Function to Validate Full Name
Either<ValueFailure<String>, String> validateFullName(
    {required String fullName}) {
  // if empty
  if (fullName.isEmpty) {
    return left(const ValueFailure.fullNameEmptyValue());
  }
  // If No Space
  else if (!fullName.contains(" ")) {
    return left(const ValueFailure.fullNameInvalidFormat());
  } else {
    final names = fullName.split(" ");
    // IF Initals are used
    if (names[0].length < 3 || names[1].length < 3) {
      return left(const ValueFailure.fullNameInvalidLength());
    } else {
      return right(fullName);
    }
  }
}

// Function to Validate BirthDate
Either<ValueFailure<String>, String> validateBirthDate(
    {required String birthDateString}) {
  // Already Validated by Date Picker

  // If Empty
  if (birthDateString.isEmpty) {
    return left(const ValueFailure.birthDateInvalid());
  }
  return right(birthDateString);
}

// Function to Validate Gender'
Either<ValueFailure<String>, String> validateGender({required String gender}) {
  // Only 2 possible values
  if (gender == 'male' || gender == 'female') {
    return right(gender);
  } else {
    return left(const ValueFailure.emptyGender());
  }
}

// Function to Validate Location
Either<ValueFailure<String>, String> validateLocation(
    {required String location}) {
  // If Not Empty
  if (location.isNotEmpty) {
    return right(location);
  } else {
    return left(const ValueFailure.emptyLocation());
  }
}

// Function to Validate Phone Code
Either<ValueFailure<String>, String> validatePhoneCode(
    {required String phoneCode}) {
  // If Empty
  if (phoneCode.isEmpty) {
    return left(const ValueFailure.emptyPhoneCode());
  }
  return right(phoneCode);
}

// Function to Validate Phone Number
Either<ValueFailure<String>, String> validatePhoneNumber(
    {required String phoneNumber}) {
  // RegExp to match digits only
  final RegExp _numeric = RegExp(r'^-?[0-9]+$');
  // If Empty
  if (phoneNumber.isEmpty) {
    return left(const ValueFailure.emptyPhoneNumber());
  }
  // If too short
  else if (phoneNumber.length < 9) {
    return left(const ValueFailure.shortPhoneNumber());
  }
  // If Not digits
  else if (!_numeric.hasMatch(phoneNumber)) {
    return left(const ValueFailure.invalidPhoneNumber());
  }
  // If too long
  else if (phoneNumber.length > 9) {
    return left(const ValueFailure.exceedingPhoneNumber());
  }
  return right(phoneNumber);
}

// Value Object for full name
import 'package:client/domain/core/failures.dart';
import 'package:client/domain/core/value_objects.dart';
import 'package:client/domain/profile/value_validators.dart';
import 'package:dartz/dartz.dart';

class FullName extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName({required String fullName}) {
    return FullName._(
      value: validateFullName(fullName: fullName),
    );
  }

  const FullName._({required this.value});
}

// Value Object for Birth Date
class BirthDate extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory BirthDate({required DateTime birthDate}) {
    final dateYear = birthDate.year;
    final dateMonth =
        birthDate.month < 10 ? "0${birthDate.month}" : birthDate.month;
    final dateDay = birthDate.day < 10 ? "0${birthDate.day}" : birthDate.day;
    final birthDateString = "$dateYear-$dateMonth-$dateDay";
    return BirthDate._(
      value: validateBirthDate(birthDateString: birthDateString),
    );
  }

  const BirthDate._({required this.value});
}

// Value Object for Gender
class Gender extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Gender({required String gender}) {
    return Gender._(
      value: validateGender(gender: gender),
    );
  }

  const Gender._({required this.value});
}

// Value Object for Location
class Location extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Location({required String location}) {
    return Location._(
      value: validateLocation(location: location),
    );
  }

  const Location._({required this.value});
}

// Value Object for Phone Number
class PhoneNumber extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber({required String phoneNumber}) {
    return PhoneNumber._(
      value: validatePhoneNumber(phoneNumber: phoneNumber),
    );
  }

  const PhoneNumber._({required this.value});
}

// Value Object for Phone Code
class PhoneCode extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PhoneCode({required String phoneCode}) {
    return PhoneCode._(
      value: validatePhoneCode(phoneCode: phoneCode),
    );
  }

  const PhoneCode._({required this.value});
}

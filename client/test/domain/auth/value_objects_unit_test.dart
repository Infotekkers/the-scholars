import 'package:client/domain/auth/value_objects.dart';
import 'package:client/domain/core/failures.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // * EMAIL ADDRESS TEST
  test("Email address should return the valid email address as string.", () {
    final EmailAddress emailAddress = EmailAddress("test@scholars.com");
    expect(emailAddress.value.fold((l) => l, (r) => r), "test@scholars.com");
  });
  test("Email address should return an empty value failure.", () {
    final EmailAddress emailAddress = EmailAddress("");
    expect(emailAddress.value.fold((l) => l, (r) => r), const ValueFailure.empty(failedValue: ""));
  });
  test("Email address should return an invalid email address value failure.", () {
    final EmailAddress emailAddress = EmailAddress("testing101");
    expect(emailAddress.value.fold((l) => l, (r) => r), const ValueFailure.invalidEmail(failedValue: "testing101"));
  });
}
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

  // * PASSWORD TEST
  test("Password should return the valid password as string.", () {
    final Password password = Password("Test4Scholars!");
    expect(password.value.fold((l) => l, (r) => r), "Test4Scholars!");
  });
  test("Password should return the empty value failure.", () {
    final Password password = Password("");
    expect(password.value.fold((l) => l, (r) => r), const ValueFailure.empty(failedValue: ""));
  });
  test("Password should return the short password value failure.", () {
    final Password password = Password("test");
    expect(password.value.fold((l) => l, (r) => r), const ValueFailure.shortPassword(failedValue: "test"));
  });
  test("Password should return the invalid password value failure.", () {
    final Password password = Password("testingatscholars");
    expect(password.value.fold((l) => l, (r) => r), const ValueFailure.invalidPassword(failedValue: "testingatscholars"));
  });
}
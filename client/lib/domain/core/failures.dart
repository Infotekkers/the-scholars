import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "failures.freezed.dart";

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  // TODO: Add more failures
  // Auth Failures
  const factory ValueFailure.empty({required T failedValue}) = Empty<T>;
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.invalidUsername({
    required T failedValue,
  }) = InvalidUsername<T>;
  const factory ValueFailure.invalidPassword({
    required T failedValue,
  }) = InvalidPassword<T>;

  const factory ValueFailure.invalidRole() = _InvalidRole;

  // Announcement Failures
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int max,
  }) = ExceedingLength<T>;

  const factory ValueFailure.multiline({required T failedValue}) = Multiline<T>;
  const factory ValueFailure.invalidDate({required T failedValue}) =
      InvalidDate<T>;

  // ignore: slash_for_doc_comments
  /**
   * Application Failures
   */
  const factory ValueFailure.invalidApplication({
    required T failedValue,
  }) = InvalidApplication<T>;

  const factory ValueFailure.emptyApplication({
    required T failedValue,
  }) = EmptyApplication<T>;

  const factory ValueFailure.incompleteApplication({
    required T failedValue,
  }) = IncompleteApplication<T>;

  const factory ValueFailure.generalError() = GeneralError;

  // ignore: slash_for_doc_comments
  /**
   * Full Name Validation
   */
  // If Only Lastname/FirstName --- SPACE NEEDED
  const factory ValueFailure.fullNameInvalidFormat() = _InvalidFormat;
  // If Empty
  const factory ValueFailure.fullNameEmptyValue() = _EmptyValue;
  // If Initials are use
  const factory ValueFailure.fullNameInvalidLength() = _InvalidLength;

  // ignore: slash_for_doc_comments
  /**
   * BirthDate Validation
   */
  const factory ValueFailure.emptyBirthDate() = _EmptyBirthDate;
  // BirthDate Validation
  const factory ValueFailure.birthDateInvalid() = _InvalidBirthDate;

  // Gender Validation
  const factory ValueFailure.emptyGender() = _EmptyGender;
  const factory ValueFailure.invalidGender() = _InvalidGender;

  // Country Validation
  const factory ValueFailure.emptyLocation() = _EmptyLocation;
  const factory ValueFailure.invalidLocation() = _InvalidLocation;
  // Phone Number Validation
  const factory ValueFailure.emptyPhoneNumber() = _EmptyPhoneNumber;
  const factory ValueFailure.invalidPhoneNumber() = _InvalidPhoneNumber;
  const factory ValueFailure.shortPhoneNumber() = _ShortPhoneNumber;
  const factory ValueFailure.exceedingPhoneNumber() = _ExceedingPhoneNumber;

  // Phone Code Validation
  const factory ValueFailure.invalidPhoneCode() = _InvalidPhoneCode;
  const factory ValueFailure.emptyPhoneCode() = _EmptyPhoneCode;

  /**
   * Common Value Failures
   */

  // ignore: slash_for_doc_comments
  /**
   * Application Value Failures
   */

  // File Failures
  const factory ValueFailure.emptyFile({required String failedValue}) =
      _EmptyFile;
  const factory ValueFailure.invalidFileFormat({required String failedValue}) =
      _InvalidFileFormat;

  // Proficinecy Test Validation
  const factory ValueFailure.emptyProficencyTestUrl() = _EmptyTestUrl;
  const factory ValueFailure.invalidProficencyTestUrl() = _InvalidTestUrl;

// Military Family Status Validation
  const factory ValueFailure.invalidMilitaryFamilyStatus() =
      _InvalidMilitaryFamilyStatus;

// University Family Status Validation
  const factory ValueFailure.invalidUniversityFamilyStatus() =
      _InvalidUniversityFamilyStatus;

  // Extra Essay Validation
  const factory ValueFailure.emptyExtraEssay() = _EmptyExtraEssay;
  const factory ValueFailure.veryShortExtraEssay() = _VeryShortExtraEssay;
  const factory ValueFailure.exceedingLengthExtraEssay() =
      _ExceedingLengthExtraEssay;

  const factory ValueFailure.invalidAdmissionStatus({required T failedValue}) =
      InvalidAdmissionStatus;

  // Department Selection Validation
  const factory ValueFailure.emptyDepartmentSelection() =
      _EmptyDepartmentSelection;
}

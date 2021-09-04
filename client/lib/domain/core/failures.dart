import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "failures.freezed.dart";

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  // TODO: Add more failures
  const factory ValueFailure.empty({required T failedValue}) = Empty<T>;
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.invalidPassword({
    required T failedValue,
  }) = InvalidPassword<T>;
  const factory ValueFailure.exceedingLength({
    required T failedValue,
  }) = ExceedingLength<T>;

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
}

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "failures.freezed.dart";

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  // TODO: Add more failures
  const factory ValueFailure.empty({ 
    required T failedValue 
  }) = Empty<T>;
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.exceedingLength({
    required T failedValue,
  }) = ExceedingLength<T>;
}

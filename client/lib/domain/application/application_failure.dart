import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_failure.freezed.dart';

@freezed
abstract class ApplicationFailure with _$ApplicationFailure {
  // Application Failures
  const factory ApplicationFailure.invalidApplication() = InvalidApplication;
}

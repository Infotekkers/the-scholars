import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_failure.freezed.dart';

@freezed
abstract class ApplicationFailure with _$ApplicationFailure {
  // Application Failures
  const factory ApplicationFailure.invalidApplication() = InvalidApplication;
  const factory ApplicationFailure.emptyApplication() = EmptyApplication;
  const factory ApplicationFailure.incompleteApplication() =
      IncompleteApplication;

// Complete Application Errors
  const factory ApplicationFailure.databaseError() = DatabaseError;
  const factory ApplicationFailure.duplicateApplication() =
      DuplicateApplication;
  const factory ApplicationFailure.noConnection() = NoConnection;
  const factory ApplicationFailure.serverError() = ServerError;
}

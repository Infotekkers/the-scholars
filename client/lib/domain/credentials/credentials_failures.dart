import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials_failures.freezed.dart';

@freezed
abstract class CredentialFailure with _$CredentialFailure {
  const factory CredentialFailure.serverError() = _ServerError;

  // Implement Other Failures
  const factory CredentialFailure.invalidAuth() = _InvalidAuth;
}

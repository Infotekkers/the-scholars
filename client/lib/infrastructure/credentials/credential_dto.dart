import 'package:client/domain/auth/value_objects.dart';
import 'package:client/domain/credentials/credentials.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credential_dto.freezed.dart';
part 'credential_dto.g.dart';

@freezed
abstract class CredentialPasswordDto implements _$CredentialPasswordDto {
  const CredentialPasswordDto._();

  const factory CredentialPasswordDto({
    required String currentEmail,
    required String currentPassword,
    required String newPassword,
  }) = _CredentialPasswordDto;

  factory CredentialPasswordDto.fromDomain(
          {required CredentialsPassword credentialsPassword}) =>
      CredentialPasswordDto(
        currentEmail: credentialsPassword.currentEmailAddress.isValid()
            ? credentialsPassword.currentEmailAddress.getOrCrash().toString()
            : "",
        currentPassword: credentialsPassword.currentPassword.isValid()
            ? credentialsPassword.currentPassword.getOrCrash().toString()
            : "",
        newPassword: credentialsPassword.newPassword.isValid()
            ? credentialsPassword.newPassword.getOrCrash().toString()
            : "",
      );

  CredentialsPassword toDomain() => CredentialsPassword(
        currentEmailAddress: EmailAddress(currentEmail),
        newPassword: Password(newPassword),
        currentPassword: Password(currentPassword),
      );

  factory CredentialPasswordDto.fromJson(Map<String, dynamic> json) =>
      _$CredentialPasswordDtoFromJson(json);
}

@freezed
abstract class CredentialEmailDto implements _$CredentialEmailDto {
  const CredentialEmailDto._();

  const factory CredentialEmailDto({
    required String currentEmail,
    required String newEmail,
    required String currentPassword,
  }) = _CredentialEmailDto;

  factory CredentialEmailDto.fromDomain(
          {required CredentialsEmail credentialsEmail}) =>
      CredentialEmailDto(
        currentEmail: credentialsEmail.currentEmailAddress.isValid()
            ? credentialsEmail.currentEmailAddress.getOrCrash().toString()
            : "",
        currentPassword: credentialsEmail.currentPassword.isValid()
            ? credentialsEmail.currentPassword.getOrCrash().toString()
            : "",
        newEmail: credentialsEmail.newEmail.isValid()
            ? credentialsEmail.newEmail.getOrCrash().toString()
            : "",
      );

  CredentialsEmail toDomain() => CredentialsEmail(
        currentEmailAddress: EmailAddress(currentEmail),
        newEmail: EmailAddress(newEmail),
        currentPassword: Password(currentPassword),
      );

  factory CredentialEmailDto.fromJson(Map<String, dynamic> json) =>
      _$CredentialEmailDtoFromJson(json);
}

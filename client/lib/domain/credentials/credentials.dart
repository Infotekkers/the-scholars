import 'package:client/domain/auth/value_objects.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials.freezed.dart';

@freezed
abstract class CredentialsPassword with _$CredentialsPassword {
  const factory CredentialsPassword({
    required EmailAddress currentEmailAddress,
    required Password newPassword,
    required Password currentPassword,
  }) = _CredentialsPassword;
}

@freezed
abstract class CredentialsEmail with _$CredentialsEmail {
  const factory CredentialsEmail({
    required EmailAddress currentEmailAddress,
    required EmailAddress newEmail,
    required Password currentPassword,
  }) = _CredentialsEmail;
}

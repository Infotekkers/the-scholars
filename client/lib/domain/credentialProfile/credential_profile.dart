import 'package:client/domain/auth/value_objects.dart';
import 'package:client/domain/core/value_objects.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// part 'credential_profile.freezed.dart';
part 'credential.freezed.dart';

@freezed
abstract class CredentialProfile with _$CredentialProfile {
  const factory CredentialProfile({
    required EmailAddress emailAddress,
    required Password password,
  }) = _CredentialProfile;
}
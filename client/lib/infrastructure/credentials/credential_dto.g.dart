// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credential_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CredentialPasswordDto _$_$_CredentialPasswordDtoFromJson(
    Map<String, dynamic> json) {
  return _$_CredentialPasswordDto(
    currentEmail: json['currentEmail'] as String,
    currentPassword: json['currentPassword'] as String,
    newPassword: json['newPassword'] as String,
  );
}

Map<String, dynamic> _$_$_CredentialPasswordDtoToJson(
        _$_CredentialPasswordDto instance) =>
    <String, dynamic>{
      'currentEmail': instance.currentEmail,
      'currentPassword': instance.currentPassword,
      'newPassword': instance.newPassword,
    };

_$_CredentialEmailDto _$_$_CredentialEmailDtoFromJson(
    Map<String, dynamic> json) {
  return _$_CredentialEmailDto(
    currentEmail: json['currentEmail'] as String,
    newEmail: json['newEmail'] as String,
    currentPassword: json['currentPassword'] as String,
  );
}

Map<String, dynamic> _$_$_CredentialEmailDtoToJson(
        _$_CredentialEmailDto instance) =>
    <String, dynamic>{
      'currentEmail': instance.currentEmail,
      'newEmail': instance.newEmail,
      'currentPassword': instance.currentPassword,
    };

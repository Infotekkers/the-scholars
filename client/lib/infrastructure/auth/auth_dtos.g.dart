// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$_$_UserDtoFromJson(Map<String, dynamic> json) {
  return _$_UserDto(
    emailAddress: json['emailAddress'] as String? ?? '',
    password: json['password'] as String? ?? '',
    role: json['role'] as String? ?? '',
    name: json['name'] as String? ?? '',
    token: json['token'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'password': instance.password,
      'role': instance.role,
      'name': instance.name,
      'token': instance.token,
    };

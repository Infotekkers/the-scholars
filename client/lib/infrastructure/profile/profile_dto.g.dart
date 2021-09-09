// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplicationProfileDto _$_$_ApplicationProfileDtoFromJson(
    Map<String, dynamic> json) {
  return _$_ApplicationProfileDto(
    fullName: json['fullName'] as String,
    birthDate: json['birthDate'] as String,
    gender: json['gender'] as String,
    location: json['location'] as String,
    phoneCode: json['phoneCode'] as String,
    phoneNumber: json['phoneNumber'] as String,
  );
}

Map<String, dynamic> _$_$_ApplicationProfileDtoToJson(
        _$_ApplicationProfileDto instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'birthDate': instance.birthDate,
      'gender': instance.gender,
      'location': instance.location,
      'phoneCode': instance.phoneCode,
      'phoneNumber': instance.phoneNumber,
    };

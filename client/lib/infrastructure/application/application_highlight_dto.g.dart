// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_highlight_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplicationHighlightDto _$_$_ApplicationHighlightDtoFromJson(
    Map<String, dynamic> json) {
  return _$_ApplicationHighlightDto(
    applicationId: json['applicationId'] as String,
    name: json['name'] as String,
    admissionStatus: json['admissionStatus'] as String,
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$_$_ApplicationHighlightDtoToJson(
        _$_ApplicationHighlightDto instance) =>
    <String, dynamic>{
      'applicationId': instance.applicationId,
      'name': instance.name,
      'admissionStatus': instance.admissionStatus,
      'date': instance.date,
    };

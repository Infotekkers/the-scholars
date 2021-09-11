// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnnouncementDto _$_$_AnnouncementDtoFromJson(Map<String, dynamic> json) {
  return _$_AnnouncementDto(
    id: json['id'] as String,
    title: json['title'] as String,
    body: json['body'] as String,
    date: json['date'] as String,
  );
}

Map<String, dynamic> _$_$_AnnouncementDtoToJson(_$_AnnouncementDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'date': instance.date,
    };

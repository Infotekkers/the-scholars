// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnnouncementDto _$_$_AnnouncementDtoFromJson(Map<String, dynamic> json) {
  return _$_AnnouncementDto(
    title: json['title'] as String,
    body: json['body'] as String,
    postdate: json['postdate'] as String,
  );
}

Map<String, dynamic> _$_$_AnnouncementDtoToJson(_$_AnnouncementDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'postdate': instance.postdate,
    };

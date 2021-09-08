// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApplicationDto _$_$_ApplicationDtoFromJson(Map<String, dynamic> json) {
  return _$_ApplicationDto(
    schoolTranscript: json['schoolTranscript'] as String,
    mainEssay: json['mainEssay'] as String,
    extraEssay: json['extraEssay'] as String,
    departmentSelection: json['departmentSelection'] as String,
    extraCertification: json['extraCertification'] as String,
    proficencyTest: json['proficencyTest'] as String,
    recomendationLetter: json['recomendationLetter'] as String,
    militaryFamilyStatus: json['militaryFamilyStatus'] as String,
    universityFamilyStatus: json['universityFamilyStatus'] as String,
  );
}

Map<String, dynamic> _$_$_ApplicationDtoToJson(_$_ApplicationDto instance) =>
    <String, dynamic>{
      'schoolTranscript': instance.schoolTranscript,
      'mainEssay': instance.mainEssay,
      'extraEssay': instance.extraEssay,
      'departmentSelection': instance.departmentSelection,
      'extraCertification': instance.extraCertification,
      'proficencyTest': instance.proficencyTest,
      'recomendationLetter': instance.recomendationLetter,
      'militaryFamilyStatus': instance.militaryFamilyStatus,
      'universityFamilyStatus': instance.universityFamilyStatus,
    };

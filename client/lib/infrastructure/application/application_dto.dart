import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_dto.freezed.dart';
part 'application_dto.g.dart';

@freezed
abstract class ApplicationDto implements _$ApplicationDto {
  const ApplicationDto._();

  const factory ApplicationDto({
    required String schoolTranscript,
    required String mainEssay,
    required String extraEssay,
    required List<dynamic> departmentSelection,
    required String extraCertification,
    required String proficencyTest,
    required String recomendationLetter,
    required String militaryFamilyStatus,
    required String universityFamilyStatus,
  }) = _ApplicationDto;

  factory ApplicationDto.fromJson(Map<String, dynamic> json) =>
      _$ApplicationDtoFromJson(json);
}

import 'dart:convert';
import 'dart:io';

import 'package:client/domain/application/application.dart';
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

  factory ApplicationDto.fromDomain({required Application application}) =>
      ApplicationDto(
        schoolTranscript: application.schoolTranscript.isValid()
            ? base64Encode(
                File(application.schoolTranscript.getOrCrash().toString())
                    .readAsBytesSync(),
              )
            : "",
        mainEssay: application.mainEssay.isValid()
            ? base64Encode(
                File(application.mainEssay.getOrCrash().toString())
                    .readAsBytesSync(),
              )
            : "",
        extraEssay: application.extraEssay.isValid()
            ? application.extraCertification.getOrCrash().toString()
            : "",
        extraCertification: application.extraCertification.isValid()
            ? base64Encode(
                File(application.extraCertification.getOrCrash().toString())
                    .readAsBytesSync(),
              )
            : "",
        proficencyTest: application.proficencyTest.isValid()
            ? application.proficencyTest.getOrCrash().toString()
            : "",
        recomendationLetter: application.recomendationLetter.isValid()
            ? base64Encode(
                File(application.recomendationLetter.getOrCrash().toString())
                    .readAsBytesSync(),
              )
            : "",
        militaryFamilyStatus: application.militaryFamilyStatus.isValid()
            ? application.militaryFamilyStatus.getOrCrash().toString()
            : "",
        universityFamilyStatus: application.universityFamilyStatus.isValid()
            ? application.universityFamilyStatus.getOrCrash().toString()
            : "",
        departmentSelection: [],
      );

   Application toDomain() => Application(
        schoolTranscript:
            SchoolTranscript(schoolTranscriptPath: schoolTranscript),
        mainEssay: MainEssay(mainEssayPath: "Essay Uploaded"),
        extraEssay: ExtraEssay(extraEssayPath: extraEssay),
        departmentSelection:
            DepartmentSelection(departmentSelection: departmentSelection),
        extraCertification: ExtraCertification(
            extraCertificationPath: "Certification Uploaded"),
        proficencyTest: ProficencyTest(proficiencyUrl: proficencyTest),
        recomendationLetter: RecomendationLetter(
            recomendationLetterPath: "Reccomendation Uploaded"),
        militaryFamilyStatus:
            MilitaryFamilyStatus(militaryFamilyStatus: militaryFamilyStatus),
        universityFamilyStatus: UniversityFamilyStatus(
            universityFamilyStatus: universityFamilyStatus),
      );
  
  factory ApplicationDto.fromJson(Map<String, dynamic> json) =>
      _$ApplicationDtoFromJson(json);
}

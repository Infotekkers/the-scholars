import 'package:client/domain/application/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'application.freezed.dart';

@freezed
abstract class Application with _$Application {
  // Constructor
  const factory Application({
    required SchoolTranscript schoolTranscript,
    required MainEssay mainEssay,
    required ExtraEssay extraEssay,
    required DepartmentSelection departmentSelection,
    required ExtraCertification extraCertification,
    required ProficencyTest proficencyTest,
    required RecomendationLetter recomendationLetter,
    required MilitaryFamilyStatus militaryFamilyStatus,
    required UniversityFamilyStatus universityFamilyStatus,
  }) = _Application;

  // Inital Application Creator
  factory Application.initial() => Application(
        schoolTranscript: SchoolTranscript(schoolTranscriptPath: ""),
        mainEssay: MainEssay(mainEssayPath: ""),
        extraEssay: ExtraEssay(extraEssayPath: ""),
        departmentSelection:
            DepartmentSelection(departmentSelection: "Information Technology"),
        extraCertification: ExtraCertification(extraCertificationPath: ""),
        proficencyTest: ProficencyTest(
          proficiencyUrl: "",
        ),
        recomendationLetter: RecomendationLetter(recomendationLetterPath: ""),
        militaryFamilyStatus: MilitaryFamilyStatus(militaryFamilyStatus: ""),
        universityFamilyStatus:
            UniversityFamilyStatus(universityFamilyStatus: ""),
      );
}

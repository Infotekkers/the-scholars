part of 'application_bloc.dart';

@freezed
abstract class ApplicationState with _$ApplicationState {
  const factory ApplicationState({
    required SchoolTranscript schoolTranscript,
    required MainEssay mainEssay,
    required ExtraEssay extraEssay,
    required ProficencyTest proficencyTest,
    required ExtraCertification extraCertification,
    required RecomendationLetter recomendationLetter,
    required MilitaryFamilyStatus militaryFamilyStatus,
    required UniversityFamilyStatus universityFamilyStatus,
    required DepartmentSelection departmentSelection,
    required bool isSubmitting,
    required bool isApplicationPending,
    required bool showErrorMessages,
    required bool isApplicationCached,
    required bool isPreparingDownload,
    required bool isDownloadComplete,
    required double recievedAmount,
    required double totalAmount,
    required Option<Either<ApplicationFailure, Application>>
        applicationFailureOrSuccess,
    required Option<Either<ValueFailure, dynamic>> valueFailureOrSuccess,
  }) = _ApplicationState;

  factory ApplicationState.initial() => ApplicationState(
        departmentSelection:
            DepartmentSelection(departmentSelection: "Computer Science"),
        schoolTranscript:
            SchoolTranscript(schoolTranscriptPath: "Please Select a File"),
        mainEssay: MainEssay(mainEssayPath: "Please Select a File"),
        extraEssay: ExtraEssay(extraEssayPath: "Please Select a File"),
        proficencyTest: ProficencyTest(proficiencyUrl: "Please Select a File"),
        recomendationLetter: RecomendationLetter(
            recomendationLetterPath: "Please Select a File"),
        militaryFamilyStatus: MilitaryFamilyStatus(militaryFamilyStatus: "no"),
        universityFamilyStatus:
            UniversityFamilyStatus(universityFamilyStatus: "no"),
        extraCertification:
            ExtraCertification(extraCertificationPath: "Please Select a File"),
        isSubmitting: false,
        showErrorMessages: false,
        isApplicationPending: false,
        isApplicationCached: false,
        isPreparingDownload: false,
        isDownloadComplete: false,
        recievedAmount: 0.0,
        totalAmount: 1.0,
        applicationFailureOrSuccess: none(),
        valueFailureOrSuccess: none(),
      );
}

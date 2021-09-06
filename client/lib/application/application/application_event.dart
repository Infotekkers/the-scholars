part of 'application_bloc.dart';

@freezed
class ApplicationEvent with _$ApplicationEvent {
  // Event for Initial --incase of reset
  const factory ApplicationEvent.initialEvent() = _InitialApplication;

  // Event for School Transcript
  const factory ApplicationEvent.schoolTranscriptChanged(
      String schoolTranscriptPath) = _SchoolTranscriptChanged;

// Event for Letter
  const factory ApplicationEvent.reccomnedationLetterChanged(
      String reccomendationLetterPath) = _ReccomendationLetterChanged;

// Event for Main Essay
  const factory ApplicationEvent.mainEssayChanged(String mainEssayPath) =
      _MainEssayChanged;

// Event for Certifcation
  const factory ApplicationEvent.extraCertificationChanged(
      String extraCertificationPath) = _ExtraCertificationChanged;

// Event for Extra Essay
  const factory ApplicationEvent.extraEssayChanged(String extraEssay) =
      _ExtraEssay;

// Event for Military Family Status
  const factory ApplicationEvent.militaryStatusChanged(String militaryStatus) =
      _MilitaryStatusChanged;

// Event for University Family Status
  const factory ApplicationEvent.universityStatusChanged(
      String universityStatus) = _UniversityStatusChanged;

// Event for Test Result Link
  const factory ApplicationEvent.proficiencyUrlChanged(String testUrl) =
      _ProficiencyChanged;

  // Event for Department Selection
  const factory ApplicationEvent.departmentSelectionChanged(
      String departmentSelection) = _DepartmentSelectionChanged;

// Event for Submission
  const factory ApplicationEvent.submitApplicationClicked() =
      _SubmitApplicationClicked;
  // First Page Complete
  const factory ApplicationEvent.firstPageComplete() = _FirstPageComplete;

  // Check Cache Status
  const factory ApplicationEvent.checkCacheApplication() =
      _CheckApplicationCache;
}

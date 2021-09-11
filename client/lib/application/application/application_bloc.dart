import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/domain/application/application.dart';
import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/i_application_repository.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:client/domain/core/failures.dart';
import 'package:client/infrastructure/application/application_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'application_event.dart';
part 'application_state.dart';
part 'application_bloc.freezed.dart';

@lazySingleton
class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  // ignore: unused_field
  final IApplicationRepository _iApplicationRepository;
  ApplicationBloc(this._iApplicationRepository)
      : super(ApplicationState.initial());

  @override
  Stream<ApplicationState> mapEventToState(
    ApplicationEvent event,
  ) async* {
    yield* event.map(
      initialEvent: (e) async* {
        // Get Pending status
        final Either<ApplicationFailure, bool> failureOrSuccess =
            await _iApplicationRepository.isAppicationPending();

        if (failureOrSuccess.isLeft()) {
          yield ApplicationState.initial();
        } else {
          bool value = false;
          failureOrSuccess.fold((l) => null, (r) => value = r);
          yield ApplicationState.initial()
              .copyWith(isApplicationPending: value);
        }
      },
      schoolTranscriptChanged: (e) async* {
        yield state.copyWith(
          schoolTranscript:
              SchoolTranscript(schoolTranscriptPath: e.schoolTranscriptPath),
          showErrorMessages: true,
          applicationFailureOrSuccess: none(),
          isSubmitting: false,
        );
      },
      reccomnedationLetterChanged: (e) async* {
        yield state.copyWith(
          recomendationLetter: RecomendationLetter(
            recomendationLetterPath: e.reccomendationLetterPath,
          ),
          showErrorMessages: true,
          applicationFailureOrSuccess: none(),
          isSubmitting: false,
        );
      },
      mainEssayChanged: (e) async* {
        yield state.copyWith(
          mainEssay: MainEssay(mainEssayPath: e.mainEssayPath),
          showErrorMessages: true,
          isSubmitting: false,
        );
      },
      extraEssayChanged: (e) async* {
        yield state.copyWith(
          extraEssay: ExtraEssay(extraEssayPath: e.extraEssay),
          showErrorMessages: true,
          applicationFailureOrSuccess: none(),
          isSubmitting: false,
        );
      },
      militaryStatusChanged: (e) async* {
        yield state.copyWith(
          militaryFamilyStatus:
              MilitaryFamilyStatus(militaryFamilyStatus: e.militaryStatus),
          showErrorMessages: true,
          isSubmitting: false,
        );
      },
      universityStatusChanged: (e) async* {
        yield state.copyWith(
          universityFamilyStatus: UniversityFamilyStatus(
              universityFamilyStatus: e.universityStatus),
          isSubmitting: false,
          showErrorMessages: true,
        );
      },
      proficiencyUrlChanged: (e) async* {
        yield state.copyWith(
          proficencyTest: ProficencyTest(proficiencyUrl: e.testUrl),
          showErrorMessages: true,
          applicationFailureOrSuccess: none(),
          isSubmitting: false,
        );
      },
      extraCertificationChanged: (e) async* {
        yield state.copyWith(
          extraCertification: ExtraCertification(
              extraCertificationPath: e.extraCertificationPath),
          showErrorMessages: true,
          applicationFailureOrSuccess: none(),
          isSubmitting: false,
        );
      },
      submitApplicationClicked: (e) async* {
        Application application;
        // ignore: unused_local_variable
        Either<ApplicationFailure, Application> failureOrSuccess;
        // Check Values Validity
        final isProficencyTestUrlValid = state.proficencyTest.isValid();

        final isMilitaryFamilyStatusValid =
            state.militaryFamilyStatus.isValid();

        final isUniversityFamilyStatusValid =
            state.universityFamilyStatus.isValid();

        final isExtraEssayValid = state.extraEssay.isValid();

        if (isProficencyTestUrlValid &&
            isMilitaryFamilyStatusValid &&
            isUniversityFamilyStatusValid &&
            isExtraEssayValid) {
          yield state.copyWith(
            isSubmitting: true,
            applicationFailureOrSuccess: none(),
          );

          application = Application(
            schoolTranscript: state.schoolTranscript,
            mainEssay: state.mainEssay,
            departmentSelection: state.departmentSelection,
            extraCertification: state.extraCertification,
            proficencyTest: state.proficencyTest,
            extraEssay: state.extraEssay,
            militaryFamilyStatus: state.militaryFamilyStatus,
            universityFamilyStatus: state.universityFamilyStatus,
            recomendationLetter: state.recomendationLetter,
          );

          failureOrSuccess = await _iApplicationRepository
              .createServerApplication(application: application);
          yield state.copyWith(
            isSubmitting: false,
            applicationFailureOrSuccess: optionOf(failureOrSuccess),
          );
        } else {
          late ValueFailure valueSuccessOrFailure;
          if (!isProficencyTestUrlValid) {
            state.proficencyTest.value.fold(
              (l) => valueSuccessOrFailure = l,
              (r) => const ValueFailure.generalError(),
            );
          } else if (!isMilitaryFamilyStatusValid) {
            state.militaryFamilyStatus.value.fold(
              (l) => valueSuccessOrFailure = l,
              (r) => const ValueFailure.generalError(),
            );
          } else if (!isUniversityFamilyStatusValid) {
            state.universityFamilyStatus.value.fold(
              (l) => valueSuccessOrFailure = l,
              (r) => const ValueFailure.generalError(),
            );
          } else if (!isExtraEssayValid) {
            state.extraEssay.value.fold(
              (l) => valueSuccessOrFailure = l,
              (r) => const ValueFailure.generalError(),
            );
          }

          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            valueFailureOrSuccess: some(
              left(valueSuccessOrFailure),
            ),
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: false,
          valueFailureOrSuccess: some(
            left(
              const ValueFailure.generalError(),
            ),
          ),
        );
      },
      firstPageComplete: (e) async* {
        // Start Loading Animation
        yield state.copyWith(
          isSubmitting: true,
          showErrorMessages: false,
        );

        // Check Validity of Selected Documents
        final isSchoolTranscriptValid = state.schoolTranscript.isValid() &&
            state.schoolTranscript.value.fold(
              (l) => true,
              (r) {
                // Check to see if value is initial place holder
                return r != "Please Select a File";
              },
            );
        final isMainEssayValid = state.mainEssay.isValid() &&
            state.mainEssay.value.fold(
              (l) => true,
              (r) {
                return r != "Please Select a File";
              },
            );
        final isExtraCertificationValid = state.extraCertification.isValid() &&
            state.extraCertification.value.fold(
              (l) => true,
              (r) {
                return r != "Please Select a File";
              },
            );
        final isRecommendationLetterValid =
            state.recomendationLetter.isValid() &&
                state.recomendationLetter.value.fold(
                  (l) => true,
                  (r) {
                    return r != "Please Select a File";
                  },
                );

        // If All Documents Selected and Valid
        if (isSchoolTranscriptValid == true &&
            isMainEssayValid == true &&
            isExtraCertificationValid == true &&
            isRecommendationLetterValid == true) {
          // Create Ap Application
          final Application application = Application(
            schoolTranscript: state.schoolTranscript,
            mainEssay: state.mainEssay,
            departmentSelection: state.departmentSelection,
            extraCertification: state.extraCertification,
            extraEssay: state.extraEssay,
            militaryFamilyStatus: state.militaryFamilyStatus,
            proficencyTest: state.proficencyTest,
            recomendationLetter: state.recomendationLetter,
            universityFamilyStatus: state.universityFamilyStatus,
          );

          // Request For Cache of Profile
          final cacheResult =
              await _iApplicationRepository.saveCacheApplication(
            applicationDto: ApplicationDto.fromDomain(application: application),
          );

          // End Loader Animaction
          yield state.copyWith(
            showErrorMessages: true,
            // isSubmitting: false,
            applicationFailureOrSuccess: optionOf(cacheResult),
          );
        }
        // If not valid
        else {
          late ValueFailure failureOrSuccess;
          if (!isSchoolTranscriptValid) {
            state.schoolTranscript.value.fold(
              (l) => failureOrSuccess = l,
              (r) {
                if (r == "Please Select a File") {
                  failureOrSuccess = const ValueFailure.emptyFile(
                      failedValue: "School Transcript");
                } else {
                  failureOrSuccess = const ValueFailure.invalidFileFormat(
                      failedValue: "School Transcript");
                }
              },
            );
          } else if (!isMainEssayValid) {
            state.mainEssay.value.fold(
              (l) => failureOrSuccess = l,
              (r) {
                if (r == "Please Select a File") {
                  failureOrSuccess =
                      const ValueFailure.emptyFile(failedValue: "Main Essay");
                } else {
                  failureOrSuccess = const ValueFailure.invalidFileFormat(
                      failedValue: "Main Essay");
                }
              },
            );
          } else if (!isExtraCertificationValid) {
            state.extraCertification.value.fold(
              (l) => failureOrSuccess = l,
              (r) {
                if (r == "Please Select a File") {
                  failureOrSuccess = const ValueFailure.emptyFile(
                      failedValue: "Extra Certification");
                } else {
                  failureOrSuccess = const ValueFailure.invalidFileFormat(
                      failedValue: "Extra Certification");
                }
              },
            );
          } else if (!isRecommendationLetterValid) {
            state.recomendationLetter.value.fold(
              (l) => failureOrSuccess = l,
              (r) {
                if (r == "Please Select a File") {
                  failureOrSuccess = const ValueFailure.emptyFile(
                      failedValue: "Recommendation Letter");
                } else {
                  failureOrSuccess = const ValueFailure.invalidFileFormat(
                      failedValue: "Reccomendation Letter");
                }
              },
            );
          } else {
            failureOrSuccess = const ValueFailure.generalError();
          }

          // End Loading Spinner
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            valueFailureOrSuccess: some(
              left(failureOrSuccess),
            ),
          );
        }

        // Reset State for re validation
        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          valueFailureOrSuccess: some(
            left(
              const ValueFailure.generalError(),
            ),
          ),
        );
      },
      checkCacheApplication: (e) async* {
        // Check Cache Status
        final cacheResult = await _iApplicationRepository.getCacheApplication();

        bool isApplicationCached = false;

        // If Cache is not empty
        if (cacheResult.isNotEmpty) {
          isApplicationCached = true;
        }
        yield state.copyWith(
          isApplicationCached: isApplicationCached,
        );
      },
      departmentSelectionChanged: (e) async* {
        yield state.copyWith(
          departmentSelection:
              DepartmentSelection(departmentSelection: e.departmentSelection),
        );
      },
      downloadComplete: (e) async* {
        yield state.copyWith(
          isDownloadComplete: true,
          recievedAmount: 5,
          totalAmount: 5,
        );
      },
      progressDownload: (e) async* {
        yield state.copyWith(
          isPreparingDownload: false,
          recievedAmount: e.recievedAmount,
          totalAmount: e.totalAmount,
        );
      },
      startDownload: (e) async* {
        yield state.copyWith(
          isPreparingDownload: true,
          recievedAmount: 0,
          totalAmount: 1,
        );
        _iApplicationRepository.downloadApplicationFile(
            applicationId: e.applicationId);
      },
    );
  }
}

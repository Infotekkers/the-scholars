import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/domain/application/application.dart';
import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/i_application_repository.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:client/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'application_event.dart';
part 'application_state.dart';
part 'application_bloc.freezed.dart';

@lazySingleton
class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  final IApplicationRepository _iApplicationRepository;
  ApplicationBloc(this._iApplicationRepository)
      : super(ApplicationState.initial());

  @override
  Stream<ApplicationState> mapEventToState(
    ApplicationEvent event,
  ) async* {
    yield* event.map(
      initialEvent: (e) async* {
        // Return Inital State -- empty state
        yield ApplicationState.initial();
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
      submitApplicationClicked: (e) async* {},
    );
  }
}

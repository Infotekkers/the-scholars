import 'package:bloc_test/bloc_test.dart';
import 'package:client/application/applications_overview_actor/applications_overview_actor_bloc.dart';
import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/application_highlight.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:client/infrastructure/application/api_admin_application_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'applications_overview_actor_bloc_test.mocks.dart';

@GenerateMocks([ApiAdminApplicationRepository])
void main() {
  final MockApiAdminApplicationRepository adminApplicationRepository =
      MockApiAdminApplicationRepository();

  group("Applications Overview Actor bloc", () {
    final ApplicationHighlight applicationHighlight = ApplicationHighlight(
        applicationId: ApplicationId(applicationId: "3"),
        name: Name("Depressed Clown"),
        admissionStatus: AdmissionStatus(admissionStatusStr: "pending"));

    blocTest("should emit nothing.",
        build: () => ApplicationsOverviewActorBloc(adminApplicationRepository),
        expect: () => const []);
    blocTest<ApplicationsOverviewActorBloc, ApplicationsOverviewActorState>(
        "should emit action succeeded (accepted).",
        build: () {
          when(adminApplicationRepository.updateServerApplicationAdmin(
                  applicationHighlight: applicationHighlight.copyWith(
                      admissionStatus:
                          AdmissionStatus(admissionStatusStr: "accepted"))))
              .thenAnswer((_) async => right(unit));
          return ApplicationsOverviewActorBloc(adminApplicationRepository);
        },
        act: (bloc) => bloc
            .add(ApplicationsOverviewActorEvent.accepted(applicationHighlight)),
        expect: () => const [
              ApplicationsOverviewActorState.actionInProgress(),
              ApplicationsOverviewActorState.actionSuccess(),
            ]);
    blocTest<ApplicationsOverviewActorBloc, ApplicationsOverviewActorState>(
        "should emit action succeeded (rejected).",
        build: () {
          when(adminApplicationRepository.updateServerApplicationAdmin(
                  applicationHighlight: applicationHighlight.copyWith(
                      admissionStatus:
                          AdmissionStatus(admissionStatusStr: "rejected"))))
              .thenAnswer((_) async => right(unit));
          return ApplicationsOverviewActorBloc(adminApplicationRepository);
        },
        act: (bloc) => bloc
            .add(ApplicationsOverviewActorEvent.rejected(applicationHighlight)),
        expect: () => const [
              ApplicationsOverviewActorState.actionInProgress(),
              ApplicationsOverviewActorState.actionSuccess(),
            ]);
    blocTest<ApplicationsOverviewActorBloc, ApplicationsOverviewActorState>(
        "should emit action failed because of server error.",
        build: () {
          when(adminApplicationRepository.updateServerApplicationAdmin(
                  applicationHighlight: applicationHighlight.copyWith(
                      admissionStatus:
                          AdmissionStatus(admissionStatusStr: "accepted"))))
              .thenAnswer(
                  (_) async => left(const ApplicationFailure.serverError()));
          return ApplicationsOverviewActorBloc(adminApplicationRepository);
        },
        act: (bloc) => bloc
            .add(ApplicationsOverviewActorEvent.accepted(applicationHighlight)),
        expect: () => const [
              ApplicationsOverviewActorState.actionInProgress(),
              ApplicationsOverviewActorState.actionFailure(
                  ApplicationFailure.serverError()),
            ]);
    blocTest<ApplicationsOverviewActorBloc, ApplicationsOverviewActorState>(
        "should emit action failed because of no connection.",
        build: () {
          when(adminApplicationRepository.updateServerApplicationAdmin(
                  applicationHighlight: applicationHighlight.copyWith(
                      admissionStatus:
                          AdmissionStatus(admissionStatusStr: "accepted"))))
              .thenAnswer(
                  (_) async => left(const ApplicationFailure.noConnection()));
          return ApplicationsOverviewActorBloc(adminApplicationRepository);
        },
        act: (bloc) => bloc
            .add(ApplicationsOverviewActorEvent.accepted(applicationHighlight)),
        expect: () => const [
              ApplicationsOverviewActorState.actionInProgress(),
              ApplicationsOverviewActorState.actionFailure(
                  ApplicationFailure.noConnection()),
            ]);
  });
}

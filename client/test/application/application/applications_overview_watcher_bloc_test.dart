import 'package:bloc_test/bloc_test.dart';
import 'package:client/application/applications_overview_watcher/applications_overview_watcher_bloc.dart';
import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/application_highlight.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:client/infrastructure/application/api_admin_application_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'applications_overview_watcher_bloc_test.mocks.dart';

@GenerateMocks([ApiAdminApplicationRepository])
void main() {
  final MockApiAdminApplicationRepository adminApplicationRepository =
      MockApiAdminApplicationRepository();

  group("Applications Overview Watcher bloc", () {
    final mockApps = [
      ApplicationHighlight(
          applicationId: ApplicationId(applicationId: "123"),
          name: Name("Hello Msg"),
          admissionStatus: AdmissionStatus(admissionStatusStr: "pending")),
      ApplicationHighlight(
          applicationId: ApplicationId(applicationId: "32"),
          name: Name("Hello Msg"),
          admissionStatus: AdmissionStatus(admissionStatusStr: "accepted")),
      ApplicationHighlight(
          applicationId: ApplicationId(applicationId: "213"),
          name: Name("Hello Msg"),
          admissionStatus: AdmissionStatus(admissionStatusStr: "rejected")),
    ];

    blocTest<ApplicationsOverviewWatcherBloc, ApplicationsOverviewWatcherState>(
        "should emit nothing.",
        build: () =>
            ApplicationsOverviewWatcherBloc(adminApplicationRepository),
        expect: () => const []);
    blocTest<ApplicationsOverviewWatcherBloc, ApplicationsOverviewWatcherState>(
        "should emit load succeeded.",
        build: () {
          when(adminApplicationRepository.getServerApplicationsAdmin())
              .thenAnswer((_) async => right(mockApps));
          return ApplicationsOverviewWatcherBloc(adminApplicationRepository);
        },
        act: (bloc) =>
            bloc.add(const ApplicationsOverviewWatcherEvent.watchAllStarted()),
        expect: () => [
              const ApplicationsOverviewWatcherState.loadInProgress(),
              ApplicationsOverviewWatcherState.loadSucceeded(mockApps),
            ]);
    blocTest<ApplicationsOverviewWatcherBloc, ApplicationsOverviewWatcherState>(
        "should emit load succeeded with pending application.",
        build: () {
          when(adminApplicationRepository.getServerApplicationsAdmin())
              .thenAnswer((_) async => right(mockApps));
          return ApplicationsOverviewWatcherBloc(adminApplicationRepository);
        },
        act: (bloc) => bloc
            .add(const ApplicationsOverviewWatcherEvent.watchPendingStarted()),
        expect: () => [
              const ApplicationsOverviewWatcherState.loadInProgress(),
              ApplicationsOverviewWatcherState.loadSucceeded([mockApps[0]]),
            ]);
    blocTest<ApplicationsOverviewWatcherBloc, ApplicationsOverviewWatcherState>(
        "should emit load succeeded with accepted applications.",
        build: () {
          when(adminApplicationRepository.getServerApplicationsAdmin())
              .thenAnswer((_) async => right(mockApps));
          return ApplicationsOverviewWatcherBloc(adminApplicationRepository);
        },
        act: (bloc) => bloc
            .add(const ApplicationsOverviewWatcherEvent.watchAcceptedStarted()),
        expect: () => [
              const ApplicationsOverviewWatcherState.loadInProgress(),
              ApplicationsOverviewWatcherState.loadSucceeded([mockApps[1]]),
            ]);
    blocTest<ApplicationsOverviewWatcherBloc, ApplicationsOverviewWatcherState>(
        "should emit load succeeded with rejected applications.",
        build: () {
          when(adminApplicationRepository.getServerApplicationsAdmin())
              .thenAnswer((_) async => right(mockApps));
          return ApplicationsOverviewWatcherBloc(adminApplicationRepository);
        },
        act: (bloc) => bloc
            .add(const ApplicationsOverviewWatcherEvent.watchRejectedStarted()),
        expect: () => [
              const ApplicationsOverviewWatcherState.loadInProgress(),
              ApplicationsOverviewWatcherState.loadSucceeded([mockApps[2]]),
            ]);
    blocTest<ApplicationsOverviewWatcherBloc, ApplicationsOverviewWatcherState>(
        "should emit load failed because of server error.",
        build: () {
          when(adminApplicationRepository.getServerApplicationsAdmin())
              .thenAnswer(
                  (_) async => left(const ApplicationFailure.serverError()));
          return ApplicationsOverviewWatcherBloc(adminApplicationRepository);
        },
        act: (bloc) =>
            bloc.add(const ApplicationsOverviewWatcherEvent.watchAllStarted()),
        expect: () => const [
              ApplicationsOverviewWatcherState.loadInProgress(),
              ApplicationsOverviewWatcherState.loadFailed(
                  ApplicationFailure.serverError()),
            ]);
    blocTest<ApplicationsOverviewWatcherBloc, ApplicationsOverviewWatcherState>(
        "should emit load failed because of no connection.",
        build: () {
          when(adminApplicationRepository.getServerApplicationsAdmin())
              .thenAnswer(
                  (_) async => left(const ApplicationFailure.noConnection()));
          return ApplicationsOverviewWatcherBloc(adminApplicationRepository);
        },
        act: (bloc) =>
            bloc.add(const ApplicationsOverviewWatcherEvent.watchAllStarted()),
        expect: () => const [
              ApplicationsOverviewWatcherState.loadInProgress(),
              ApplicationsOverviewWatcherState.loadFailed(
                  ApplicationFailure.noConnection()),
            ]);
  });
}

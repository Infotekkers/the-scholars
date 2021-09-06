import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/application_highlight.dart';
import 'package:client/domain/application/i_admin_application_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'applications_overview_watcher_event.dart';
part 'applications_overview_watcher_state.dart';

part 'applications_overview_watcher_bloc.freezed.dart';

@injectable
class ApplicationsOverviewWatcherBloc extends Bloc<
    ApplicationsOverviewWatcherEvent, ApplicationsOverviewWatcherState> {
  final IAdminApplicationRepository iAdminApplicationRepository;

  ApplicationsOverviewWatcherBloc(this.iAdminApplicationRepository)
      : super(const ApplicationsOverviewWatcherState.initial());

  @override
  Stream<ApplicationsOverviewWatcherState> mapEventToState(
    ApplicationsOverviewWatcherEvent event,
  ) async* {
    yield* event.map(watchAllStarted: (e) async* {
      yield const ApplicationsOverviewWatcherState.loadInProgress();

      final failureOrSuccess =
          await iAdminApplicationRepository.getServerApplicationsAdmin();

      yield failureOrSuccess.fold(
          (l) => ApplicationsOverviewWatcherState.loadFailed(l),
          (applications) =>
              ApplicationsOverviewWatcherState.loadSucceeded(applications));
    }, watchPendingStarted: (e) async* {
      yield const ApplicationsOverviewWatcherState.loadInProgress();

      final failureOrSuccess =
          await iAdminApplicationRepository.getServerApplicationsAdmin();

      yield failureOrSuccess.fold(
          (l) => ApplicationsOverviewWatcherState.loadFailed(l),
          (applications) => ApplicationsOverviewWatcherState.loadSucceeded(
              sortApplications(
                  applications: applications, criteria: "pending")));
    }, watchAcceptedStarted: (e) async* {
      yield const ApplicationsOverviewWatcherState.loadInProgress();

      final failureOrSuccess =
          await iAdminApplicationRepository.getServerApplicationsAdmin();

      yield failureOrSuccess.fold(
          (l) => ApplicationsOverviewWatcherState.loadFailed(l),
          (applications) => ApplicationsOverviewWatcherState.loadSucceeded(
              sortApplications(
                  applications: applications, criteria: "accepted")));
    }, watchRejectedStarted: (e) async* {
      yield const ApplicationsOverviewWatcherState.loadInProgress();
      final failureOrSuccess =
          await iAdminApplicationRepository.getServerApplicationsAdmin();
      yield failureOrSuccess.fold(
          (l) => ApplicationsOverviewWatcherState.loadFailed(l),
          (applications) => ApplicationsOverviewWatcherState.loadSucceeded(
              sortApplications(
                  applications: applications, criteria: "rejected")));
    });
  }

  List<ApplicationHighlight> sortApplications(
      {required List<ApplicationHighlight> applications,
      required String criteria}) {
    List<ApplicationHighlight> sortedApplications = [];

    for (final application in applications) {
      if (application.admissionStatus.getOrCrash() == criteria) {
        sortedApplications.add(application);
      }
    }

    return sortedApplications;
  }
}

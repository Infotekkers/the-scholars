import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/application_highlight.dart';
import 'package:client/domain/application/i_admin_application_repository.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'applications_overview_actor_event.dart';
part 'applications_overview_actor_state.dart';

part 'applications_overview_actor_bloc.freezed.dart';

@injectable
class ApplicationsOverviewActorBloc extends Bloc<ApplicationsOverviewActorEvent,
    ApplicationsOverviewActorState> {
  final IAdminApplicationRepository iAdminApplicationRepository;

  ApplicationsOverviewActorBloc(this.iAdminApplicationRepository)
      : super(const ApplicationsOverviewActorState.initial());

  @override
  Stream<ApplicationsOverviewActorState> mapEventToState(
    ApplicationsOverviewActorEvent event,
  ) async* {
    yield* event.map(downloaded: (e) async* {
      yield const ApplicationsOverviewActorState.actionInProgress();
      final failureOrSuccess =
          await iAdminApplicationRepository.getServerApplicationAdmin(
              applicationId: e.applicationHighlight.applicationId);
      yield failureOrSuccess.fold(
          (l) => ApplicationsOverviewActorState.actionFailure(l),
          // TODO: Return downloadable pdf
          (r) => const ApplicationsOverviewActorState.actionSuccess());
    }, accepted: (e) async* {
      yield const ApplicationsOverviewActorState.actionInProgress();
      final failureOrSuccess =
          await iAdminApplicationRepository.updateServerApplicationAdmin(
              applicationHighlight: e.applicationHighlight.copyWith(
                  admissionStatus:
                      AdmissionStatus(admissionStatusStr: "accepted")));
      yield failureOrSuccess.fold(
          (l) => ApplicationsOverviewActorState.actionFailure(l),
          (r) => const ApplicationsOverviewActorState.actionSuccess());
    }, rejected: (e) async* {
      yield const ApplicationsOverviewActorState.actionInProgress();
      final failureOrSuccess =
          await iAdminApplicationRepository.updateServerApplicationAdmin(
              applicationHighlight: e.applicationHighlight.copyWith(
                  admissionStatus:
                      AdmissionStatus(admissionStatusStr: "rejected")));
      yield failureOrSuccess.fold(
          (l) => ApplicationsOverviewActorState.actionFailure(l),
          (r) => const ApplicationsOverviewActorState.actionSuccess());
    });
  }
}

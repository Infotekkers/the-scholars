part of 'applications_overview_actor_bloc.dart';

@freezed
abstract class ApplicationsOverviewActorState
    with _$ApplicationsOverviewActorState {
  const factory ApplicationsOverviewActorState.initial() = _Initial;
  const factory ApplicationsOverviewActorState.actionInProgress() =
      _ActionInProgress;
  const factory ApplicationsOverviewActorState.actionSuccess() = _ActionSuccess;
  const factory ApplicationsOverviewActorState.actionFailure(
      ApplicationFailure applicationFailure) = _ActionFailure;
}

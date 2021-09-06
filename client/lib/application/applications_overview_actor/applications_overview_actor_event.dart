part of 'applications_overview_actor_bloc.dart';

@freezed
abstract class ApplicationsOverviewActorEvent
    with _$ApplicationsOverviewActorEvent {
  const factory ApplicationsOverviewActorEvent.downloaded(
      ApplicationHighlight applicationHighlight) = _Downloaded;
  const factory ApplicationsOverviewActorEvent.accepted(
      ApplicationHighlight applicationHighlight) = _Accepted;
  const factory ApplicationsOverviewActorEvent.rejected(
      ApplicationHighlight applicationHighlight) = _Rejected;
}

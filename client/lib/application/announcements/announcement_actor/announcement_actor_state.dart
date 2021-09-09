part of 'announcement_actor_bloc.dart';

@freezed
abstract class AnnouncementActorState with _$AnnouncementActorState {
  const factory AnnouncementActorState.initial() = _Initial;
  const factory AnnouncementActorState.actionInProgress() = _ActionInProgress;
  const factory AnnouncementActorState.deleteFailure(
      AnnouncementFailure announcementFailure) = _DeleteFailure;
  const factory AnnouncementActorState.deleteSuccess() = _DeleteSuccess;
}

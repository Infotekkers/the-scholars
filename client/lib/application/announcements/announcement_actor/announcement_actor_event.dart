part of 'announcement_actor_bloc.dart';

@freezed
abstract class AnnouncementActorEvent with _$AnnouncementActorEvent {
  const factory AnnouncementActorEvent.deleteNote(Announcement announcement) =
      _Deleted;
}

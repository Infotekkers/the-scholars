part of 'announcement_watcher_bloc.dart';

@freezed
abstract class AnnouncementWatcherState with _$AnnouncementWatcherState {
  const factory AnnouncementWatcherState.initial() = _Initial;
  const factory AnnouncementWatcherState.loadInProgress() = _LoadInProgress;
  const factory AnnouncementWatcherState.loadSuccess(
      List<Announcement> annoucements) = _LoadSuccess;
  const factory AnnouncementWatcherState.loadFailure(
      AnnouncementFailure announcementFailure) = _LoadFailure;
}

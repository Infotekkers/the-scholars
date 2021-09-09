part of 'applications_overview_watcher_bloc.dart';

@freezed
abstract class ApplicationsOverviewWatcherEvent
    with _$ApplicationsOverviewWatcherEvent {
  const factory ApplicationsOverviewWatcherEvent.watchAllStarted() =
      _WatchAllStarted;
  const factory ApplicationsOverviewWatcherEvent.watchPendingStarted() =
      _WatchPendingStarted;
  const factory ApplicationsOverviewWatcherEvent.watchAcceptedStarted() =
      _WatchAcceptedStarted;
  const factory ApplicationsOverviewWatcherEvent.watchRejectedStarted() =
      _WatchRejectedStarted;
}

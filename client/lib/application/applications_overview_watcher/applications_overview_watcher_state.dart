part of 'applications_overview_watcher_bloc.dart';

@freezed
abstract class ApplicationsOverviewWatcherState
    with _$ApplicationsOverviewWatcherState {
  const factory ApplicationsOverviewWatcherState.initial() = _Initial;
  const factory ApplicationsOverviewWatcherState.loadInProgress() =
      _LoadInProgress;
  const factory ApplicationsOverviewWatcherState.loadSucceeded(
      List<ApplicationHighlight> applicationHighlights) = _LoadSucceeded;
  const factory ApplicationsOverviewWatcherState.loadFailed(
      ApplicationFailure applicationFailure) = _LoadFailed;
}

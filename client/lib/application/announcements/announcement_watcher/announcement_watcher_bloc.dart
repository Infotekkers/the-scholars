import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:client/domain/announcement/announcement.dart';
import 'package:client/domain/announcement/announcement_failure.dart';
import 'package:client/domain/announcement/i_admin_announcement_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'announcement_watcher_event.dart';
part 'announcement_watcher_state.dart';

part 'announcement_watcher_bloc.freezed.dart';

@injectable
class AnnouncementWatcherBloc
    extends Bloc<AnnouncementWatcherEvent, AnnouncementWatcherState> {
  final IAdminAnnouncementRepository _iadminAnnouncementRepository;

  AnnouncementWatcherBloc(this._iadminAnnouncementRepository)
      : super(const AnnouncementWatcherState.initial());

  @override
  Stream<AnnouncementWatcherState> mapEventToState(
    AnnouncementWatcherEvent event,
  ) async* {
    yield* event.map(getAllStarted: (e) async* {
      yield const AnnouncementWatcherState.loadInProgress();
      final failOrSuccess =
          await _iadminAnnouncementRepository.getAnnouncement();
      yield failOrSuccess.fold(
          (l) => AnnouncementWatcherState.loadFailure(l),
          (announcements) =>
              AnnouncementWatcherState.loadSuccess(announcements));
    });
  }
}

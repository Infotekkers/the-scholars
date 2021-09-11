import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/domain/announcement/announcement.dart';
import 'package:client/domain/announcement/announcement_failure.dart';
import 'package:client/domain/announcement/i_admin_announcement_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'announcement_actor_event.dart';
part 'announcement_actor_state.dart';

part 'announcement_actor_bloc.freezed.dart';

@injectable
class AnnouncementActorBloc
    extends Bloc<AnnouncementActorEvent, AnnouncementActorState> {
  final IAnnouncementRepository _iAnnouncementRepository;
  AnnouncementActorBloc(this._iAnnouncementRepository)
      : super(const AnnouncementActorState.initial());

  @override
  Stream<AnnouncementActorState> mapEventToState(
    AnnouncementActorEvent event,
  ) async* {
    yield const AnnouncementActorState.actionInProgress();
    final possibleFailure =
        await _iAnnouncementRepository.deleteAnnouncement(event.announcement);

    yield possibleFailure.fold(
      (f) => AnnouncementActorState.actionFailure(f),
      (_) => const AnnouncementActorState.actionSuccess(),
    );
  }
}

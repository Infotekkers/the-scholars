import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/domain/announcement/announcement.dart';
import 'package:client/domain/announcement/announcement_failure.dart';
import 'package:client/domain/announcement/i_admin_announcement_repository.dart';
import 'package:client/domain/announcement/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'announcement_form_event.dart';
part 'announcement_form_state.dart';

part 'announcement_form_bloc.freezed.dart';

@injectable
class AnnouncementFormBloc
    extends Bloc<AnnouncementFormEvent, AnnouncementFormState> {
  final IAnnouncementRepository _iAnnouncementRepository;

  AnnouncementFormBloc(this._iAnnouncementRepository)
      : super(AnnouncementFormState.initial());

  @override
  Stream<AnnouncementFormState> mapEventToState(
    AnnouncementFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialAnnOption.fold(
            () => state,
            (initialAnn) => state.copyWith(
                  id: initialAnn.id,
                  title: initialAnn.title,
                  body: initialAnn.body,
                  isEditing: true,
                ));
      },
      titleChanged: (e) async* {
        yield state.copyWith(
          title: AnnouncementTitle(e.titleStr),
          saveFailureOrSuccess: none(),
        );
      },
      bodyChanged: (e) async* {
        yield state.copyWith(
          body: AnnouncementBody(e.bodyStr),
          saveFailureOrSuccess: none(),
        );
      },
      saved: (e) async* {
        Either<AnnouncementFailure, Announcement>? failureOrSuccess;
        if (state.title.isValid() && state.body.isValid()) {
          yield state.copyWith(isSaving: true, saveFailureOrSuccess: none());

          final AnnouncementDate dateNow = AnnouncementDate(
              DateFormat.yMMMd().format(DateTime.now()).toString());

          final Announcement announcement = Announcement.initial();
          failureOrSuccess = await _iAnnouncementRepository
              .saveAnnouncement(announcement.copyWith(
            id: state.id,
            title: state.title,
            body: state.body,
            date: dateNow,
          ));
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
    );
  }
}

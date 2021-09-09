import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'announcement_event.dart';
part 'announcement_state.dart';

class AnnouncementBloc extends Bloc<AnnouncementEvent, AnnouncementState> {
  AnnouncementBloc() : super(AnnouncementInitial());

  @override
  Stream<AnnouncementState> mapEventToState(
    AnnouncementEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

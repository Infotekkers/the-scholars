import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/domain/application/i_application_repository.dart';
import 'package:client/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'util_event.dart';
part 'util_state.dart';

part 'util_bloc.freezed.dart';

@lazySingleton
class UtilBloc extends Bloc<UtilEvent, UtilState> {
  UtilBloc() : super(UtilState.initial());

  @override
  Stream<UtilState> mapEventToState(
    UtilEvent event,
  ) async* {
    final IApplicationRepository _iApplicationRepo =
        getIt<IApplicationRepository>();
    yield* event.map(
      checkProfileCompletion: (e) async* {
        // Check Profile State

        final profile = await _iApplicationRepo.getFromSharedPreference(
            itemToGet: "applicationProfile");

        bool profileCheckStatus = false;

        profile.fold(
          (l) {
            profileCheckStatus = false;
          },
          (r) {
            if (r == "" || r == null) {
              profileCheckStatus = false;
            } else {
              profileCheckStatus = true;
            }
          },
        );

        yield state.copyWith(isProfileComplete: profileCheckStatus);
      },
    );
  }
}

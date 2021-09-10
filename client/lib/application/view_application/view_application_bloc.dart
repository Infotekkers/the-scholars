import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:client/application/application/application_bloc.dart';
import 'package:client/domain/application/application.dart';
import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/i_application_repository.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:client/infrastructure/application/application_highlight_dto.dart';
import 'package:client/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
part 'view_application_event.dart';
part 'view_application_state.dart';

part 'view_application_bloc.freezed.dart';

@lazySingleton
class ViewApplicationBloc
    extends Bloc<ViewApplicationEvent, ViewApplicationState> {
  ViewApplicationBloc() : super(ViewApplicationState.initial());

  @override
  Stream<ViewApplicationState> mapEventToState(
    ViewApplicationEvent event,
  ) async* {
    final IApplicationRepository _iApplicationRepository =
        getIt<IApplicationRepository>();
    yield* event.map(
      started: (e) async* {
        getIt<ApplicationBloc>().add(const ApplicationEvent.initialEvent());
        // Start Loader animation
        yield state.copyWith(isFetching: true);

        Either<ApplicationFailure, List<ApplicationHighlightDto>>
            allApplicationsHighlightDtos =
            await _iApplicationRepository.getApplicationHighlights();

        // If Error is returned
        if (allApplicationsHighlightDtos.isLeft()) {
          yield state.copyWith(
            isFetching: false,
            isLoaded: false,
            viewApplicationFailureOrSuccess: some(allApplicationsHighlightDtos),
          );
        }
        // If Applciations are fetched
        else {
          yield state.copyWith(
            isFetching: false,
            isLoaded: true,
            allApplications: allApplicationsHighlightDtos.fold(
                (l) => [], (r) => List.from(r)),
          );
        }
      },
      details: (e) async* {},
    );
  }
}

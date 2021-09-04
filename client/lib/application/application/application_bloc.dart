import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/domain/application/i_application_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'application_event.dart';
part 'application_state.dart';
part 'application_bloc.freezed.dart';

@lazySingleton
class ApplicationBloc extends Bloc<ApplicationEvent, ApplicationState> {
  final IApplicationRepository _iApplicationRepository;
  ApplicationBloc(this._iApplicationRepository)
      : super(ApplicationState.initial());

  @override
  Stream<ApplicationState> mapEventToState(
    ApplicationEvent event,
  ) async* {}
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

part 'navigation_bloc.freezed.dart';

@lazySingleton
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState.initial());

  @override
  Stream<NavigationState> mapEventToState(
    NavigationEvent event,
  ) async* {
    yield* event.map(
      changePage: (e) async* {
        yield state.copyWith(
          pageIndexNumber: e.pageIndexNumber,
        );
      },
    );
  }
}

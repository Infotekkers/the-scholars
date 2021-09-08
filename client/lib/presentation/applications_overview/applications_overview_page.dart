import 'package:client/application/applications_overview_actor/applications_overview_actor_bloc.dart';
import 'package:client/application/applications_overview_watcher/applications_overview_watcher_bloc.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/applications_overview/widgets/applications_overview_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationsOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ApplicationsOverviewActorBloc>(
              create: (context) => getIt<ApplicationsOverviewActorBloc>()),
          BlocProvider<ApplicationsOverviewWatcherBloc>(
              create: (context) => getIt<ApplicationsOverviewWatcherBloc>()
                ..add(
                    const ApplicationsOverviewWatcherEvent.watchAllStarted())),
        ],
        child: MultiBlocListener(listeners: [
          BlocListener<ApplicationsOverviewActorBloc,
              ApplicationsOverviewActorState>(listener: (context, state) {
            state.maybeMap(
                actionFailure: (state) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.applicationFailure.maybeMap(
                    emptyApplication: (_) => "Empty!",
                    noConnection: (_) => "No connection",
                    serverError: (_) => "Server Error",
                    orElse: () => "Error",
                  ))));
                },
                orElse: () {});
          }),
          BlocListener<ApplicationsOverviewWatcherBloc,
              ApplicationsOverviewWatcherState>(listener: (context, state) {
            state.maybeMap(
                loadFailed: (state) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.applicationFailure.maybeMap(
                    emptyApplication: (_) => "Empty!",
                    noConnection: (_) => "No connection",
                    serverError: (_) => "Server Error",
                    orElse: () => "Error",
                  ))));
                },
                orElse: () {});
          })
        ], child: ApplicationsOverviewTab()));
  }
}

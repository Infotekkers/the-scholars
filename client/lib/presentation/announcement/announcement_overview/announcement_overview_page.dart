import 'package:client/application/announcements/announcement_actor/announcement_actor_bloc.dart';
import 'package:client/application/announcements/announcement_watcher/announcement_watcher_bloc.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/announcement/announcement_overview/widgets/announcement_overview_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnnouncementsOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AnnouncementActorBloc>(
              create: (context) => getIt<AnnouncementActorBloc>()),
          BlocProvider<AnnouncementWatcherBloc>(
              create: (context) => getIt<AnnouncementWatcherBloc>()),
        ],
        child: MultiBlocListener(listeners: [
          BlocListener<AnnouncementActorBloc, AnnouncementActorState>(
              listener: (context, state) {
            state.maybeMap(
                actionFailure: (state) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.announcementFailure.map(
                          unexpected: (_) => "Unexpected error",
                          serverError: (_) => "Server error",
                          networkError: (_) => "No connection",
                          cancelledByUser: (_) => "Cancelled by user"))));
                },
                orElse: () {});
          }),
          BlocListener<AnnouncementWatcherBloc, AnnouncementWatcherState>(
              listener: (context, state) {
            state.maybeMap(
                loadFailure: (state) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.announcementFailure.map(
                          unexpected: (_) => "Unexpected error",
                          serverError: (_) => "Server error",
                          networkError: (_) => "No connection",
                          cancelledByUser: (_) => "Cancelled by user"))));
                },
                orElse: () {});
          }),
        ], child: AnnouncementsOverviewBody()));
  }
}

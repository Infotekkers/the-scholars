import 'package:client/application/announcements/announcement_watcher/announcement_watcher_bloc.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/announcement/annoucement_user/widgets/announcements_user_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnnouncementsUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<AnnouncementWatcherBloc>(
              create: (context) => getIt<AnnouncementWatcherBloc>()..add(const AnnouncementWatcherEvent.getAllStarted())),
        ],
        child: MultiBlocListener(listeners: [
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
        ], child: AnnouncementsUserBody()));
  }
}

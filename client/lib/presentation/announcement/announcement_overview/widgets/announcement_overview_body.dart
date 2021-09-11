import 'package:client/application/announcements/announcement_actor/announcement_actor_bloc.dart';
import 'package:client/application/announcements/announcement_watcher/announcement_watcher_bloc.dart';
import 'package:client/domain/announcement/announcement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnnouncementsOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AnnouncementActorBloc actorBloc =
        BlocProvider.of<AnnouncementActorBloc>(context);

    return BlocBuilder<AnnouncementWatcherBloc, AnnouncementWatcherState>(
        builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) {
              if (state.annoucements.isEmpty) {
                return const Text("No announcements");
              }

              return ListView.builder(
                  itemCount: state.annoucements.length,
                  itemBuilder: (_, index) => GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context, "/annoucement-form",
                            arguments: state.annoucements[index]),
                        onLongPress: () => _showDeletionDialog(
                            context, actorBloc, state.annoucements[index]),
                        child: Row(
                          children: [
                            Text(state.annoucements[index].title.getOrCrash()),
                            const Spacer(),
                            Text(state.annoucements[index].date.getOrCrash()),
                            const Spacer(),
                          ],
                        ),
                      ));
            },
            loadFailure: (state) =>
                Text(state.announcementFailure.toString())));
  }

  void _showDeletionDialog(BuildContext context,
      AnnouncementActorBloc actorBloc, Announcement announcement) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text("dsa"),
              content: Text(
                announcement.body.getOrCrash(),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("CANCEL")),
                TextButton(
                    onPressed: () {
                      actorBloc
                          .add(AnnouncementActorEvent.deleted(announcement));
                      Navigator.pop(context);
                    },
                    child: const Text("DELETE")),
              ],
            ));
  }
}

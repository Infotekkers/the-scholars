import 'package:client/application/announcements/announcement_watcher/announcement_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnnouncementsUserBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}

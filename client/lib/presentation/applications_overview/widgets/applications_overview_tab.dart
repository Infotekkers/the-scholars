import 'package:client/application/applications_overview_watcher/applications_overview_watcher_bloc.dart';
import 'package:client/presentation/applications_overview/widgets/applications_overview_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationsOverviewTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ApplicationsOverviewWatcherBloc watcherBloc =
        BlocProvider.of<ApplicationsOverviewWatcherBloc>(context);

    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              physics: const NeverScrollableScrollPhysics(),
              onTap: (index) {
                switch (index) {
                  case 0:
                    watcherBloc.add(const ApplicationsOverviewWatcherEvent.watchAllStarted());
                    break;
                  case 1:
                    watcherBloc.add(const ApplicationsOverviewWatcherEvent.watchPendingStarted());
                    break;
                  case 2:
                    watcherBloc.add(const ApplicationsOverviewWatcherEvent.watchAcceptedStarted());
                    break;
                  case 3:
                    watcherBloc.add(const ApplicationsOverviewWatcherEvent.watchRejectedStarted());
                    break;
                  default:
                }
              },
              tabs: const [
                Tab(text: "All"),
                Tab(text: "Pending"),
                Tab(text: "Accepted"),
                Tab(text: "Rejected"),
              ],
            ),
          ),
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ApplicationsOverviewBody(),
              ApplicationsOverviewBody(),
              ApplicationsOverviewBody(),
              ApplicationsOverviewBody(),
            ],
          ),
        ));
  }
}

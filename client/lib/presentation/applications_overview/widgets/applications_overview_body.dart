import 'package:client/application/applications_overview_actor/applications_overview_actor_bloc.dart';
import 'package:client/application/applications_overview_watcher/applications_overview_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationsOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ApplicationsOverviewActorBloc actorBloc =
        BlocProvider.of<ApplicationsOverviewActorBloc>(context);

    return BlocBuilder<ApplicationsOverviewWatcherBloc,
            ApplicationsOverviewWatcherState>(
        builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const CircularProgressIndicator(),
            loadSucceeded: (state) {
              if (state.applicationHighlights.isEmpty) {
                return const Text("No applications");
              }

              return ListView.builder(
                  itemCount: state.applicationHighlights.length,
                  itemBuilder: (_, index) => Row(
                        children: [
                          Text(state.applicationHighlights[index].name
                              .getOrCrash()),
                          const Spacer(),
                          Text(state
                              .applicationHighlights[index].admissionStatus
                              .getOrCrash()),
                          IconButton(
                            onPressed: state.applicationHighlights[index]
                                        .admissionStatus
                                        .getOrCrash() ==
                                    "pending"
                                ? () {
                                    print("@accept");
                                    actorBloc.add(
                                        ApplicationsOverviewActorEvent.accepted(
                                            state
                                                .applicationHighlights[index]));
                                  }
                                : null,
                            icon: const Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: state.applicationHighlights[index]
                                        .admissionStatus
                                        .getOrCrash() ==
                                    "pending"
                                ? () {
                                    actorBloc.add(
                                        ApplicationsOverviewActorEvent.rejected(
                                            state
                                                .applicationHighlights[index]));
                                  }
                                : null,
                            icon: Icon(Icons.close),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              actorBloc.add(
                                  ApplicationsOverviewActorEvent.downloaded(
                                      state.applicationHighlights[index]));
                            },
                            icon: Icon(Icons.download),
                          ),
                        ],
                      ));
            },
            // TODO: Show proper error message
            loadFailed: (state) => const Text("Failure")));
  }
}

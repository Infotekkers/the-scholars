import 'package:client/application/applications_overview_actor/applications_overview_actor_bloc.dart';
import 'package:client/application/applications_overview_watcher/applications_overview_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationsOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationsOverviewWatcherBloc,
            ApplicationsOverviewWatcherState>(
        builder: (context, state) => state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const CircularProgressIndicator(),
            loadSucceeded: (state) => ListView.builder(
                itemCount: state.applicationHighlights.length,
                itemBuilder: (_, index) => Row(
                      children: [
                        Text(state.applicationHighlights[index].name
                            .getOrCrash()),
                        const Spacer(),
                        Text(state.applicationHighlights[index].admissionStatus
                            .getOrCrash()),
                      ],
                    )),
            loadFailed: (state) => const Text("Failure")));
  }
}

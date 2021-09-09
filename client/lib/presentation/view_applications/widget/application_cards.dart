import 'package:client/application/application/application_bloc.dart';
import 'package:client/infrastructure/application/application_highlight_dto.dart';
import 'package:client/presentation/view_applications/widget/download_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationCards extends StatelessWidget {
  final ApplicationHighlightDto currentApplicationHighlight;

  const ApplicationCards({required this.currentApplicationHighlight});

  @override
  Widget build(BuildContext context) {
    final ApplicationBloc _applicationBloc =
        BlocProvider.of<ApplicationBloc>(context);

    return BlocConsumer<ApplicationBloc, ApplicationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return InkWell(
          onTap: () {
            // Add Download  Event
            _applicationBloc.add(ApplicationEvent.startDownload());
            Navigator.pushNamed(context, '/download');
          },
          child: Card(
            child: ListTile(
              title: Text(currentApplicationHighlight.name),
              subtitle: Text(
                currentApplicationHighlight.applicationId,
                style: const TextStyle(fontSize: 8),
              ),
              trailing: currentApplicationHighlight.admissionStatus
                          .toString() ==
                      "pending"
                  ? const Icon(
                      Icons.lock_clock,
                      color: Colors.amber,
                    )
                  : currentApplicationHighlight.admissionStatus.toString() ==
                          "rejected"
                      ? const Icon(
                          Icons.close,
                          color: Colors.red,
                        )
                      : const Icon(
                          Icons.done,
                          color: Colors.green,
                        ),
              // leading: const Text("All"),
            ),
          ),
        );
      },
    );
  }
}

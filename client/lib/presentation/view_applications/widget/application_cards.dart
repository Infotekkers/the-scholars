import 'package:client/infrastructure/application/application_highlight_dto.dart';
import 'package:flutter/material.dart';

class ApplicationCards extends StatelessWidget {
  final ApplicationHighlightDto currentApplicationHighlight;

  const ApplicationCards({required this.currentApplicationHighlight});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(currentApplicationHighlight.applicationId);
      },
      child: Card(
        child: ListTile(
          title: Text(currentApplicationHighlight.name),
          subtitle: Text(
            currentApplicationHighlight.applicationId,
            style: const TextStyle(fontSize: 8),
          ),
          trailing: Text(
            currentApplicationHighlight.admissionStatus,
          ),
          // leading: const Text("All"),
        ),
      ),
    );
  }
}

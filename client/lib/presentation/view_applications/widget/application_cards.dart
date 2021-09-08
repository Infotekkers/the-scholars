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
          trailing: currentApplicationHighlight.admissionStatus.toString() ==
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
  }
}

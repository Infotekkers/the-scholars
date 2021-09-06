import 'package:flutter/material.dart';

class ApplicationViewTab extends StatelessWidget {
  final String admissionStatusToMatch;

  const ApplicationViewTab({required this.admissionStatusToMatch});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(admissionStatusToMatch),
    );
  }
}

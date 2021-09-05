import 'package:flutter/material.dart';

class FormLabel extends StatelessWidget {
  final String textValue;
  const FormLabel({required this.textValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 25, 0, 14),
      child: Text(
        "$textValue :",
        style: const TextStyle(
          letterSpacing: 1,
          fontStyle: FontStyle.italic,
          fontSize: 15,
        ),
      ),
    );
  }
}

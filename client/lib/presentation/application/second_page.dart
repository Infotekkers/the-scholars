import 'package:flutter/material.dart';

class SecondApplicationPage extends StatelessWidget {
  const SecondApplicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.blue,
      child: const Center(
        child: Text(
          "Second Page",
          style: TextStyle(
              fontSize: 32,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
              letterSpacing: 2),
        ),
      ),
    );
  }
}

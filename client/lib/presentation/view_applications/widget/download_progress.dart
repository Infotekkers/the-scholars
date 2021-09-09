import 'package:client/application/application/application_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DownloadProgressBar extends StatelessWidget {
  final double progressWidth;
  final int progressAmount;
  const DownloadProgressBar(
      {required this.progressWidth, required this.progressAmount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 16,
      height: 30,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 16,
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            height: 30,
            color: Colors.black,
          ),
          Container(
            width: progressWidth,
            height: 35,
            color: Theme.of(context).primaryColor,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "${progressAmount + 1}%",
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          )
        ],
      ),
    );
  }
}

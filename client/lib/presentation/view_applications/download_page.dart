import 'package:client/application/application/application_bloc.dart';
import 'package:client/presentation/view_applications/widget/download_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ApplicationBloc, ApplicationState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 60, horizontal: 2),
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close),
                  ),
                ),
                // Intro
                const Text(
                  "Downloading Your Application",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 22,
                      letterSpacing: 1.2,
                      fontStyle: FontStyle.italic),
                ),

                // Complete and Preparing display
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  child: Center(
                    child: state.isPreparingDownload
                        ? const Text("Prepraing Download .. ")
                        : state.isDownloadComplete
                            ? const Text("Download Complete")
                            : const Text("Downloading .."),
                  ),
                ),

                // Progress display
                Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                  child: DownloadProgressBar(
                    progressWidth: (MediaQuery.of(context).size.width - 16) *
                        (state.recievedAmount / state.totalAmount),
                    progressAmount:
                        (((state.recievedAmount) / (state.totalAmount)) * 100)
                            .floor(),
                  ),
                ),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 25, horizontal: 80),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel Download"),
                    color: Colors.red,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

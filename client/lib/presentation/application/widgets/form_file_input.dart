import 'package:client/application/application/application_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FileForm extends StatelessWidget {
  final String type;
  const FileForm({required this.type});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ApplicationBloc, ApplicationState>(
      listener: (context, state) {
        // ignore: todo
        // TODO: implement listener
      },
      builder: (context, state) {
        return Container(
          width: MediaQuery.of(context).size.width,
          // height: fullHeight * 0.25,
          child: Center(
            child: Container(
              // height: fullHeight * 0.05,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.grey.withOpacity(0.25),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: Text(getFileName(type, state)),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () async {
                        final pickedItem =
                            await FilePicker.platform.pickFiles();
                        if (pickedItem != null) {
                          final String filePath = pickedItem.files.single.path;

                          if (type == "S") {
                            BlocProvider.of<ApplicationBloc>(context).add(
                              ApplicationEvent.schoolTranscriptChanged(
                                  filePath),
                            );
                          } else if (type == "M") {
                            BlocProvider.of<ApplicationBloc>(context).add(
                              ApplicationEvent.mainEssayChanged(filePath),
                            );
                          } else if (type == 'E') {
                            BlocProvider.of<ApplicationBloc>(context).add(
                              ApplicationEvent.extraCertificationChanged(
                                  filePath),
                            );
                          } else if (type == "R") {
                            BlocProvider.of<ApplicationBloc>(context).add(
                              ApplicationEvent.reccomnedationLetterChanged(
                                  filePath),
                            );
                          }
                        }
                      },
                      child: IconTheme(
                        data: Theme.of(context).iconTheme,
                        child: const Icon(Icons.attach_file),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        if (type == "S") {
                          BlocProvider.of<ApplicationBloc>(context).add(
                            const ApplicationEvent.schoolTranscriptChanged(
                              "Please Select a File",
                            ),
                          );
                        } else if (type == "M") {
                          BlocProvider.of<ApplicationBloc>(context).add(
                            const ApplicationEvent.mainEssayChanged(
                              "Please Select a File",
                            ),
                          );
                        } else if (type == "E") {
                          BlocProvider.of<ApplicationBloc>(context).add(
                            const ApplicationEvent.extraCertificationChanged(
                              "Please Select a File",
                            ),
                          );
                        } else {
                          BlocProvider.of<ApplicationBloc>(context).add(
                            const ApplicationEvent.reccomnedationLetterChanged(
                              "Please Select a File",
                            ),
                          );
                        }
                      },
                      child: IconTheme(
                        data: IconTheme.of(context).copyWith(color: Colors.red),
                        child: const Icon(
                          Icons.remove,
                          size: 25,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  String getFileName(String type, ApplicationState state) {
    String itemValue = "";
    // school transcript
    if (type == "S") {
      state.schoolTranscript.value.fold(
        (l) => null,
        (r) {
          itemValue = r.split('/').last;
        },
      );
    } else if (type == "M") {
      state.mainEssay.value.fold(
        (l) => null,
        (r) {
          itemValue = r.split('/').last;
        },
      );
    } else if (type == "E") {
      state.extraCertification.value.fold(
        (l) => null,
        (r) {
          itemValue = r.split('/').last;
        },
      );
    } else if (type == "R") {
      state.recomendationLetter.value.fold(
        (l) => null,
        (r) {
          itemValue = r.split('/').last;
        },
      );
    }
    return itemValue;
  }
}

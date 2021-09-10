import 'package:client/application/application/application_bloc.dart';
import 'package:client/presentation/application/widgets/form_file_input.dart';
import 'package:client/presentation/application/widgets/form_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FirstApplicationPage extends StatelessWidget {
  const FirstApplicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ApplicationBloc applicationBloc =
        BlocProvider.of<ApplicationBloc>(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: BlocConsumer<ApplicationBloc, ApplicationState>(
          listener: (context, state) {
            // Handle Value Failures
            state.valueFailureOrSuccess.fold(
              () {},
              (either) {
                either.fold(
                  (failure) {
                    failure.maybeMap(
                      emptyFile: (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("${_.failedValue} is empty"),
                          ),
                        );
                      },
                      invalidFileFormat: (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Invalid File Exists"),
                          ),
                        );
                      },
                      orElse: () {},
                    );
                  },
                  (_) {},
                );
              },
            );

            // Handle Application Failures
            state.applicationFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  failure.maybeMap(
                    emptyApplication: (_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Invalid Values! Try again"),
                        ),
                      );
                    },
                    invalidApplication: (_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Invalid"),
                        ),
                      );
                    },
                    orElse: () {},
                  );
                },
                (_) => {
                  // Move to next page
                  Future.delayed(const Duration(seconds: 1), () {
                    Navigator.popAndPushNamed(context, '/second');
                  }),
                },
              ),
            );
          },
          builder: (context, state) {
            return Form(
              // autovalidate: state.showErrorMessages,
              autovalidateMode: state.showErrorMessages
                  ? AutovalidateMode.always
                  : AutovalidateMode.disabled,
              child: ListView(
                children: [
                  // TODO: Activate

                  // Exit button will be activated when some other parts are completed
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25, 25, 25),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        applicationBloc.add(
                            const ApplicationEvent.checkCacheApplication());
                      },
                      child: const Icon(Icons.close),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: const Center(
                      child: Text(
                        "Your Profile will be loaded from local storage",
                        style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ),
                  ),

                  // Area for School Transcript
                  const FormLabel(textValue: "School Transcript"),
                  const FileForm(
                    type: "S",
                  ),

                  // Area for Main Essay
                  const FormLabel(textValue: "Main Essay"),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    child: const FileForm(
                      type: "M",
                    ),
                  ),

                  // Area for Certification
                  const FormLabel(textValue: "Extra Certification"),
                  const FileForm(
                    type: "E",
                  ),

                  // Area for Letter Of Rec
                  const FormLabel(textValue: "Reccomendation Letter"),
                  const FileForm(
                    type: "R",
                  ),

                  // Sbumit Button
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 35, horizontal: 15),
                    child: state.isSubmitting
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : MaterialButton(
                            key: const ValueKey(
                                "firstApplicationPageSubmitButton"),
                            onPressed: () {
                              applicationBloc.add(
                                const ApplicationEvent.firstPageComplete(),
                              );
                            },
                            color: Theme.of(context).primaryColor,
                            child: const Text("Next Page"),
                          ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

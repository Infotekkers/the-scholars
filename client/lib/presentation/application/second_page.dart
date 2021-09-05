import 'package:client/application/application/application_bloc.dart';
import 'package:client/presentation/application/widgets/form_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SecondApplicationPage extends StatelessWidget {
  const SecondApplicationPage({Key? key}) : super(key: key);

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
                      invalidProficencyTestUrl: (_) {
                        // ignore: deprecated_member_use
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Invalid URL"),
                          ),
                        );
                      },
                      invalidMilitaryFamilyStatus: (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Select Mili Stat"),
                          ),
                        );
                      },
                      invalidUniversityFamilyStatus: (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Select Uni Stat"),
                          ),
                        );
                      },
                      emptyExtraEssay: (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Essay is required"),
                          ),
                        );
                      },
                      veryShortExtraEssay: (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Essay too short"),
                          ),
                        );
                      },
                      exceedingLengthExtraEssay: (_) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Max Essay is 300 chars"),
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
            state.applicationFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                (failure) {
                  failure.maybeMap(
                    emptyApplication: (_) {
                      print("@listsener empty app");
                    },
                    incompleteApplication: (_) {
                      print("@listsener Incomplete app");
                    },
                    invalidApplication: (_) {
                      print("@listsener Invalid app");
                    },
                    databaseError: (_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Please Check your Permissions"),
                        ),
                      );
                    },
                    duplicateApplication: (_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Duplicate"),
                        ),
                      );
                    },
                    noConnection: (_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("No Connection"),
                        ),
                      );
                    },
                    serverError: (_) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Server Error"),
                        ),
                      );
                    },
                    orElse: () {},
                  );
                },
                (_) => {
                  // ignore: deprecated_member_use
                  Navigator.pop(context),
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Your Application is complete"),
                    ),
                  )
                },
              ),
            );
          },
          builder: (context, state) {
            return Form(
              // ignore: deprecated_member_use
              autovalidate: state.showErrorMessages,
              child: ListView(
                children: [
                  // TODO: Activate

                  // Will be activated when other components complete
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(0, 25, 25, 25),
                  //   child: InkWell(
                  //     onTap: () {
                  //       Navigator.pop(context);
                  //       applicationBloc
                  //         .add(const ApplicationEvent.checkCacheApplication());
                  //     },
                  //     child: const Icon(Icons.close),
                  //   ),
                  // ),
                  // Proficiency Test Area
                  const FormLabel(textValue: "Proficiency Test URL"),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "URL",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (val) {
                        BlocProvider.of<ApplicationBloc>(context).add(
                          ApplicationEvent.proficiencyUrlChanged(val),
                        );
                      },
                      validator: (_) =>
                          applicationBloc.state.proficencyTest.value.fold(
                        (l) => l.maybeMap(
                          invalidProficencyTestUrl: (_) => "Invalid Url",
                          orElse: () => null,
                        ),
                        (r) => null,
                      ),
                    ),
                  ),

                  // Military Status Input Area
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: ListView(
                      children: [
                        const Text("Are your parents military servants?"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: ListTile(
                                title: const Text("Yes"),
                                leading: Radio(
                                  value: 'yes',
                                  onChanged: (val) => {
                                    BlocProvider.of<ApplicationBloc>(context)
                                      ..add(
                                        ApplicationEvent.militaryStatusChanged(
                                          val.toString(),
                                        ),
                                      )
                                  },
                                  groupValue: state.militaryFamilyStatus.value
                                      .fold((l) => "", (r) => r),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: ListTile(
                                title: const Text("No"),
                                leading: Radio(
                                  value: 'no',
                                  onChanged: (val) => {
                                    BlocProvider.of<ApplicationBloc>(context)
                                      ..add(
                                        ApplicationEvent.militaryStatusChanged(
                                          val.toString(),
                                        ),
                                      )
                                  },
                                  groupValue: state.militaryFamilyStatus.value
                                      .fold((l) => "", (r) => r),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // Uni Status
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: ListView(
                      children: [
                        const Text("Are your parents university servants?"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: ListTile(
                                title: const Text("Yes"),
                                leading: Radio(
                                  value: 'yes',
                                  onChanged: (val) => {
                                    BlocProvider.of<ApplicationBloc>(context)
                                      ..add(
                                        ApplicationEvent
                                            .universityStatusChanged(
                                          val.toString(),
                                        ),
                                      )
                                  },
                                  groupValue: state.universityFamilyStatus.value
                                      .fold((l) => "", (r) => r),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.45,
                              child: ListTile(
                                title: const Text("No"),
                                leading: Radio(
                                  value: 'no',
                                  onChanged: (val) => {
                                    BlocProvider.of<ApplicationBloc>(context)
                                      ..add(
                                        ApplicationEvent
                                            .universityStatusChanged(
                                          val.toString(),
                                        ),
                                      )
                                  },
                                  groupValue: state.universityFamilyStatus.value
                                      .fold((l) => "", (r) => r),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // Extra Essay Upload Section
                  const FormLabel(textValue: "Extra Cirriclar Essay"),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      decoration: const InputDecoration(
                        hintText: "Write Your Essay Here ...",
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (val) {
                        applicationBloc
                            .add(ApplicationEvent.extraEssayChanged(val));
                      },
                      validator: (_) =>
                          applicationBloc.state.extraEssay.value.fold(
                        (l) => l.maybeMap(
                          emptyExtraEssay: (_) =>
                              "Extra Cirricluar Essay is required",
                          exceedingLengthExtraEssay: (_) =>
                              "Extra Cirricular essay can't exceed 300",
                          veryShortExtraEssay: (_) => "Essay too Short",
                          orElse: () => null,
                        ),
                        (r) => null,
                      ),
                    ),
                  ),

                  // Submit Button
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 35, horizontal: 15),
                    child: state.isSubmitting
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : MaterialButton(
                            onPressed: () {
                              applicationBloc.add(const ApplicationEvent
                                  .submitApplicationClicked());
                            },
                            color: Theme.of(context).primaryColor,
                            child: const Text(
                              "Submit Application",
                            ),
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

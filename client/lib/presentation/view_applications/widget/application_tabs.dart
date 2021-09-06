import 'package:client/application/view_application/view_application_bloc.dart';
import 'package:client/presentation/view_applications/widget/application_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicationViewTab extends StatelessWidget {
  final String admissionStatusToMatch;

  const ApplicationViewTab({required this.admissionStatusToMatch});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ViewApplicationBloc, ViewApplicationState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        // If Feteching
        if (state.isFetching) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        // Check if empty value is returned
        if (state.allApplications.isEmpty) {
          return const Center(
            child: Text("No Result"),
          );
        } else {
          // If Status is all
          if (admissionStatusToMatch == "") {
            return ListView.builder(
              itemCount: state.allApplications.length,
              itemBuilder: (context, index) {
                return ApplicationCards(
                    currentApplicationHighlight: state.allApplications[index]);
              },
            );
          }
          // if others
          else {
            return ListView.builder(
              itemCount: state.allApplications.length,
              itemBuilder: (context, index) {
                if (state.allApplications[index].admissionStatus ==
                    admissionStatusToMatch) {
                  return ApplicationCards(
                      currentApplicationHighlight:
                          state.allApplications[index]);
                } else {
                  return SizedBox();
                }
              },
            );
          }
        }

        //  Check if Empty
        // if (state.allApplications.isEmpty) {
        //   return const Center(
        //     child: Text("No Results"),
        //   );
        // } else {
        //   return ListView.builder(
        //     itemCount: state.allApplications.length,
        //     itemBuilder: (context, index) {
        //       // Check to match tab admission status
        //       if (admissionStatusToMatch == "") {
        //         return Text(state.allApplications.toString());
        //       } else {
        //         if (state.allApplications[index].admissionStatus ==
        //             admissionStatusToMatch) {
        //           return Text(state.allApplications.toString());
        //         } else {
        //           return SizedBox();
        //         }
        //       }
        //     },
        //   );
        // }
      },
    );
  }
}

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:client/application/announcements/announcement_form/announcement_form_bloc.dart';
import 'package:client/domain/announcement/announcement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnnouncementForm extends StatelessWidget {
  final Announcement announcement;

  const AnnouncementForm({Key? key, required this.announcement})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AnnouncementFormBloc, AnnouncementFormState>(
      listener: (context, state) {
        state.saveFailureOrSuccess.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                      message: failure.map(
                    unexpected: (_) => "unexpected error",
                    networkError: (_) => " Check network connection",
                    serverError: (_) => "Server error",
                    cancelledByUser: (_) => "Cancelled",
                  )).show(context);
                }, (r) {
                  // TODO: direct to LOGIN
                }));
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey[900],
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Form(
                        autovalidateMode: state.showErrorMessages
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              child: TextFormField(
                                key: const ValueKey("announcementTitleInput"),
                                initialValue: announcement.title.value
                                    .fold((l) => "", (r) => r),
                                keyboardType: TextInputType.text,
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0)),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1,
                                      )),
                                  fillColor: Colors.white,
                                  prefix: Icon(Icons.info_outlined),
                                  labelText: 'Title',
                                  labelStyle: TextStyle(color: Colors.white),
                                  helperText:
                                      'Title must not exceed 50 characters',
                                ),
                                autocorrect: false,
                                onChanged: (value) =>
                                    BlocProvider.of<AnnouncementFormBloc>(
                                            context)
                                        .add(AnnouncementFormEvent.titleChanged(
                                            value)),
                                validator: (_) =>
                                    BlocProvider.of<AnnouncementFormBloc>(
                                            context)
                                        .state
                                        .title
                                        .value
                                        .fold(
                                            (failure) => failure.maybeMap(
                                                empty: (_) =>
                                                    'Title cannot be Empty',
                                                exceedingLength: (_) =>
                                                    'Exceeding Characters',
                                                multiline: (_) =>
                                                    'Single Line Titles',
                                                orElse: () => null),
                                            (_) => null),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(5),
                              child: TextFormField(
                                key:
                                    const ValueKey("announcementPageBodyInput"),
                                initialValue: announcement.body.value
                                    .fold((l) => "", (r) => r),
                                maxLines: 10,
                                keyboardType: TextInputType.multiline,
                                decoration: const InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0)),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1)),
                                  helperText:
                                      'Body must not exceed 250 characters',
                                  labelText: 'Enter Your Text Here',
                                  labelStyle: TextStyle(color: Colors.white),
                                ),
                                onChanged: (value) =>
                                    BlocProvider.of<AnnouncementFormBloc>(
                                            context)
                                        .add(AnnouncementFormEvent.bodyChanged(
                                            value)),
                                validator: (_) => BlocProvider.of<
                                        AnnouncementFormBloc>(context)
                                    .state
                                    .body
                                    .value
                                    .fold(
                                        (failure) => failure.maybeMap(
                                            empty: (_) =>
                                                'Body cannot be Empty',
                                            exceedingLength: (_) =>
                                                'Exceeding Characters Limit',
                                            orElse: () => null),
                                        (_) => null),
                              ),
                            ),
                            ElevatedButton(
                                key: const ValueKey(
                                    "announcementPagePostButton"),
                                onPressed: state.isSaving
                                    ? null
                                    : () {
                                        BlocProvider.of<AnnouncementFormBloc>(
                                                context)
                                            .add(const AnnouncementFormEvent
                                                .saved());
                                      },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors
                                        .grey, //background color of button
                                    side: const BorderSide(
                                        width: 3,
                                        color: Colors
                                            .grey), //border width and color
                                    elevation: 3, //elevation of button
                                    shape: RoundedRectangleBorder(
                                        //to set border radius to button
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    padding: const EdgeInsets.all(
                                        20) //content padding inside button
                                    ),
                                child: const Text('Post',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

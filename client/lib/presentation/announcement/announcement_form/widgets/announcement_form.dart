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
          backgroundColor: Colors.grey[800],
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                   
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: IconButton(
                            icon: const Icon(Icons.arrow_back,
                                color: Colors.white),
                            onPressed: () {}),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 180, left: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            const Text("Post Announcment",
                                // ignore: unnecessary_const
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
            
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
                                initialValue: announcement.title.value.fold((l) => "", (r) => r),
                                keyboardType: TextInputType.text,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
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
                                initialValue: announcement.body.value.fold((l) => "", (r) => r),
                                maxLines: 10,
                                keyboardType: TextInputType.multiline,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(20.0)),
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 2)),
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
                            const SizedBox(height: 15,),
                            SizedBox(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              child: ElevatedButton(
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
                            ),
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

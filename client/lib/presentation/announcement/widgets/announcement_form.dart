import 'package:client/application/announcements/announcement_form/announcement_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnnouncementForm extends StatelessWidget {
  const AnnouncementForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AnnouncementFormBloc, AnnouncementFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    prefix: Icon(Icons.info_outlined),
                    labelText: 'Title',
                    helperText: 'Title must not exceed 50 characters',
                  ),
                  autocorrect: false,
                  onChanged: (value) =>
                      BlocProvider.of<AnnouncementFormBloc>(context)
                          .add(AnnouncementFormEvent.titleChanged(value)),
                  validator: (_) =>
                      BlocProvider.of<AnnouncementFormBloc>(context)
                          .state
                          .title
                          .value
                          .fold(
                              (failure) => failure.maybeMap(
                                  empty: (_) => 'Title cannot be Empty',
                                  exceedingLength: (_) =>
                                      'Exceeding Characters',
                                  multiline: (_) => 'Single Line Titles',
                                  orElse: () => null),
                              (_) => null),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                child: TextFormField(
                  maxLines: 10,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                      helperText: 'Body must not exceed 250 characters',
                      prefixIcon: Icon(Icons.list),
                      labelText: 'Body'),
                  onChanged: (value) =>
                      BlocProvider.of<AnnouncementFormBloc>(context)
                          .add(AnnouncementFormEvent.bodyChanged(value)),
                  validator: (_) =>
                      BlocProvider.of<AnnouncementFormBloc>(context)
                          .state
                          .body
                          .value
                          .fold(
                              (failure) => failure.maybeMap(
                                  empty: (_) => 'Body cannot be Empty',
                                  exceedingLength: (_) =>
                                      'Exceeding Characters Limit',
                                  orElse: () => null),
                              (_) => null),
                ),
              ),
              ElevatedButton(
                onPressed: state.isSaving
                    ? null
                    : () {
                        BlocProvider.of<AnnouncementFormBloc>(context)
                            .add(const AnnouncementFormEvent.saved());
                        // implement passing Dates
                      },
                child: const Text('Post'),
              ),
            ],
          ),
        );
      },
    );
  }
}

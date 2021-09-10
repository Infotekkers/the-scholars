import 'package:client/application/announcements/announcement_form/announcement_form_bloc.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/announcement/widgets/announcement_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnnouncementFormPage extends StatelessWidget {
  const AnnouncementFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("AnnouncementFormPage"),
        ),
        body: BlocProvider(
          create: (BuildContext context) => getIt<AnnouncementFormBloc>(),
          child: const AnnouncementForm(),
        ));
  }
}

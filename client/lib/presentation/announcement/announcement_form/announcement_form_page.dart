import 'package:client/application/announcements/announcement_form/announcement_form_bloc.dart';
import 'package:client/domain/announcement/announcement.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/announcement/announcement_form/widgets/announcement_form.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnnouncementFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Announcement announcement =
        ModalRoute.of(context)!.settings.arguments as Announcement;

    return Scaffold(
        body: BlocProvider(
      create: (BuildContext context) => getIt<AnnouncementFormBloc>()
        ..add(AnnouncementFormEvent.initialized(optionOf(announcement))),
      child: AnnouncementForm(announcement: announcement),
    ));
  }
}

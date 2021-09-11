import 'package:client/application/application/application_bloc.dart';
import 'package:client/application/navigation/navigation_bloc.dart';
import 'package:client/application/util/util_bloc.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/announcement/annoucement_user/announcement_user_page.dart';
import 'package:client/presentation/announcement/announcement_form/announcement_form_page.dart';
import 'package:client/presentation/announcement/announcement_overview/announcement_overview_page.dart';
import 'package:client/presentation/application/first_page.dart';
import 'package:client/presentation/application/second_page.dart';
import 'package:client/presentation/auth/register_page.dart';

import 'package:client/presentation/view_applications/download_page.dart';

import 'package:client/presentation/applications_overview/applications_overview_page.dart';
import 'package:client/presentation/auth/sign_in_page.dart';
import 'package:client/presentation/core/navigator_screen.dart';

import 'package:client/presentation/view_applications/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Map<String, Widget Function(BuildContext)> allRoutes = {
    // * COMMON ROUTES
    // * Route - Sign In Page
    "/sign-in": (context) => SignInPage(),
    // * Route - Register Page
    "/register": (context) => RegisterPage(),


    // * STUDENT
    // * Route - Home Page
    "/home": (context) => MultiBlocProvider(
          providers: [
            BlocProvider.value(
              value: getIt<UtilBloc>(),
            ),
            BlocProvider.value(
              value: getIt<ApplicationBloc>(),
            ),
          ],
          child: const HomePage(),
        ),
    // * Route for Navigator
    "/navigator": (context) => BlocProvider.value(
          value: getIt<NavigationBloc>(),
          child: Scaffold(
            body: BlocProvider.value(
              value: getIt<UtilBloc>(),
              child: NavigatorPage(),
            ),
          ),
        ),
    // * Route for First Page of Application - default
    "/application": (context) => BlocProvider.value(
          value: getIt<ApplicationBloc>(),
          child: const FirstApplicationPage(),
        ),
    // * Route For Second Page Of Application
    "/second": (context) => BlocProvider.value(
          value: getIt<ApplicationBloc>(),
          child: const SecondApplicationPage(),
        ),
    // * Route - Download Page
    "/download": (context) => BlocProvider.value(
          value: getIt<ApplicationBloc>(),
          child: const DownloadPage(),
        ),
    // * Route - Annoucements Overview User
    "/announcements-user": (context) => AnnouncementsUserPage(),

    // * ADMIN
    // * Route - Application Overview
    "/application-overview": (context) => ApplicationsOverviewPage(),
    // * Route - Annoucements Overview
    "/annoucements-overview": (context) => AnnouncementsOverviewPage(),
    // * Route - Annoucements Form
    "/annoucement-form": (context) => AnnouncementFormPage(),
  };
}

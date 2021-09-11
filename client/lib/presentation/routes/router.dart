import 'package:client/application/application/application_bloc.dart';
import 'package:client/application/navigation/navigation_bloc.dart';
import 'package:client/application/util/util_bloc.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/application/first_page.dart';
import 'package:client/presentation/application/second_page.dart';
import 'package:client/presentation/auth/register_page.dart';
import 'package:client/presentation/splash/splash_page.dart';

import 'package:client/presentation/view_applications/download_page.dart';

import 'package:client/presentation/applications_overview/applications_overview_page.dart';
import 'package:client/presentation/auth/sign_in_page.dart';
import 'package:client/presentation/core/navigator_screen.dart';

import 'package:client/presentation/view_applications/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart';

class AppRouter {
  Map<String, Widget Function(BuildContext)> allRoutes = {
    // * COMMON ROUTES
    "/splash": (context) => SplashPage(),
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

    "/download": (context) => BlocProvider.value(
          value: getIt<ApplicationBloc>(),
          child: const DownloadPage(),
        ),

    // * ADMIN
    // * Route - Application Overview
    "/application-overview": (context) => ApplicationsOverviewPage(),
  };
}

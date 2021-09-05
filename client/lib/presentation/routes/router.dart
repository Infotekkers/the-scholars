import 'package:client/application/application/application_bloc.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/application/first_page.dart';
import 'package:client/presentation/application/second_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Map<String, Widget Function(BuildContext)> allRoutes = {
    // Route for First Page of Application - default
    "/application": (context) => BlocProvider.value(
          value: getIt<ApplicationBloc>(),
          child: const FirstApplicationPage(),
        ),

    // Route For Second Page Of Application
    "/second": (context) => BlocProvider.value(
          value: getIt<ApplicationBloc>(),
          child: const SecondApplicationPage(),
        ),
  };
}

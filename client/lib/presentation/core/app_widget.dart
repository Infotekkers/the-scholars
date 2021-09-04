import 'package:client/application/navigation/navigation_bloc.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/core/navigator_screen.dart';
import 'package:client/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppRouter _appRouter = AppRouter();
    return MaterialApp(
      routes: _appRouter.allRoutes,
      home: BlocProvider.value(
        value: getIt<NavigationBloc>(),
        child: Scaffold(
          body: NavigatorPage(),
        ),
      ),
    );
  }
}

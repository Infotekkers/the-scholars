import 'package:client/application/navigation/navigation_bloc.dart';
import 'package:client/application/util/util_bloc.dart';
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
      // Define General Theme
      theme: ThemeData(
          primaryColor: Colors.purple,
          accentColor: Colors.black,
          fontFamily: "Georgia",
          textTheme: const TextTheme(
            bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),

          // Icon Theme to match with color
          primaryIconTheme: const IconThemeData(color: Colors.purple),
          accentIconTheme: const IconThemeData(color: Colors.white),
          iconTheme: const IconThemeData(color: Colors.black),
          radioTheme: RadioThemeData(
            fillColor: MaterialStateColor.resolveWith(
                (states) => Theme.of(context).primaryColor),
          )),
      routes: _appRouter.allRoutes,
      home: BlocProvider.value(
        value: getIt<NavigationBloc>(),
        child: Scaffold(
          body: BlocProvider.value(
            value: getIt<UtilBloc>(),
            child: NavigatorPage(),
          ),
        ),
      ),
    );
  }
}

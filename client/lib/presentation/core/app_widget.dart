import 'package:client/application/auth/auth_bloc.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/routes/router.dart';
import 'package:client/presentation/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppRouter _appRouter = AppRouter();

    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (BuildContext context) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
      ],
      child: MaterialApp(
        // Define General Theme
        debugShowCheckedModeBanner: false,
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
        home: SplashPage(),
      ),
    );
  }
}

import 'package:client/application/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            initial: (_) {},
            authorized: (state) {
              state.user.role.value.fold((l) => print(l), (r) => print(r));
              if (state.user.role.getOrCrash() == "admin") {
                Navigator.popAndPushNamed(context, "/application-overview");
              } else {
                Navigator.popAndPushNamed(context, "/navigator");
              }
            },
            unauthenticated: (_) => Navigator.pushNamed(context, "/sign-in"),
            orElse: () {});
      },
      child: const CircularProgressIndicator(),
    );
  }
}

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
                if (state.user.role.getOrCrash() == "admin") {
                  Navigator.popAndPushNamed(context, "/application-overview");
                } else {
                  Navigator.popAndPushNamed(context, "/navigator");
                }
              },
              unauthenticated: (_) => Navigator.pushNamed(context, "/sign-in"),
              orElse: () {});
        },
        child: Scaffold(
            backgroundColor: Colors.grey[900],
            body: SingleChildScrollView(
                child: Column(children: <Widget>[
              Stack(
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: IconButton(
                          icon:
                              const Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () {}),
                    ),
                  ),
                ],
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Image(
                            image: AssetImage('assets/images/cartoon6.jpg')),
                        const SizedBox(height: 20),
                        const Text(
                            "The Scholars Build your Future Here and Now",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 38,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0)),
                        const SizedBox(height: 45),
                        const Center(child: CircularProgressIndicator()),
                      ])),
            ]))));
  }
}

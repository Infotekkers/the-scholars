import 'package:another_flushbar/flushbar_helper.dart';
import 'package:client/application/auth/auth_bloc.dart';
import 'package:client/application/auth/sign_in_form/sign_in_form_bloc.dart';
//import 'package:dartz/dartz_streaming.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                      message: failure.map(
                    invalidEmailPasswordCombination: (_) =>
                        "Invalid email or password",
                    emailAlreadyInUse: (_) => "Email already in use",
                    networkError: (_) => "Check network connection",
                    serverError: (_) => "Invalid error",
                    cancelledByUser: (_) => "Cancelled",
                  )).show(context);
                }, (r) {
                  BlocProvider.of<AuthBloc>(context)
                      .add(const AuthEvent.authCheckRequested());
                }));
      },
      builder: (context, state) {
        return Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/shattered-island.gif"),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      // Align(
                      //   alignment: Alignment.topLeft,
                      //   child:
                      //       Image.asset("assets/images/icon7.png", width: 200),
                      // ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 150, left: 40),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: <Widget>[
                              const Text(
                                "Welcome",
                                // ignore: unnecessary_const
                                style: const TextStyle(
                                    color: Color(0xff796b9e),
                                    fontSize: 26,
                                    letterSpacing: 2.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 100,
                        child: Transform.rotate(
                          angle: 45,
                          // ignore: sized_box_for_whitespace
                          child: Container(
                            width: 230,
                            child: Image.asset(
                              'images/pencil.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Get started',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80),
                    child: Form(
                      autovalidateMode: state.showErrorMessages
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Column(
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  borderSide:
                                      BorderSide(color: Colors.white, width: 2),
                                ),
                                fillColor: Colors.white,
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color(0xff796b9e),
                                ),
                                labelText: 'Email',
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              autocorrect: false,
                              onChanged: (value) =>
                                  BlocProvider.of<SignInFormBloc>(context)
                                      .add(SignInFormEvent.emailChanged(value)),
                              validator: (_) =>
                                  BlocProvider.of<SignInFormBloc>(context)
                                      .state
                                      .emailAddress
                                      .value
                                      .fold(
                                          (failure) => failure.maybeMap(
                                              invalidEmail: (_) =>
                                                  "Invalid Email",
                                              orElse: () => null),
                                          (_) => null),
                            ),
                            const SizedBox(height: 35),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                      width: 2,
                                    )),
                                fillColor: Colors.white,
                                prefixIcon:
                                    Icon(Icons.lock, color: Color(0xff796b9e)),
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.white),
                              ),
                              autocorrect: false,
                              obscureText: true,
                              onChanged: (value) =>
                                  BlocProvider.of<SignInFormBloc>(context).add(
                                      SignInFormEvent.passwordChanged(value)),
                              validator: (_) =>
                                  BlocProvider.of<SignInFormBloc>(context)
                                      .state
                                      .password
                                      .value
                                      .fold(
                                          (failure) => failure.maybeMap(
                                              invalidPassword: (_) =>
                                                  "Invalid Password",
                                              orElse: () => null),
                                          (_) => null),
                            ),
                            // ignore: prefer_const_constructors
                            SizedBox(
                              height: 35,
                            ),
                            SizedBox(
                                height: 60,
                                width: MediaQuery.of(context).size.width,
                                child: ElevatedButton(
                                    onPressed: state.isSubmitting
                                        ? null
                                        : () {
                                            BlocProvider.of<SignInFormBloc>(
                                                    context)
                                                .add(const SignInFormEvent
                                                    .signInPressed());
                                          },
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(
                                            0xff5621e8), //background color of button //border width and color
                                        elevation: 3, //elevation of button
                                        shape: RoundedRectangleBorder(
                                            //to set border radius to button
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        padding: const EdgeInsets.all(
                                            20) //content padding inside button
                                        ),
                                    child: const Text("Log in",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal)))),

                            const SizedBox(
                              height: 15,
                            ),

                            SizedBox(
                              height: 60,
                              width: MediaQuery.of(context).size.width,
                              child: Expanded(
                                child: ElevatedButton(
                                  key: const ValueKey("signInRegisterButton"),
                                  onPressed: () {
                                    Navigator.popAndPushNamed(
                                        context, '/register');
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors
                                          .transparent, //background color of button
                                      side: const BorderSide(
                                          width: 2,
                                          color: Colors
                                              .grey), //border width and color
                                      elevation: 3, //elevation of button
                                      shape: RoundedRectangleBorder(
                                          //to set border radius to button
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      padding: const EdgeInsets.all(
                                          20) //content padding inside button
                                      ),
                                  child: const Text("Sign up",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal)),
                                ),
                                // ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:another_flushbar/flushbar_helper.dart';
import 'package:client/application/auth/auth_bloc.dart';
import 'package:client/application/auth/register_form/register_form_bloc.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:client/presentation/core/widgets/flash_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterFormBloc, RegisterFormState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
            () {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                      message: failure.map(
                    invalidEmailPasswordCombination: (_) =>
                        "Invalid email or password",
                    emailAlreadyInUse: (_) => "Email already in use",
                    networkError: (_) => " Check network connection",
                    serverError: (_) => "Server error",
                    cancelledByUser: (_) => "Cancelled",
                  )).show(context);
                }, (r) {
                  BlocProvider.of<AuthBloc>(context)
                      .add(const AuthEvent.authCheckRequested());
                  getWrappedFlashMessage(
                      context, "Account has been created.Login");
                }));
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.grey[800],
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    // Align(
                    //   alignment: Alignment.topLeft,
                    //   child: Image.asset("assets/images/icon7.png", width: 200),
                    // ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: IconButton(
                            icon: const Icon(Icons.arrow_back,
                                color: Colors.white),
                             key: const ValueKey("registerPageLoginButton"),
                                onPressed: () {
                                  Navigator.popAndPushNamed(
                                      context, '/sign-in');
                                },),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 150, left: 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            const Text("Sign Up",
                                // ignore: unnecessary_const
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 2.0)),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Form(
                    autovalidateMode: state.showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1)),
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.person),
                            labelText: 'Username',
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          autocorrect: false,
                          onChanged: (value) =>
                              BlocProvider.of<RegisterFormBloc>(context)
                                  .add(RegisterFormEvent.nameChanged(value)),
                          validator: (_) =>
                              BlocProvider.of<RegisterFormBloc>(context)
                                  .state
                                  .name
                                  .value
                                  .fold(
                                      (failure) => failure.maybeMap(
                                            invalidUsername: (_) =>
                                                'Invalid Username',
                                            orElse: () => null,
                                          ),
                                      (_) => null),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                borderSide:
                                    BorderSide(color: Colors.grey, width: 1)),
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.email),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          autocorrect: false,
                          onChanged: (value) =>
                              BlocProvider.of<RegisterFormBloc>(context)
                                  .add(RegisterFormEvent.emailChanged(value)),
                          validator: (_) =>
                              BlocProvider.of<RegisterFormBloc>(context)
                                  .state
                                  .emailAddress
                                  .value
                                  .fold(
                                      (failure) => failure.maybeMap(
                                            invalidEmail: (_) =>
                                                'Invalid Email',
                                            orElse: () => null,
                                          ),
                                      (_) => null),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 1,
                                )),
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.lock),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          autocorrect: false,
                          obscureText: true,
                          onChanged: (value) =>
                              BlocProvider.of<RegisterFormBloc>(context).add(
                                  RegisterFormEvent.passwordChanged(value)),
                          validator: (_) =>
                              BlocProvider.of<RegisterFormBloc>(context)
                                  .state
                                  .password
                                  .value
                                  .fold(
                                      (failure) => failure.maybeMap(
                                            invalidPassword: (_) =>
                                                'Invalid Password',
                                            orElse: () => null,
                                          ),
                                      (_) => null),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Expanded(
                              child: Text("Select Role:"),
                            ),
                            Expanded(
                              flex: 3,
                              child: ListTile(
                                title: const Text("User"),
                                leading: Radio(
                                  key: const ValueKey(
                                      "registerPageRoleUserInput"),
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) =>
                                          Theme.of(context).primaryColor),
                                  value: Role("user"),
                                  groupValue: state.role,
                                  onChanged: (_) => {
                                    BlocProvider.of<RegisterFormBloc>(context)
                                        .add(
                                      const RegisterFormEvent.roleChanged(
                                          "user"),
                                    )
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: ListTile(
                                title: const Text("Admin"),
                                leading: Radio(
                                  fillColor: MaterialStateColor.resolveWith(
                                      (states) =>
                                          Theme.of(context).primaryColor),
                                  value: Role("admin"),
                                  groupValue: state.role,
                                  onChanged: (_) => {
                                    BlocProvider.of<RegisterFormBloc>(context)
                                        .add(
                                      const RegisterFormEvent.roleChanged(
                                          "admin"),
                                    )
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 35),
                        SizedBox(
                          height: 60,
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                              key: const ValueKey("registerPageRegisterButton"),
                              onPressed: state.isSubmitting
                                  ? null
                                  : () {
                                      BlocProvider.of<RegisterFormBloc>(context)
                                          .add(const RegisterFormEvent
                                              .registerPressed());
                                    },
                              style: ElevatedButton.styleFrom(
                                  primary:
                                      Colors.grey, //background color of button
                                  side: const BorderSide(
                                      width: 3,
                                      color:
                                          Colors.grey), //border width and color
                                  elevation: 3, //elevation of button
                                  shape: RoundedRectangleBorder(
                                      //to set border radius to button
                                      borderRadius: BorderRadius.circular(30)),
                                  padding: const EdgeInsets.all(
                                      20) //content padding inside button
                                  ),
                              child: const Text("Register")),
                        ),

                        const SizedBox(height: 15),
                        
                      ]),
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}

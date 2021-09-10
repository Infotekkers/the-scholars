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
        return Scaffold(
          backgroundColor: Colors.grey[800],
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset("assets/images/icon7.png", width: 200), 
                    ),
                     Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:const EdgeInsets.only(top: 25),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {}
                         
                    ),
                  ),
                ),
               // Align(
                //   alignment: Alignment.centerLeft,
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 150, left: 30),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       // ignore: prefer_const_literals_to_create_immutables
                //       children: <Widget>[
                //        const Image(image: AssetImage('assets/images/scholars.PNG'),)
                //       ],
                //     ),
                //   ),
                // ),
                     Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150, left: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: <Widget>[
                        const Text("Login",
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(
                                color: Colors.grey, width: 1
                              )
                            ),
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.email),
                            labelText: 'Email',
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          autocorrect: false,
                          onChanged: (value) => BlocProvider.of<SignInFormBloc>(context)
                              .add(SignInFormEvent.emailChanged(value)),
                          validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                              .state
                              .emailAddress
                              .value
                              .fold(
                                  (failure) => failure.maybeMap(
                                      invalidEmail: (_) => "Invalid Email",
                                      orElse: () => null),
                                  (_) => null),
                        ),
                       const SizedBox(height: 35),
                        TextFormField(
                          decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              borderSide: BorderSide(
                                color: Colors.grey, width: 1,)),
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.lock),
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white),
                          ),
                          autocorrect: false,
                          obscureText: true,
                          onChanged: (value) => BlocProvider.of<SignInFormBloc>(context)
                              .add(SignInFormEvent.passwordChanged(value)),
                          validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                              .state
                              .password
                              .value
                              .fold(
                                  (failure) => failure.maybeMap(
                                      shortPassword: (_) => "Invalid Password",
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
                                      BlocProvider.of<SignInFormBloc>(context)
                                          .add(const SignInFormEvent.signInPressed());
                                    },

                              style: ElevatedButton.styleFrom(
                                primary: Colors.grey, //background color of button
                                side: const BorderSide(width:3, color:Colors.grey), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder( //to set border radius to button
                                          borderRadius: BorderRadius.circular(30)
                                      ),
                                  padding: const EdgeInsets.all(20) //content padding inside button
                              ),
                              child: const Text("Log In", 
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal)))),
                          
                           const SizedBox(
                          height: 15,
                        ),
                        const Center(
                          child: Text(  
                            "Sign UP", 
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16,
                                )))
                      ],
                    ),
                  )),
              ],
              
            ),
          ),
        );
      },
    );
  }
}

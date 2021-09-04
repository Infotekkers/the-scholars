import 'package:another_flushbar/flushbar_helper.dart';
import 'package:client/application/auth/sign_in_form/sign_in_form_bloc.dart';
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
                  // TODO: Push to HomePage
                }));
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
            child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
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
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
              ),
              autocorrect: false,
              obscureText: true,
              onChanged: (value) => BlocProvider.of<SignInFormBloc>(context)
                  .add(SignInFormEvent.passwordChanged(value)),
              validator: (_) => BlocProvider.of<SignInFormBloc>(context)
                  .state
                  .emailAddress
                  .value
                  .fold(
                      (failure) => failure.maybeMap(
                          shortPassword: (_) => "Invalid Password",
                          orElse: () => null),
                      (_) => null),
            ),
            ElevatedButton(
                onPressed: state.isSubmitting
                    ? null
                    : () {
                        BlocProvider.of<SignInFormBloc>(context)
                            .add(const SignInFormEvent.signInPressed());
                      },
                child: const Text("Login")),
            ElevatedButton(onPressed: () {}, child: const Text("Register")),
          ],
        ));
      },
    );
  }
}

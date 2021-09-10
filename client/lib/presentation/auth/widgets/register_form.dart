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
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            children: [
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                key: const ValueKey("registerPageFullNameInput"),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person), labelText: 'Username'),
                autocorrect: false,
                onChanged: (value) => BlocProvider.of<RegisterFormBloc>(context)
                    .add(RegisterFormEvent.nameChanged(value)),
                validator: (_) => BlocProvider.of<RegisterFormBloc>(context)
                    .state
                    .name
                    .value
                    .fold(
                        (failure) => failure.maybeMap(
                              invalidUsername: (_) => 'Invalid Username',
                              orElse: () => null,
                            ),
                        (_) => null),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                key: const ValueKey("registerPageEmailInput"),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => BlocProvider.of<RegisterFormBloc>(context)
                    .add(RegisterFormEvent.emailChanged(value)),
                validator: (_) => BlocProvider.of<RegisterFormBloc>(context)
                    .state
                    .emailAddress
                    .value
                    .fold(
                        (failure) => failure.maybeMap(
                              invalidEmail: (_) => 'Invalid Email',
                              orElse: () => null,
                            ),
                        (_) => null),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                key: const ValueKey("registerPagePasswordInput"),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => BlocProvider.of<RegisterFormBloc>(context)
                    .add(RegisterFormEvent.passwordChanged(value)),
                validator: (_) => BlocProvider.of<RegisterFormBloc>(context)
                    .state
                    .password
                    .value
                    .fold(
                        (failure) => failure.maybeMap(
                              invalidPassword: (_) => 'Invalid Password',
                              orElse: () => null,
                            ),
                        (_) => null),
              ),
              const SizedBox(
                height: 5,
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
                        key: const ValueKey("registerPageRoleUserInput"),
                        fillColor: MaterialStateColor.resolveWith(
                            (states) => Theme.of(context).primaryColor),
                        value: Role("user"),
                        groupValue: state.role,
                        onChanged: (_) => {
                          BlocProvider.of<RegisterFormBloc>(context).add(
                            const RegisterFormEvent.roleChanged("user"),
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
                            (states) => Theme.of(context).primaryColor),
                        value: Role("admin"),
                        groupValue: state.role,
                        onChanged: (_) => {
                          BlocProvider.of<RegisterFormBloc>(context).add(
                            const RegisterFormEvent.roleChanged("admin"),
                          )
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        key: const ValueKey("registerPageRegisterButton"),
                        onPressed: state.isSubmitting
                            ? null
                            : () {
                                BlocProvider.of<RegisterFormBloc>(context).add(
                                    const RegisterFormEvent.registerPressed());
                              },
                        child: const Text("Register")),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                        key: ValueKey("registerPageLoginButton"),
                        onPressed: () {
                          Navigator.popAndPushNamed(context, '/sign-in');
                        },
                        child: const Text("Sign In")),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

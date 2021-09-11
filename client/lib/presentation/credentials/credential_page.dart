import 'package:client/application/auth/auth_bloc.dart';
import 'package:client/application/credentials/credentials_bloc.dart';
import 'package:client/application/navigation/navigation_bloc.dart';
import 'package:client/domain/auth/i_auth_repository.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/application/widgets/form_label.dart';
import 'package:client/presentation/core/widgets/flash_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CredentialPage extends StatelessWidget {
  const CredentialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CredentialsBloc _credentialsBloc = getIt<CredentialsBloc>();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      child: BlocConsumer<CredentialsBloc, CredentialState>(
        listener: (context, state) {
          // TODO: implement listener
          state.valueFailureOrSuccess.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  failure.maybeMap(
                    invalidEmail: (_) {
                      getWrappedFlashMessage(context, "Invalid Email");
                    },
                    invalidPassword: (_) {
                      getWrappedFlashMessage(context, "Invalid Password");
                    },
                    shortPassword: (_) {
                      getWrappedFlashMessage(context, "Password too short");
                    },
                    orElse: () {},
                  );
                },
                (_) {},
              );
            },
          );

          state.resetFailureOrSuccess.fold(
            () {},
            (either) {
              either.fold(
                (failure) {
                  failure.maybeMap(
                    invalidAuth: (_) {
                      getWrappedFlashMessage(
                          context, "Invalid credentials. Try again");
                    },
                    serverError: (_) {
                      getWrappedFlashMessage(context, "Sever Error");
                    },
                    orElse: () {},
                  );
                },
                (_) {
                  getWrappedFlashMessage(context, "Credentials Reset");
                  getIt<CredentialsBloc>()
                      .add(const CredentialsEvent.initial());
                },
              );
            },
          );
        },
        builder: (context, state) {
          return ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // Always Shown
              //  Label
              const Center(
                child: Text(
                  "Reset Your Credentials",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1.2),
                ),
              ),

              // Email Button
              Container(
                margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(),
                    bottom: BorderSide(),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        // Add Event
                        _credentialsBloc.add(
                            const CredentialsEvent.activateEmailResetArea());
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        width: MediaQuery.of(context).size.width,
                        height: 35,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [const Text("Change Email")],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              getComponentEmail(state, context, _credentialsBloc),

              // Password Button
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                width: MediaQuery.of(context).size.width,
                height: 55,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        _credentialsBloc.add(
                            const CredentialsEvent.activatePasswordResetArea());
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        width: MediaQuery.of(context).size.width,
                        height: 35,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [const Text("Change Password")],
                        ),
                      ),
                    )
                  ],
                ),
              ),

              getComponentPassword(state, context, _credentialsBloc),

              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 60, horizontal: 120),
                child: MaterialButton(
                  onPressed: () {
                    getIt<IAuthRepository>().removeCachedUser();
                    getIt<NavigationBloc>().add(
                        const NavigationEvent.changePage(pageIndexNumber: 0));

                    getIt<AuthBloc>().add(const AuthEvent.authCheckRequested());
                    Navigator.popAndPushNamed(context, '/sign-in');
                  },
                  color: Colors.red,
                  child: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

Widget getComponentEmail(CredentialState state, BuildContext context,
    CredentialsBloc credentialsBloc) {
  // Condition Render
  if (state.isEmailResetActive) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Form(
        autovalidateMode: state.showErrorMessages == true
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: const Center(
                  child: Text(
                "Confirm",
                style: TextStyle(fontSize: 14),
              )),
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: "New Email Address",
                hintStyle: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1.2),
              ),
              onChanged: (val) => credentialsBloc.add(
                CredentialsEvent.newEmailAddressChanged(newEmailAddress: val),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Current Password",
                hintStyle: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1.2),
              ),
              onChanged: (val) => credentialsBloc.add(
                CredentialsEvent.currentPasswordChanged(currentPassword: val),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      credentialsBloc.add(
                          const CredentialsEvent.deactivateEmailResetArea());
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: TextButton(
                      onPressed: () {
                        credentialsBloc
                            .add(const CredentialsEvent.emailSubmitEvent());
                      },
                      child: const Text(
                        "Reset",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  } else {
    return SizedBox();
  }
}

Widget getComponentPassword(CredentialState state, BuildContext context,
    CredentialsBloc credentialsBloc) {
  // Condition Render
  if (state.isPasswordResetActive) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Form(
        autovalidateMode: state.showErrorMessages == true
            ? AutovalidateMode.always
            : AutovalidateMode.disabled,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: const Center(
                  child: Text(
                "Confirm",
                style: TextStyle(fontSize: 14),
              )),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "New Password",
                hintStyle: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1.2),
              ),
              onChanged: (val) => credentialsBloc.add(
                CredentialsEvent.newPasswordChanged(newPassword: val),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                hintText: "Current Password",
                hintStyle: TextStyle(
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 1.2),
              ),
              onChanged: (val) => credentialsBloc.add(
                CredentialsEvent.currentPasswordChanged(currentPassword: val),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      credentialsBloc.add(
                          const CredentialsEvent.deactivatePasswordResetArea());
                    },
                    child: const Text(
                      "Cancel",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child: TextButton(
                      onPressed: () {
                        credentialsBloc
                            .add(const CredentialsEvent.passwordSubmitEvent());
                      },
                      child: const Text(
                        "Reset",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.green,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  } else {
    return const SizedBox();
  }
}

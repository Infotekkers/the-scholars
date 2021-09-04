import 'package:client/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/auth/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
          create: (BuildContext context) => getIt<SignInFormBloc>(),
          child: SignInForm()),
    );
  }
}

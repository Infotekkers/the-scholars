import 'package:client/application/auth/register_form/register_form_bloc.dart';
import 'package:client/injectable.dart';
import 'package:client/presentation/auth/widgets/register_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Here'),
      ),
      body: BlocProvider(
        create: (BuildContext context) => getIt<RegisterFormBloc>(),
        child: RegisterForm(),
      ),
    );
  }
}

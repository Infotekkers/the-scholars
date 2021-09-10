import 'dart:async';
import 'package:client/domain/auth/auth_failure.dart';
import 'package:client/domain/auth/i_auth_repository.dart';
import 'package:client/domain/auth/user.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'register_form_event.dart';
part 'register_form_state.dart';

part 'register_form_bloc.freezed.dart';

@injectable
class RegisterFormBloc extends Bloc<RegisterFormEvent, RegisterFormState> {
  final IAuthRepository authRepository;

  RegisterFormBloc(this.authRepository) : super(RegisterFormState.initial());

  @override
  Stream<RegisterFormState> mapEventToState(RegisterFormEvent event) async* {
    yield* event.map(
      nameChanged: (e) async* {
        yield state.copyWith(
          name: Name(e.nameStr),
          authFailureOrSuccess: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccess: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccess: none(),
        );
      },
      roleChanged: (e) async* {
        yield state.copyWith(
          role: Role(e.roleStr),
          authFailureOrSuccess: none(),
        );
      },
      registerPressed: (e) async* {
        Either<AuthFailure, User>? failureOrSuccess;

        if (state.name.isValid() &&
            state.emailAddress.isValid() &&
            state.password.isValid() &&
            state.role.isValid()) {
          yield state.copyWith(
              isSubmitting: true, authFailureOrSuccess: none());

          final User user = User.initial();
          
          failureOrSuccess = await authRepository.register(
              user: user.copyWith(
                  emailAddress: state.emailAddress,
                  name: state.name,
                  role: state.role),
              password: state.password);
        }

        yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            authFailureOrSuccess: optionOf(failureOrSuccess));
        
        if (failureOrSuccess?.isRight() ?? false) {
          failureOrSuccess!.fold((l) => {}, (r) async {
            await authRepository.setCachedUser(user: r);
          });
        }
      },
    );
  }
}

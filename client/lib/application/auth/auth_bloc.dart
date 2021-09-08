import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/domain/auth/i_auth_repository.dart';
import 'package:client/domain/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  IAuthRepository iAuthRepository;

  AuthBloc(
    this.iAuthRepository,
  ) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(authCheckRequested: (e) async* {
      final failureOrSuccess = await iAuthRepository.getCachedUser();
      yield failureOrSuccess.fold(() => const AuthState.unauthenticated(), (r) {
        if (e.claimedRole != "") {
          return e.claimedRole == r.role.getOrCrash() ? AuthState.authorized(r) : const AuthState.unauthorized();
        } else {
          return AuthState.authorized(r);
        }
      });
    }, signedOut: (e) async* {});
  }
}

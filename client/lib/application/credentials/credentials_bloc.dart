import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/domain/auth/i_auth_repository.dart';
import 'package:client/domain/auth/user.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:client/domain/core/failures.dart';
import 'package:client/domain/credentials/credentials.dart';
import 'package:client/domain/credentials/credentials_failures.dart';
import 'package:client/domain/credentials/i_credentials_repository.dart';

import 'package:client/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'credentials_event.dart';
part 'credentials_state.dart';

part 'credentials_bloc.freezed.dart';

@lazySingleton
class CredentialsBloc extends Bloc<CredentialsEvent, CredentialState> {
  final ICredentialsRepository _iCredentialsRepository;
  CredentialsBloc(this._iCredentialsRepository)
      : super(CredentialState.initial());

  @override
  Stream<CredentialState> mapEventToState(
    CredentialsEvent event,
  ) async* {
    yield* event.map(
      initial: (e) async* {
        yield CredentialState.initial();
      },
      activateEmailResetArea: (e) async* {
        yield state.copyWith(
          isEmailResetActive: true,
          isPasswordResetActive: false,
        );
      },
      deactivateEmailResetArea: (e) async* {
        yield state.copyWith(
          isEmailResetActive: false,
        );
      },
      activatePasswordResetArea: (e) async* {
        yield state.copyWith(
          isPasswordResetActive: true,
          isEmailResetActive: false,
        );
      },
      deactivatePasswordResetArea: (e) async* {
        yield state.copyWith(
          isPasswordResetActive: false,
        );
      },
      currentPasswordChanged: (e) async* {
        yield state.copyWith(
            currentPassword: Password(e.currentPassword),
            showErrorMessages: true);
      },
      newEmailAddressChanged: (e) async* {
        yield state.copyWith(
            newEmailAddress: EmailAddress(e.newEmailAddress),
            showErrorMessages: true);
      },
      newPasswordChanged: (e) async* {
        yield state.copyWith(
            newPassword: Password(e.newPassword), showErrorMessages: true);
      },
      newPasswordEmailChanged: (e) async* {
        yield state.copyWith(
            newPassword: Password(e.newPassword), showErrorMessages: true);
      },
      emailSubmitEvent: (e) async* {
        yield state.copyWith(
          isFetching: true,
        );
        // Get Current Email Value
        final Option<User> user =
            await getIt<IAuthRepository>().getCachedUser();

        // ignore: prefer_final_locals
        String currentEmail = user.fold(
          () => "",
          (a) => a.emailAddress.value.fold(
            (l) => "",
            (r) => r,
          ),
        );

        // Validate
        final bool isNewEmailValid = state.newEmailAddress.isValid();
        final bool isCurrentPassswordValid = state.currentPassword.isValid();
        final bool isCurrentEmailValid = EmailAddress(currentEmail).isValid();

        if (isNewEmailValid && isCurrentEmailValid && isCurrentPassswordValid) {
          // Create the credential Objects
          final CredentialsEmail currentCreds = CredentialsEmail(
            currentEmailAddress: EmailAddress(currentEmail),
            newEmail: state.newEmailAddress,
            currentPassword: state.currentPassword,
          );

          // ignore: avoid_print
          final Either<CredentialFailure, String> failureOrSuccess =
              await _iCredentialsRepository.resetEmail(
                  credentialsEmail: currentCreds);

          yield state.copyWith(
            isFetching: false,
            resetFailureOrSuccess: some(failureOrSuccess),
            showErrorMessages: false,
          );
        } else {
          ValueFailure failureValue = ValueFailure.generalError();
          if (!isCurrentPassswordValid) {
            failureValue = state.currentPassword.value.fold(
              (l) => failureValue = l,
              (r) => failureValue = const ValueFailure.generalError(),
            );
          } else if (!isNewEmailValid) {
            failureValue = state.newEmailAddress.value.fold(
              (l) => failureValue = l,
              (r) => failureValue = const ValueFailure.generalError(),
            );
          }

          yield state.copyWith(
            showErrorMessages: true,
            isFetching: false,
            valueFailureOrSuccess: some(
              left(failureValue),
            ),
          );
        }
        yield state.copyWith();
      },
      passwordSubmitEvent: (e) async* {
        yield state.copyWith(
          isFetching: true,
        );
        final Option<User> user =
            await getIt<IAuthRepository>().getCachedUser();

        String currentEmail = user.fold(
          () => "",
          // ignore: prefer_final_locals
          (a) => a.emailAddress.value.fold(
            (l) => "",
            (r) => r,
          ),
        );
        // Validate
        final bool isNewPasswordValid = state.newPassword.isValid();
        final bool isCurrentPassswordValid = state.currentPassword.isValid();
        final bool isCurrentEmailValid = EmailAddress(currentEmail).isValid();

        if (isNewPasswordValid &&
            isCurrentPassswordValid &&
            isCurrentEmailValid) {
          final CredentialsPassword currentCreds = CredentialsPassword(
            currentEmailAddress: EmailAddress(currentEmail),
            newPassword: state.newPassword,
            currentPassword: state.currentPassword,
          );

          final Either<CredentialFailure, String> failureOrSuccess =
              await _iCredentialsRepository.resetPassword(
                  credentialsPassword: currentCreds);

          yield state.copyWith(
            isFetching: false,
            showErrorMessages: true,
            resetFailureOrSuccess: some(failureOrSuccess),
          );
        } else {
          ValueFailure failureValue = const ValueFailure.generalError();
          if (!isNewPasswordValid) {
            failureValue = state.newPassword.value.fold(
              (l) => failureValue = l,
              (r) => failureValue = const ValueFailure.generalError(),
            );
          } else if (!isCurrentPassswordValid) {
            failureValue = state.currentPassword.value.fold(
              (l) => failureValue = l,
              (r) => failureValue = const ValueFailure.generalError(),
            );
          }

          yield state.copyWith(
            isFetching: false,
            showErrorMessages: true,
            valueFailureOrSuccess: some(
              left(failureValue),
            ),
          );
        }

        yield state.copyWith();
      },
    );
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/domain/core/failures.dart';
import 'package:client/domain/profile/i_profile_repository.dart';
import 'package:client/domain/profile/profile.dart';
import 'package:client/domain/profile/profile_failures.dart';
import 'package:client/domain/profile/value_objects.dart';
import 'package:client/infrastructure/application/application_dto.dart';
import 'package:client/infrastructure/profile/profile_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'profile_event.dart';
part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

@lazySingleton
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IApplicationProfileRepository _iApplicationProfileRepository;
  ProfileBloc(this._iApplicationProfileRepository)
      : super(ProfileState.initial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(
      fullNameChanged: (e) async* {
        // Yeild with changed name
        yield state.copyWith(
          fullName: FullName(fullName: e.fullName),
          showErrorMessages: true,
          isSubmitting: false,
        );
      },
      birthDateChanged: (e) async* {
        yield state.copyWith(
          birthDate: e.birthDate,
          showErrorMessages: true,
          isSubmitting: false,
        );
      },
      genderChanged: (e) async* {
        yield state.copyWith(
          gender: Gender(gender: e.gender),
          showErrorMessages: true,
          isSubmitting: false,
        );
      },
      locationChanged: (e) async* {
        yield state.copyWith(
          location: Location(location: e.location),
          showErrorMessages: true,
          isSubmitting: false,
        );
      },
      phoneCodeChanged: (e) async* {
        yield state.copyWith(
          phoneCode: PhoneCode(phoneCode: e.phoneCode),
          showErrorMessages: true,
          isSubmitting: false,
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          phoneNumber: PhoneNumber(phoneNumber: e.phoneNumber),
          showErrorMessages: true,
          isSubmitting: false,
        );
      },
      saveProfile: (e) async* {
        // Return loader state
        /**
        * Validate all values
        */
        // Full Name Validation
        final bool isFullNameValid = state.fullName.isValid();

        // BirthDate Validation
        final bool isBirthDateValid =
            BirthDate(birthDate: state.birthDate).isValid();

        // Gender Validation
        final bool isGenderValid = state.gender.isValid();
        // Location Validation
        final bool isLocationValid = state.location.isValid();

        // Phone code validation
        final bool isPhoneCodeValid = state.phoneCode.isValid();

        // Phone Number Validation
        final bool isPhoneNumberValid = state.phoneNumber.isValid();

        // If all valid
        if (isFullNameValid &&
            isBirthDateValid &&
            isGenderValid &&
            isLocationValid &&
            isPhoneCodeValid &&
            isPhoneNumberValid) {
          yield state.copyWith(
            isSubmitting: true,
            showErrorMessages: true,
          );
          // Create application profile
          final currentApplicationProfile = ApplicationProfile(
            fullName: state.fullName,
            birthDate: BirthDate(birthDate: state.birthDate),
            gender: state.gender,
            location: state.location,
            phoneCode: state.phoneCode,
            phoneNumber: state.phoneNumber,
          );

          final Either<ApplicationProfileFailure, ApplicationProfile>
              failureOrSuccess =
              await _iApplicationProfileRepository.saveApplicationProfile(
                  applicationProfile: currentApplicationProfile);

          // Save to Database

          yield state.copyWith(
            showErrorMessages: false,
            isSubmitting: false,
            applicationProfileFailureOrSuccess: some(
              failureOrSuccess,
            ),
          );
        }
        // Handle Non Valid values
        else {
          // Yield Loader
          yield state.copyWith(showErrorMessages: true, isSubmitting: true);

          // Common failure value
          ValueFailure valueFailure = const ValueFailure.generalError();
          if (!isFullNameValid) {
            state.fullName.value.fold(
              (l) => valueFailure = l,
              (r) => null,
            );
          } else if (!isBirthDateValid) {
            BirthDate(birthDate: state.birthDate).value.fold(
                  (l) => valueFailure = l,
                  (r) => null,
                );
          } else if (!isGenderValid) {
            state.gender.value.fold(
              (l) => valueFailure = l,
              (r) => null,
            );
          } else if (!isLocationValid) {
            state.location.value.fold(
              (l) => valueFailure = l,
              (r) => null,
            );
          } else if (!isPhoneCodeValid) {
            state.phoneCode.value.fold(
              (l) => valueFailure = l,
              (r) => null,
            );
          } else if (!isPhoneNumberValid) {
            state.phoneNumber.value.fold(
              (l) => valueFailure = l,
              (r) => null,
            );
          }

          // Yield Common Error state
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            valueFailureOrSuccess: some(
              left(valueFailure),
            ),
          );
        }

        // Common reset state for continued live validation
        yield state.copyWith(
          showErrorMessages: false,
          isSubmitting: false,
          valueFailureOrSuccess: some(
            left(
              const ValueFailure.generalError(),
            ),
          ),
        );
      },
      editProfile: (e) async* {
        // Start Loader Animation
        yield state.copyWith(
          isSubmitting: true,
          showErrorMessages: true,
        );

        // Get Values from SP
        final Either<ApplicationProfileFailure, ApplicationProfile>
            cachedApplicationProfile =
            await _iApplicationProfileRepository.getApplicationProfile();

        if (cachedApplicationProfile.isRight()) {
          ApplicationProfile applicationProfile = ApplicationProfile.initial();

          cachedApplicationProfile.fold(
            (l) => l,
            (r) => applicationProfile = r,
          );

          yield state.copyWith(
            fullName: applicationProfile.fullName,
            // birthDate: DateTime.parse(
            //   applicationProfile.birthDate.toString().split(" ")[0],
            // ),
            gender: applicationProfile.gender,
            location: applicationProfile.location,
            phoneCode: applicationProfile.phoneCode,
            phoneNumber: applicationProfile.phoneNumber,
            isSubmitting: false,
          );
        } else {
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: true,
            applicationProfileFailureOrSuccess: some(cachedApplicationProfile),
          );
        }

        // Create ApplicationProfileDTO

        // Inject To State

        // Return a state
      },
      deleteProfile: (e) async* {
        // Send Loading State
        yield state.copyWith(
          showErrorMessages: true,
          isSubmitting: true,
        );

        final Either<ApplicationProfileFailure, String> failureOrSuccess =
            await _iApplicationProfileRepository.deleteApplicationProfile();

        if (failureOrSuccess.isRight()) {
          yield ProfileState.initial();
        } else {
          yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: false,
            applicationProfileFailureOrSuccess: some(
              left(
                const ApplicationProfileFailure.databaseError(),
              ),
            ),
          );
        }
      },
    );
  }
}

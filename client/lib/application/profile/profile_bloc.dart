import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:client/domain/core/failures.dart';
import 'package:client/domain/profile/i_profile_repository.dart';
import 'package:client/domain/profile/profile.dart';
import 'package:client/domain/profile/profile_failures.dart';
import 'package:client/domain/profile/value_objects.dart';
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
        print(
            "@bloc : new name is ${state.fullName.value.fold((l) => "left", (r) => r)}");
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
      saveProfile: (e) async* {},
      editProfile: (e) async* {},
    );
  }
}

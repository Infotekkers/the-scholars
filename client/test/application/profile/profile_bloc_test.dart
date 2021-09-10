import 'package:bloc_test/bloc_test.dart';
import 'package:client/application/profile/profile_bloc.dart';
import 'package:client/domain/profile/profile.dart';
import 'package:client/domain/profile/value_objects.dart';
import 'package:client/infrastructure/profile/api_profile_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockApiProfileRepository extends Mock
    implements ApiApplicationProfileRepository {}

void main() {
  final MockApiProfileRepository mockApiProfileRepository =
      MockApiProfileRepository();

  group(
    "ApplicationProfile Bloc Test",
    () {
      blocTest<ProfileBloc, ProfileState>(
        "should emit nothing",
        build: () => ProfileBloc(mockApiProfileRepository),
        expect: () => [],
      );

      // Full Name Changed
      blocTest<ProfileBloc, ProfileState>(
        "should emit full name changed",
        build: () => ProfileBloc(mockApiProfileRepository),
        act: (bloc) => bloc.add(
          const ProfileEvent.fullNameChanged("full name"),
        ),
        expect: () {
          ProfileState expectedState = ProfileState.initial();
          expectedState = expectedState.copyWith(
            showErrorMessages: true,
            fullName: FullName(fullName: "full name"),
          );
          return [expectedState];
        },
      );

      // Brithdate Changed
      blocTest<ProfileBloc, ProfileState>(
        "should emit birth date changed",
        build: () => ProfileBloc(mockApiProfileRepository),
        act: (bloc) => bloc.add(
          ProfileEvent.birthDateChanged(
            DateTime.parse("2005-05-02"),
          ),
        ),
        expect: () {
          ProfileState expectedState = ProfileState.initial();
          expectedState = expectedState.copyWith(
            showErrorMessages: true,
            birthDate: DateTime.parse("2005-05-02"),
          );
          return [expectedState];
        },
      );

      // gender Changed
      blocTest<ProfileBloc, ProfileState>(
        "should emit gender changed",
        build: () => ProfileBloc(mockApiProfileRepository),
        act: (bloc) => bloc.add(
          const ProfileEvent.genderChanged("male"),
        ),
        expect: () {
          ProfileState expectedState = ProfileState.initial();
          expectedState = expectedState.copyWith(
            showErrorMessages: true,
            gender: Gender(gender: "male"),
          );
          return [expectedState];
        },
      );

      // Location changed
      blocTest<ProfileBloc, ProfileState>(
        "should emit location changed",
        build: () => ProfileBloc(mockApiProfileRepository),
        act: (bloc) => bloc.add(
          const ProfileEvent.locationChanged("Kenya"),
        ),
        expect: () {
          ProfileState expectedState = ProfileState.initial();
          expectedState = expectedState.copyWith(
            showErrorMessages: true,
            location: Location(location: "Kenya"),
          );
          return [expectedState];
        },
      );

      // Phone Code changed
      blocTest<ProfileBloc, ProfileState>(
        "should emit phone code changed",
        build: () => ProfileBloc(mockApiProfileRepository),
        act: (bloc) => bloc.add(
          const ProfileEvent.phoneCodeChanged("+251"),
        ),
        expect: () {
          ProfileState expectedState = ProfileState.initial();
          expectedState = expectedState.copyWith(
            showErrorMessages: true,
            phoneCode: PhoneCode(phoneCode: "+251"),
          );
          return [expectedState];
        },
      );

      // Phone Number Changed
      blocTest<ProfileBloc, ProfileState>(
        "should emit phone number changed",
        build: () => ProfileBloc(mockApiProfileRepository),
        act: (bloc) =>
            bloc.add(const ProfileEvent.phoneNumberChanged("123456789")),
        expect: () {
          ProfileState expectedState = ProfileState.initial();
          expectedState = expectedState.copyWith(
            showErrorMessages: true,
            phoneNumber: PhoneNumber(phoneNumber: "123456789"),
          );
          return [expectedState];
        },
      );

      // Save Profile
      // blocTest<ProfileBloc, ProfileState>(
      //   "should emit save profile",
      //   build: () => ProfileBloc(mockApiProfileRepository),
      //   act: (bloc) => bloc.add(
      //     const ProfileEvent.saveProfile(),
      //   ),
      //   expect: () {
      //     ProfileState expectedState = ProfileState.initial();
      //     expectedState = expectedState.copyWith(
      //       showErrorMessages: true,
      //       isSubmitting: true,
      //       birthDate: DateTime.parse("2006-01-01 00:00:00.000"),
      //       location: Location(location: "Ethiopia"),
      //       phoneCode: PhoneCode(phoneCode: "+251"),
      //     );
      //     return [expectedState];
      //   },
      // );

      // // Edit Profile
      // blocTest<ProfileBloc, ProfileState>(
      //   "should emit edit profile",
      //   build: () => ProfileBloc(mockApiProfileRepository),
      //   act: (bloc) => bloc.add(const ProfileEvent.editProfile()),
      //   expect: () {
      //     ProfileState expectedState = ProfileState.initial();
      //     expectedState = expectedState.copyWith(
      //       showErrorMessages: true,
      //       isSubmitting: true,
      //       birthDate: DateTime.parse("2006-01-01 00:00:00.000"),
      //       location: Location(location: "Ethiopia"),
      //       phoneCode: PhoneCode(phoneCode: "+251"),
      //     );
      //     return [expectedState];
      //   },
      // );

      // Delete Profile
      blocTest<ProfileBloc, ProfileState>(
        "should emit delete profile event",
        build: () => ProfileBloc(mockApiProfileRepository),
        act: (bloc) => bloc.add(
          const ProfileEvent.deleteProfile(),
        ),
        expect: () {
          ProfileState expectedState = ProfileState.initial();
          expectedState = expectedState.copyWith(
              showErrorMessages: true, isSubmitting: true);
          return [expectedState];
        },
      );
    },
  );
}

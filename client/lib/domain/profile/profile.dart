import 'package:client/domain/profile/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';

@freezed
abstract class ApplicationProfile with _$ApplicationProfile {
  const factory ApplicationProfile({
    required FullName fullName,
    required BirthDate birthDate,
    required Gender gender,
    required Location location,
    required PhoneCode phoneCode,
    required PhoneNumber phoneNumber,
  }) = _ApplicationProfile;

  factory ApplicationProfile.initial() => ApplicationProfile(
        fullName: FullName(fullName: ""),
        birthDate: BirthDate(birthDate: DateTime.now()),
        gender: Gender(gender: ""),
        location: Location(location: ""),
        phoneCode: PhoneCode(phoneCode: ""),
        phoneNumber: PhoneNumber(phoneNumber: ""),
      );
}

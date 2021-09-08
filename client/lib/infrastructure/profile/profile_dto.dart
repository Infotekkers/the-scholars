import 'package:client/domain/profile/profile.dart';
import 'package:client/domain/profile/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_dto.freezed.dart';

part 'profile_dto.g.dart';

@freezed
abstract class ApplicationProfileDto implements _$ApplicationProfileDto {
  const ApplicationProfileDto._();

  const factory ApplicationProfileDto({
    required String fullName,
    required String birthDate,
    required String gender,
    required String location,
    required String phoneCode,
    required String phoneNumber,
  }) = _ApplicationProfileDto;

  factory ApplicationProfileDto.fromDomain(
          {required ApplicationProfile applicationProfile}) =>
      ApplicationProfileDto(
        fullName: applicationProfile.fullName.isValid()
            ? applicationProfile.fullName.getOrCrash().toString()
            : "",
        birthDate: applicationProfile.birthDate.isValid()
            ? applicationProfile.birthDate.getOrCrash().toString()
            : "",
        gender: applicationProfile.gender.isValid()
            ? applicationProfile.gender.getOrCrash().toString()
            : "",
        location: applicationProfile.location.isValid()
            ? applicationProfile.location.getOrCrash().toString()
            : "",
        phoneCode: applicationProfile.phoneCode.isValid()
            ? applicationProfile.phoneCode.getOrCrash().toString()
            : "",
        phoneNumber: applicationProfile.phoneNumber.isValid()
            ? applicationProfile.phoneNumber.getOrCrash().toString()
            : "",
      );

  ApplicationProfile toDomain() => ApplicationProfile(
        fullName: FullName(fullName: fullName),
        birthDate: BirthDate(
          birthDate: DateTime.parse("$birthDate 00:00:00"),
        ),
        gender: Gender(gender: gender),
        location: Location(location: location),
        phoneCode: PhoneCode(phoneCode: phoneCode),
        phoneNumber: PhoneNumber(phoneNumber: phoneNumber),
      );

  factory ApplicationProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ApplicationProfileDtoFromJson(json);
}

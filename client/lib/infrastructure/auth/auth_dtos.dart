import 'package:client/domain/auth/user.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:client/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dtos.freezed.dart';
part 'auth_dtos.g.dart';

@freezed
abstract class UserDto implements _$UserDto {
  const UserDto._();

  const factory UserDto({
    @Default("") String emailAddress,
    @Default("") String password,
    @Default("") String role,
    @Default("") String name,
    @Default("") String token,
  }) = _UserDto;

  factory UserDto.fromDomainSignIn(
          EmailAddress emailAddress, Password password) =>
      UserDto(
        emailAddress: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
      );

  factory UserDto.fromDomainRegister(
          EmailAddress emailAddress, Password password, Name name, Role role) =>
      UserDto(
        emailAddress: emailAddress.getOrCrash(),
        password: password.getOrCrash(),
        name: name.getOrCrash(),
        role: role.getOrCrash(),
      );

  User toDomain() => User(
        emailAddress: EmailAddress(emailAddress),
        name: Name(name),
        role: Role(role),
        token: Token(token),
      );

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

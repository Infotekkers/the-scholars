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
    required String emailAddress,
    required String role,
    required String name,
    required String token,
    @Default("") String password,
  }) = _UserDto;

  factory UserDto.fromDomain(
          User user, {Password? password}) =>
      UserDto(
        emailAddress: user.emailAddress.isValid() ? user.emailAddress.getOrCrash() : "",
        name: user.name.isValid() ? user.name.getOrCrash() : "",
        role: user.role.isValid() ? user.role.getOrCrash() : "",
        token: user.token.isValid() ? user.token.getOrCrash() : "",
        password: password?.isValid() == true ? password!.getOrCrash() : "",
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

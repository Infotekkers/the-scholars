import 'package:client/domain/auth/value_objects.dart';
import 'package:client/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required Token token,
    required Name name,
    required EmailAddress emailAddress,
    required Role role,
  }) = _User;
}
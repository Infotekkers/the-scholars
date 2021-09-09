part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authorized(User user) = Authorized;
  const factory AuthState.unauthorized() = Unauthorized;
  const factory AuthState.unauthenticated() = Unauthenticated;
}

part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested(
      {@Default("") String claimedRole}) = AuthCheckRequested;
  const factory AuthEvent.signedOut() = SignedOut;
}

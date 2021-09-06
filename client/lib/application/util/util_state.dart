part of 'util_bloc.dart';

@freezed
class UtilState with _$UtilState {
  const factory UtilState({required bool isProfileComplete}) = _UtilState;

  factory UtilState.initial() => const UtilState(isProfileComplete: false);
}

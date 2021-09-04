part of 'navigation_bloc.dart';

@freezed
abstract class NavigationState with _$NavigationState {
  const factory NavigationState({
    required int pageIndexNumber,
  }) = _NavigationState;

  factory NavigationState.initial() => NavigationState(pageIndexNumber: 0);
}

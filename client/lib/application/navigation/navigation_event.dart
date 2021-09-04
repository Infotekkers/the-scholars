part of 'navigation_bloc.dart';

@freezed
class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.changePage({required int pageIndexNumber}) =
      _ChangePage;
}

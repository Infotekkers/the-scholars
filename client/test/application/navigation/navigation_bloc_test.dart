import 'package:bloc_test/bloc_test.dart';
import 'package:client/application/navigation/navigation_bloc.dart';

void main() {
  blocTest<NavigationBloc, NavigationState>(
    "should emit default index 0",
    build: () => NavigationBloc(),
    act: (bloc) => bloc.add(
      const NavigationEvent.changePage(pageIndexNumber: 0),
    ),
    expect: () {
      final NavigationState expectedState = NavigationState.initial();

      return [expectedState];
    },
  );

  blocTest<NavigationBloc, NavigationState>(
    "should emit change in index => 1",
    build: () => NavigationBloc(),
    act: (bloc) => bloc.add(
      const NavigationEvent.changePage(pageIndexNumber: 1),
    ),
    expect: () {
      NavigationState expectedState = NavigationState.initial();
      expectedState = expectedState.copyWith(pageIndexNumber: 1);
      return [expectedState];
    },
  );

  blocTest<NavigationBloc, NavigationState>(
    "should emit change in index => 2",
    build: () => NavigationBloc(),
    act: (bloc) => bloc.add(
      const NavigationEvent.changePage(pageIndexNumber: 2),
    ),
    expect: () {
      NavigationState expectedState = NavigationState.initial();
      expectedState = expectedState.copyWith(pageIndexNumber: 2);
      return [expectedState];
    },
  );
}

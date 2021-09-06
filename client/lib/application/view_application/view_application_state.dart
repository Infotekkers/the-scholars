part of 'view_application_bloc.dart';

@freezed
class ViewApplicationState with _$ViewApplicationState {
  const factory ViewApplicationState({
    required List<ApplicationHighlightDto> allApplications,
    required bool isLoaded,
    required bool isFetching,
    required bool showErrorMessages,
    required Option<Either<ApplicationFailure, List<ApplicationHighlightDto>>>
        viewApplicationFailureOrSuccess,
  }) = _ViewApplicationState;

  factory ViewApplicationState.initial() => ViewApplicationState(
        allApplications: [],
        isLoaded: false,
        isFetching: false,
        showErrorMessages: false,
        viewApplicationFailureOrSuccess: none(),
      );
}

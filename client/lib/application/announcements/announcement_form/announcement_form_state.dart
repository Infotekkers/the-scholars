part of 'announcement_form_bloc.dart';

@freezed
abstract class AnnouncementFormState with _$AnnouncementFormState {
  const factory AnnouncementFormState({
    required AnnouncementTitle title,
    required AnnouncementBody body,
    required AnnouncementDate date,
    required bool showErrorMessages,
    required bool isSaving,
    required bool isEditing,
    required Option<Either<AnnouncementFailure, Unit>> saveFailureOrSuccess,
  }) = _AnnouncementFormState;

  factory AnnouncementFormState.initial() => AnnouncementFormState(
        title: AnnouncementTitle(''),
        body: AnnouncementBody(''),
        date: AnnouncementDate(''),
        showErrorMessages: false,
        isSaving: false,
        isEditing: false,
        saveFailureOrSuccess: none(),
      );
}

part of 'announcement_form_bloc.dart';

@freezed
abstract class AnnouncementFormEvent with _$AnnouncementFormEvent {
  const factory AnnouncementFormEvent.initialized(
      Option<Announcement> initialAnnOption) = _Initialized;
  const factory AnnouncementFormEvent.titleChanged(String titleStr) =
      TitleChanged;
  const factory AnnouncementFormEvent.bodyChanged(String bodyStr) = BodyChanged;
  const factory AnnouncementFormEvent.saved() = _Saved;
}

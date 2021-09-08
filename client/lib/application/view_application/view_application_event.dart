part of 'view_application_bloc.dart';

@freezed
class ViewApplicationEvent with _$ViewApplicationEvent {
  const factory ViewApplicationEvent.started() = _Started;
  const factory ViewApplicationEvent.details(
      {required ApplicationId applicationId}) = _Details;
}

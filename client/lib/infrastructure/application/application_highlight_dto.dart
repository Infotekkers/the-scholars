import 'package:client/domain/application/application_highlight.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_highlight_dto.freezed.dart';

@freezed
abstract class ApplicationHighlightDto with _$ApplicationHighlightDto {
  const ApplicationHighlightDto._();

  const factory ApplicationHighlightDto(
      {required String applicationId,
      required String name,
      required String admissionStatus}) = _ApplicationHighlightDto;

  factory ApplicationHighlightDto.fromDomain(
          ApplicationHighlight applicationHighlight) =>
      ApplicationHighlightDto(
        applicationId: applicationHighlight.applicationId.isValid()
            ? applicationHighlight.applicationId.getOrCrash()
            : "",
        name: applicationHighlight.name.isValid()
            ? applicationHighlight.name.getOrCrash()
            : "",
        admissionStatus: applicationHighlight.admissionStatus.isValid()
            ? applicationHighlight.admissionStatus.getOrCrash()
            : "",
      );

  ApplicationHighlight toDomain() => ApplicationHighlight(
      applicationId: ApplicationId(applicationId: applicationId),
      name: Name(name),
      admissionStatus: AdmissionStatus(admissionStatusStr: admissionStatus));

  factory ApplicationHighlightDto.fromJson(Map<String, dynamic> json) =>
      _$ApplicationHighlightDtoFromJson(json);
}

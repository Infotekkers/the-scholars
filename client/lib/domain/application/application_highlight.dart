import 'package:client/domain/application/value_objects.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'application_highlight.freezed.dart';

@freezed
abstract class ApplicationHighlight with _$ApplicationHighlight {
  const factory ApplicationHighlight({
    required ApplicationId applicationId,
    required Name name,
    required AdmissionStatus admissionStatus,
  }) = _ApplicationHighlight;
}
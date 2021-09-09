import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_failure.freezed.dart';

@freezed
abstract class AnnouncementFailure with _$AnnouncementFailure {
  const factory AnnouncementFailure.unexpected() = _Unexpected;
}

import 'package:client/domain/announcement/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement.freezed.dart';

@freezed
abstract class Announcement with _$Announcement {
  const factory Announcement({
    required AnnouncementId id,
    required AnnouncementTitle title,
    required AnnouncementBody body,
    required AnnouncementDate date,
  }) = _Announcement;

  factory Announcement.initial() => Announcement(
        id: AnnouncementId(""),
        title: AnnouncementTitle(""),
        body: AnnouncementBody(""),
        date: AnnouncementDate(""),
      );
}

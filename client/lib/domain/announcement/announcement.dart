import 'package:client/domain/announcement/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement.freezed.dart';

@freezed
abstract class Announcement with _$Announcement {
  const factory Announcement({
    required AnnouncementTitle title,
    required AnnouncementBody body,
    required AnnouncementDate postdate,
  }) = _Announcement;

  factory Announcement.initial() => Announcement(
        title: AnnouncementTitle(""),
        body: AnnouncementBody(""),
        postdate: AnnouncementDate(""),
      );
}

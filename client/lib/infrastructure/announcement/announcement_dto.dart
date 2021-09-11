import 'package:client/domain/announcement/announcement.dart';
import 'package:client/domain/announcement/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'announcement_dto.freezed.dart';
part 'announcement_dto.g.dart';

@freezed
abstract class AnnouncementDto implements _$AnnouncementDto {
  const AnnouncementDto._();

  const factory AnnouncementDto({
    required String title,
    required String body,
    required String date,
  }) = _AnnouncementDto;

  factory AnnouncementDto.fromDomain(Announcement announcement) {
    return AnnouncementDto(
      title:
          announcement.title.isValid() ? announcement.title.getOrCrash() : "",
      body: announcement.body.isValid() ? announcement.body.getOrCrash() : "",
      date: announcement.date.isValid() ? announcement.date.getOrCrash() : "",
    );
  }

  Announcement toDomain() {
    return Announcement(
        title: AnnouncementTitle(title),
        body: AnnouncementBody(body),
        date: AnnouncementDate(date));
  }

  factory AnnouncementDto.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementDtoFromJson(json);
}

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
    required String postdate,
  }) = _AnnouncementDto;

  factory AnnouncementDto.fromDomain(Announcement announcement) {
    return AnnouncementDto(
      title: announcement.title.getOrCrash(),
      body: announcement.body.getOrCrash(),
      postdate: announcement.postdate.getOrCrash(),
    );
  }

  Announcement toDomain() {
    return Announcement(
        title: AnnouncementTitle(title),
        body: AnnouncementBody(body),
        postdate: AnnouncementDate(postdate));
  }

  factory AnnouncementDto.fromJson(Map<String, dynamic> json) =>
      _$AnnouncementDtoFromJson(json);
}

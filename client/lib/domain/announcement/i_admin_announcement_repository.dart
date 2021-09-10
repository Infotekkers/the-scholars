import 'package:client/domain/announcement/announcement.dart';
import 'package:dartz/dartz.dart';

import 'announcement_failure.dart';

abstract class IAdminAnnouncementRepository {
  Future<Either<AnnouncementFailure, List<Announcement>>> getAnnouncement();
  Future<Either<AnnouncementFailure, Announcement>> createAnnouncement(
      {required Announcement announcement});
  Future<Either<AnnouncementFailure, Announcement>> updateAnnouncement(
      Announcement announcement);
  Future<Either<AnnouncementFailure, Unit>> deleteAnnouncement(
      Announcement announcement);
}

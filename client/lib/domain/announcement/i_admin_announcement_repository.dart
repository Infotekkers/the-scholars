import 'package:client/domain/announcement/announcement.dart';
import 'package:dartz/dartz.dart';

import 'announcement_failure.dart';

abstract class IAdminAnnouncementRepository {
  Stream<Either<AnnouncementFailure, List<Announcement>>> getAnnouncement();
  Future<Either<AnnouncementFailure, Announcement>> createAnnouncement(
      Announcement announcement);
  Future<Either<AnnouncementFailure, Announcement>> updateAnnouncement(
      Announcement announcement);
  Future<Either<AnnouncementFailure, Unit>> deleteAnnouncement(
      Announcement announcement);
}

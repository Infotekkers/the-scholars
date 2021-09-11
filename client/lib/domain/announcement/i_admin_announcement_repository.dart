import 'package:client/domain/announcement/announcement.dart';
import 'package:dartz/dartz.dart';

import 'announcement_failure.dart';

abstract class IAnnouncementRepository {
  Future<Either<AnnouncementFailure, List<Announcement>>> getAnnouncements();
  Future<Either<AnnouncementFailure, Announcement>> saveAnnouncement(
      Announcement announcement);
  Future<Either<AnnouncementFailure, Unit>> deleteAnnouncement(
      Announcement announcement);
}

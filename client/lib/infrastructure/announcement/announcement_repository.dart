import 'package:client/domain/announcement/announcement_failure.dart';
import 'package:client/domain/announcement/announcement.dart';
import 'package:client/domain/announcement/i_admin_announcement_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAdminAnnouncementRepository)
class AnnoncementRepository implements IAdminAnnouncementRepository {
  @override
  Stream<Either<AnnouncementFailure, List<Announcement>>> getAnnouncement() {
    // TODO: implement getAnnouncement
    throw UnimplementedError();
  }

  @override
  Future<Either<AnnouncementFailure, Announcement>> createAnnouncement(
      Announcement announcement) {
    // TODO: implement createAnnouncement
    throw UnimplementedError();
  }

  @override
  Future<Either<AnnouncementFailure, Announcement>> updateAnnouncement(
      Announcement announcement) {
    // TODO: implement updateAnnouncement
    throw UnimplementedError();
  }

  @override
  Future<Either<AnnouncementFailure, Unit>> deleteAnnouncement(
      Announcement announcement) {
    // TODO: implement deleteAnnouncement
    throw UnimplementedError();
  }
}

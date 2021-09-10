import 'package:client/domain/announcement/announcement_failure.dart';
import 'package:client/domain/announcement/announcement.dart';
import 'package:client/domain/announcement/i_admin_announcement_repository.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IAdminAnnouncementRepository)
class AnnoncementAdminRepository implements IAdminAnnouncementRepository {
  http.Client? client = http.Client();
  static const String _baseUrl = "http://192.168.1.9:3000/admin";

  AnnoncementAdminRepository();
  @override
  Future<Either<AnnouncementFailure, List<Announcement>>>
      getAnnouncement() async {
    // TODO: implement getAnnouncement
    final Uri url = Uri.parse("$_baseUrl/admin/announcements");

    try {
      final response = await client!.get(url);

      if (response.statusCode == 200) {
        print("wow");
      }
    } catch (err) {
      print(err);
    }

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

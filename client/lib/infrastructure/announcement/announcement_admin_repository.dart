import 'dart:convert';

import 'package:client/domain/announcement/announcement_failure.dart';
import 'package:client/domain/announcement/announcement.dart';
import 'package:client/domain/announcement/i_admin_announcement_repository.dart';
import 'package:client/infrastructure/announcement/announcement_dto.dart';

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

    throw UnimplementedError();
  }

  @override
  Future<Either<AnnouncementFailure, Announcement>> createAnnouncement(
      {required Announcement announcement}) async {
    final Uri url = Uri.parse("$_baseUrl/announcements");
    final AnnouncementDto announcementDtoOut =
        AnnouncementDto.fromDomain(announcement);
    final outgoingJson = announcementDtoOut.toJson();
    print(outgoingJson);

    try {
      final response = await client!.post(url, body: outgoingJson);
      print(response);

      if (response.statusCode == 201) {
        final AnnouncementDto announcementDtoIn = AnnouncementDto.fromJson(
            jsonDecode(response.body) as Map<String, dynamic>);

        return right(announcementDtoIn.toDomain());
      } else if (response.statusCode == 400) {
        return left(const AnnouncementFailure.unexpected());
      }
    } catch (e) {
      print(e);
      return left(const AnnouncementFailure.networkError());
    }
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

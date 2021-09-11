import 'dart:convert';

import 'package:client/domain/announcement/announcement_failure.dart';
import 'package:client/domain/announcement/announcement.dart';
import 'package:client/domain/announcement/i_admin_announcement_repository.dart';
import 'package:client/infrastructure/announcement/announcement_dto.dart';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IAnnouncementRepository)
class AnnoncementRepository implements IAnnouncementRepository {
  http.Client? client = http.Client();
  static const String _baseUrl = "http://localhost:3000/admin";

  AnnoncementRepository();
  @override
  Future<Either<AnnouncementFailure, List<Announcement>>>
      getAnnouncements() async {
    final Uri url = Uri.parse("$_baseUrl/announcements");
    final List<Announcement> announcements = [];

    try {
      final response = await client!.get(url);

      if (response.statusCode == 200) {
        final List announcementsJson = jsonDecode(response.body) as List;

        for (final announcementJson in announcementsJson) {
          final Announcement announcement =
              AnnouncementDto.fromJson(announcementJson as Map<String, dynamic>)
                  .toDomain();
          announcements.add(announcement);
        }

        return right(announcements);
      } else {
        return left(const AnnouncementFailure.serverError());
      }
    } catch (e) {
      return left(const AnnouncementFailure.networkError());
    }
  }

  @override
  Future<Either<AnnouncementFailure, Announcement>> saveAnnouncement(
      Announcement announcement) async {
    final AnnouncementDto announcementDto =
        AnnouncementDto.fromDomain(announcement);
    final Uri url = Uri.parse("$_baseUrl/announcements");
    final outgoingJson = announcementDto.toJson();

    try {
      final response = await client!.put(url, body: outgoingJson);

      if (response.statusCode == 201) {
        return right(announcement);
      } else {
        return left(const AnnouncementFailure.serverError());
      }
    } catch (e) {
      return left(const AnnouncementFailure.networkError());
    }
  }

  @override
  Future<Either<AnnouncementFailure, Unit>> deleteAnnouncement(
      Announcement announcement) async {
    final AnnouncementDto announcementDto =
        AnnouncementDto.fromDomain(announcement);
    final Uri url =
        Uri.parse("$_baseUrl/announcements/${announcementDto.title}");
    final outgoingJson = announcementDto.toJson();

    try {
      final response = await client!.delete(url, body: outgoingJson);

      if (response.statusCode == 204) {
        return right(unit);
      } else {
        return left(const AnnouncementFailure.serverError());
      }
    } catch (e) {
      return left(const AnnouncementFailure.networkError());
    }
  }
}

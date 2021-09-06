import 'dart:convert';

import 'package:client/domain/application/application.dart';
import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/application_highlight.dart';
import 'package:client/domain/application/i_admin_application_repository.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:client/infrastructure/application/application_dto.dart';
import 'package:client/infrastructure/application/application_highlight_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IAdminApplicationRepository)
class ApiAdminApplicationRepository implements IAdminApplicationRepository {
  // static final String? _baseUrl = dotenv.env["ADMIN_API"];
  http.Client? client = http.Client();
  static const String _baseUrl = "http://localhost:3000/admin";

  ApiAdminApplicationRepository();
  ApiAdminApplicationRepository.test(this.client);

  @override
  Future<Either<ApplicationFailure, List<ApplicationHighlight>>>
      getServerApplicationsAdmin() async {
    final Uri url = Uri.parse("$_baseUrl/admin/applications");
    List<ApplicationHighlight> applications = [];

    try {
      final response = await client!.get(url);

      if (response.statusCode == 200) {
        final List applicationsJson = jsonDecode(response.body) as List;

        for (final applicationJson in applicationsJson) {
          final ApplicationHighlight application =
              ApplicationHighlightDto.fromJson(
                      applicationJson as Map<String, dynamic>)
                  .toDomain();
          applications.add(application);
        }

        return right(applications);
      } else {
        return left(const ApplicationFailure.serverError());
      }
    } catch (err) {
      return left(const ApplicationFailure.noConnection());
    }
  }

  @override
  Future<Either<ApplicationFailure, Application>> getServerApplicationAdmin(
      {required ApplicationId applicationId}) async {
    final Uri url = Uri.parse("$_baseUrl/admin/application/$applicationId");

    try {
      final response = await client!.get(url);

      if (response.statusCode == 200) {
        final ApplicationDto applicationDto = ApplicationDto.fromJson(
            jsonDecode(response.body) as Map<String, dynamic>);
        return right(applicationDto.toDomain());
      } else {
        return left(const ApplicationFailure.serverError());
      }
    } catch (err) {
      return left(const ApplicationFailure.noConnection());
    }
  }

  @override
  Future<Either<ApplicationFailure, Unit>> updateServerApplicationAdmin(
      {required ApplicationHighlight applicationHighlight}) async {
    final applicationHighlightDto =
        ApplicationHighlightDto.fromDomain(applicationHighlight);
    final Uri url = Uri.parse(
        "$_baseUrl/admin/application/${applicationHighlightDto.applicationId}");
    final outgoingJson = applicationHighlightDto.toJson();

    try {
      final response = await client!.put(url, body: outgoingJson);

      if (response.statusCode == 204) {
        return right(unit);
      } else {
        return left(const ApplicationFailure.serverError());
      }
    } catch (err) {
      return left(const ApplicationFailure.noConnection());
    }
  }
}

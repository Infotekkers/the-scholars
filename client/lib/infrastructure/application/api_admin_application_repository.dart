import 'dart:convert';

import 'package:client/domain/application/application.dart';
import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/application_highlight.dart';
import 'package:client/domain/application/i_admin_application_repository.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:client/infrastructure/application/application_dto.dart';
import 'package:client/infrastructure/application/application_highlight_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ext_storage/ext_storage.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

@LazySingleton(as: IAdminApplicationRepository)
class ApiAdminApplicationRepository implements IAdminApplicationRepository {
  // static final String _baseUrl = "http://192.168.0.147:5000/admin";

  // static final String _baseUrl = "http://10.0.2.2:5000/admin";

  static final String _baseUrl = "${dotenv.env["API"]}/admin";
  http.Client? client = http.Client();

  ApiAdminApplicationRepository();
  ApiAdminApplicationRepository.test(this.client);

  @override
  Future<Either<ApplicationFailure, List<ApplicationHighlight>>>
      getServerApplicationsAdmin() async {
    final Uri url = Uri.parse("$_baseUrl/applications");
    final List<ApplicationHighlight> applications = [];

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
    print("Launched");
    final id = applicationId.value.fold((l) => "", (r) => r);

    final Uri url = Uri.parse("$_baseUrl/application/$id");

    const uuid = Uuid();

    try {
      // // Get External Path
      final dir = await ExtStorage.getExternalStoragePublicDirectory(
          ExtStorage.DIRECTORY_DOWNLOADS);

      // Create DIO Instance
      final Dio dio = Dio();

      final String downloadUri =
          "${dotenv.env["API"]}/admin/application/download/$id";

      // final String downloadUri =
      //     "http://10.0.2.2:5000/admin/application/download/$id";

      print(downloadUri);

      await dio.download(downloadUri, "$dir/${uuid.v4()}.pdf",
          deleteOnError: false,
          options: Options(responseType: ResponseType.bytes),
          onReceiveProgress: (rec, total) {
        print("recieved");
      });

      return right(Application.initial());
    } catch (err) {
      print(err);
      return left(const ApplicationFailure.noConnection());
    }
  }

  @override
  Future<Either<ApplicationFailure, Unit>> updateServerApplicationAdmin(
      {required ApplicationHighlight applicationHighlight}) async {
    print("HEREEEEEEEEEE");
    final applicationHighlightDto =
        ApplicationHighlightDto.fromDomain(applicationHighlight);
    final Uri url = Uri.parse(
        "$_baseUrl/admissionStatus/${applicationHighlightDto.applicationId}");
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

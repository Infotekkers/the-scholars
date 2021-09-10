import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/application_highlight.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:client/domain/auth/value_objects.dart';
import 'package:client/infrastructure/application/api_admin_application_repository.dart';
import 'package:client/infrastructure/application/application_highlight_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'api_admin_application_repository_test.mocks.dart';

@GenerateMocks([http.Client])
void main() {
  final String _baseUrl = "${dotenv.env["API"]}/admin";
  
  // * GET SERVER APPLICATIONS
  group("Api Admin App Overview Repo get server applications", () {
    const successfulResponseBody = '''
      [
        {
          "name": "Eager Clown",
          "applicationId": "1",
          "admissionStatus": "pending"
        },
        {
          "name": "Depressed Clown",
          "applicationId": "2",
          "admissionStatus": "rejected"
        },
        {
          "name": "Happy Clown",
          "applicationId": "3",
          "admissionStatus": "accepted"
        }
      ]
      ''';

    const errorResponseBody = "{}";

    test("should return a list of valid application highlights.", () async {
      // Mock Client
      final http.Client client = MockClient();

      // Request Setup
      final Uri url = Uri.parse("$_baseUrl/applications");

      // Response Setup
      when(client.get(url))
          .thenAnswer((_) async => http.Response(successfulResponseBody, 200));

      // Making the request
      final ApiAdminApplicationRepository adminApplicationRepository =
          ApiAdminApplicationRepository.test(client);
      final response =
          await adminApplicationRepository.getServerApplicationsAdmin();

      expect(
          response.fold((l) => l, (r) => r), isA<List<ApplicationHighlight>>());
    });
    test("should return an application failure.", () async {
      // Mock Client
      final http.Client client = MockClient();

      // Request Setup
      final Uri url = Uri.parse("$_baseUrl/applications");

      // Response Setup
      when(client.get(url))
          .thenAnswer((_) async => http.Response(errorResponseBody, 500));

      // Making the request
      final ApiAdminApplicationRepository adminApplicationRepository =
          ApiAdminApplicationRepository.test(client);
      final response =
          await adminApplicationRepository.getServerApplicationsAdmin();

      expect(response.fold((l) => l, (r) => r), isA<ApplicationFailure>());
    });
  });

  // * UPDATE SERVER APPLICATION
  group("Api Admin App Overview Repo update server application", () {
    test("should return unit.", () async {
      final http.Client client = MockClient();

      final ApplicationHighlight applicationHighlight = ApplicationHighlight(
          applicationId: ApplicationId(applicationId: "3"),
          name: Name("Depressed Clown"),
          admissionStatus: AdmissionStatus(admissionStatusStr: "accepted"));
      final applicationHighlightDto =
        ApplicationHighlightDto.fromDomain(applicationHighlight);
      final outgoingJson = applicationHighlightDto.toJson();

      final Uri url = Uri.parse(
          "$_baseUrl/application/${applicationHighlight.applicationId.getOrCrash()}");

      when(client.put(url, body: outgoingJson)).thenAnswer((_) async => http.Response("", 204));

      final ApiAdminApplicationRepository adminApplicationRepository =
          ApiAdminApplicationRepository.test(client);
      final response =
          await adminApplicationRepository.updateServerApplicationAdmin(
              applicationHighlight: applicationHighlight);

      expect(response.fold((l) => l, (r) => r), unit);
    });
    test("should return application error.", () async {
      final http.Client client = MockClient();

      final ApplicationHighlight applicationHighlight = ApplicationHighlight(
          applicationId: ApplicationId(applicationId: "3"),
          name: Name("Depressed Clown"),
          admissionStatus: AdmissionStatus(admissionStatusStr: "accepted"));
      final applicationHighlightDto =
        ApplicationHighlightDto.fromDomain(applicationHighlight);
      final outgoingJson = applicationHighlightDto.toJson();

      final Uri url = Uri.parse(
          "$_baseUrl/application/${applicationHighlight.applicationId.getOrCrash()}");

      when(client.put(url, body: outgoingJson)).thenAnswer((_) async => http.Response("", 500));

      final ApiAdminApplicationRepository adminApplicationRepository =
          ApiAdminApplicationRepository.test(client);
      final response =
          await adminApplicationRepository.updateServerApplicationAdmin(
              applicationHighlight: applicationHighlight);

      expect(response.fold((l) => l, (r) => r), isA<ApplicationFailure>());
    });
  });
}

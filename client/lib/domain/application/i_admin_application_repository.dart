import 'package:client/domain/application/application.dart';
import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/application_highlight.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:dartz/dartz.dart';

abstract class IAdminApplicationRepository {
  // * Admin Functions
  Future<Either<ApplicationFailure, List<ApplicationHighlight>>>
      getServerApplicationsAdmin();
  Future<Either<ApplicationFailure, Application>> getServerApplicationAdmin(
      {required ApplicationId applicationId});
  Future<Either<ApplicationFailure, Unit>> updateServerApplicationAdmin(
      {required ApplicationHighlight applicationHighlight});
}

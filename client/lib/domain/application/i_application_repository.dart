import 'package:client/domain/application/application.dart';
import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:client/infrastructure/application/application_dto.dart';
import 'package:client/infrastructure/application/application_highlight_dto.dart';
import 'package:dartz/dartz.dart';

abstract class IApplicationRepository {
  // Function to create a complete Applciation -- ON Server
  Future<Either<ApplicationFailure, Application>> createServerApplication(
      {required Application application});

// Function To delete an application --ON Server
  Future<Either<ApplicationFailure, Application>> deleteServerApplication({
    required ApplicationId applicationId,
  });

  // Function to Cache First Page of an application
  Future<Either<ApplicationFailure, Application>> saveCacheApplication({
    required ApplicationDto applicationDto,
  });

// Function get to Cache First Page of an application
  Future<List<Map<String, dynamic>>> getCacheApplication();

  // Function to Cache application ID of a sent application --ON Shared Preference
  Future<Either<ApplicationFailure, ApplicationId>> cacheSentApplicationId({
    required ApplicationId applicationId,
  });

  // Function to get Cache application ID of a sent application --ON Shared Preference
  Future<Either<ApplicationFailure, List>> getCacheSentApplicationId();

  // Function to get any Item from Shared Preferences
  Future<Either<ApplicationFailure, dynamic>> getFromSharedPreference(
      {required String itemToGet});

  // Get Application Highlights by All Cached IDs
  Future<Either<ApplicationFailure, List<ApplicationHighlightDto>>>
      getApplicationHighlights();

  // Workers
  void clearSQLDB();
}

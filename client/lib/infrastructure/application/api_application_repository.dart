import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/application.dart';
import 'package:client/domain/application/i_application_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IApplicationRepository)
class ApiApplicationRepository implements IApplicationRepository {
  // Function to create a complete Applciation -- ON Server
  @override
  Future<Either<ApplicationFailure, ApplicationId>> cacheSentApplicationId(
      {required ApplicationId applicationId}) {
    // TODO: implement cacheSentApplicationId
    throw UnimplementedError();
  }

  // Function To delete an application --ON Server
  @override
  Future<Either<ApplicationFailure, Application>> createServerApplication(
      {required Application application}) {
    // TODO: implement createServerApplication
    throw UnimplementedError();
  }

// Function To Get an application --ON Server
  @override
  Future<Either<ApplicationFailure, Unit>> deleteFromSharedPreference(
      {required String itemToDelete}) {
    // TODO: implement deleteFromSharedPreference
    throw UnimplementedError();
  }

  // Function to Cache First Page of an application --ON Sqlite
  @override
  Future<Either<ApplicationFailure, Application>> deleteServerApplication(
      {required ApplicationId applicationId}) {
    // TODO: implement deleteServerApplication
    throw UnimplementedError();
  }

  // Function get to Cache First Page of an application
  @override
  Future<List<Map<String, dynamic>>> getCacheApplication() {
    // TODO: implement getCacheApplication
    throw UnimplementedError();
  }

// Function to Cache application ID of a sent application --ON Shared Preference
  @override
  Future<Either<ApplicationFailure, List>> getCacheSentApplicationId() {
    // TODO: implement getCacheSentApplicationId
    throw UnimplementedError();
  }

  @override
  Future<Either<ApplicationFailure, dynamic>> getFromSharedPreference(
      {required String itemToGet}) {
    // TODO: implement getFromSharedPreference
    throw UnimplementedError();
  }

  @override
  Future<Either<ApplicationFailure, Application>> getServerApplication(
      {required ApplicationId applicationId}) {
    // TODO: implement getServerApplication
    throw UnimplementedError();
  }
}

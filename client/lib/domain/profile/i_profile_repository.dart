import 'package:client/domain/profile/profile.dart';
import 'package:client/domain/profile/profile_failures.dart';
import 'package:dartz/dartz.dart';

abstract class IApplicationProfileRepository {
  // Method to save profile to cache
  Future<Either<ApplicationProfileFailure, ApplicationProfile>>
      saveApplicationProfile({required ApplicationProfile applicationProfile});

  // Method to delete Profile from cache
  Future<Either<ApplicationProfileFailure, String>> deleteApplicationProfile();

// Method to get profile from cache
  Future<Either<ApplicationProfileFailure, ApplicationProfile>>
      getApplicationProfile();
}

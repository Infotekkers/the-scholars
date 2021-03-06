import 'dart:convert';

import 'package:client/domain/profile/i_profile_repository.dart';
import 'package:client/infrastructure/profile/profile_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:client/domain/profile/profile_failures.dart';
import 'package:client/domain/profile/profile.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IApplicationProfileRepository)
class ApiApplicationProfileRepository implements IApplicationProfileRepository {
  @override
  Future<Either<ApplicationProfileFailure, String>>
      deleteApplicationProfile() async {
    try {
      // Get SP
      SharedPreferences prefs = await SharedPreferences.getInstance();

      // delete
      prefs.remove("applicationProfile");

      return right("");
    } catch (e) {
      return left(const ApplicationProfileFailure.databaseError());
    }
  }

  @override
  Future<Either<ApplicationProfileFailure, ApplicationProfile>>
      getApplicationProfile() async {
    // In Try Catch to handle DB error
    try {
      // Set Up Shared Preferences
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      // Get From SP
      final Map<String, dynamic> profileJSON =
          jsonDecode(prefs.getString("applicationProfile")!)
              as Map<String, dynamic>;

      // Create ApplicationProfile through DTO
      final ApplicationProfile applicationProfile =
          ApplicationProfileDto.fromJson(profileJSON).toDomain();

      return right(applicationProfile);
    } catch (e) {
      return left(const ApplicationProfileFailure.databaseError());
    }
  }

  @override
  Future<Either<ApplicationProfileFailure, ApplicationProfile>>
      saveApplicationProfile(
          {required ApplicationProfile applicationProfile}) async {
    // In try catch to handle DB ERROR
    try {
      // Set Up Shared Preferences
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      // Get JSON from state The Application Profile
      final Map<String, dynamic> profileJson = ApplicationProfileDto.fromDomain(
              applicationProfile: applicationProfile)
          .toJson();

      // Save to SP
      await prefs.setString("applicationProfile", jsonEncode(profileJson));

      return right(applicationProfile);
    } catch (e) {
      return left(const ApplicationProfileFailure.databaseError());
    }
  }
}

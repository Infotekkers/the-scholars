import 'dart:convert';

import 'package:client/application/application/application_bloc.dart';
import 'package:client/domain/application/application_failure.dart';
import 'package:client/domain/application/application.dart';
import 'package:client/domain/application/i_application_repository.dart';
import 'package:client/infrastructure/application/application_dto.dart';
import 'package:client/infrastructure/application/application_highlight_dto.dart';
import 'package:client/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:client/domain/application/value_objects.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IApplicationRepository)
class ApiApplicationRepository implements IApplicationRepository {
  final dbService = DatabaseService.dbInstance;
  final apiUrl = "http://10.0.2.2:5000";

  // Function to create a complete Applciation -- ON Server
  // IMPLEMENTED
  @override
  Future<Either<ApplicationFailure, ApplicationId>> cacheSentApplicationId(
      {required ApplicationId applicationId}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      List<String>? savedApplications = prefs.getStringList("allApplications");
      // ignore: prefer_conditional_assignment
      if (savedApplications == null) {
        savedApplications = [];
      }

      savedApplications.add(
        applicationId.value.fold(
          (l) => "",
          (r) => r,
        ),
      );
      await prefs.setStringList("allApplications", savedApplications);
      return right(applicationId);
    } catch (e) {
      return left(const ApplicationFailure.databaseError());
    }
  }

  // Function To delete an application --ON Server
  // IMPLEMENTED
  @override
  Future<Either<ApplicationFailure, Application>> createServerApplication(
      {required Application application}) async {
    late String? applicationProfileRaw;
    late SharedPreferences prefs;
    late String? cachedApplicationIdRaw;
    //  Get Application Profile -- Shared Prefs
    try {
      prefs = await SharedPreferences.getInstance();
      applicationProfileRaw = prefs.getString("applicationProfile");
    } catch (e) {
      return left(const ApplicationFailure.databaseError());
    }

    if (applicationProfileRaw != null) {
      final Map<String, dynamic> applicationProfileJson =
          jsonDecode(applicationProfileRaw) as Map<String, dynamic>;

      // Get Cached Application id from shared prefs
      cachedApplicationIdRaw = prefs.getString("cachedApplicationId");
      if (cachedApplicationIdRaw != null) {
        final int applicationId = int.parse(cachedApplicationIdRaw);

        // Get Cached Application from DB -- Sql Flite
        final cachedApplicationRaw =
            await dbService.getCacheApplication(id: applicationId);

        final Map<String, dynamic> cachedApplicationJson =
            cachedApplicationRaw[0];

        // Get Final Application JSON
        final Map<String, dynamic> outJsonApplication = {
          "fullName": applicationProfileJson['fullName'],
          "birthDate": applicationProfileJson['birthDate'],
          "gender": applicationProfileJson['gender'],
          "location": applicationProfileJson['location'],
          "phoneNumber":
              "${applicationProfileJson['phoneCode']}-${applicationProfileJson['phoneNumber']}",
          "schoolTranscript": cachedApplicationJson['schoolTranscript'],
          "mainEssay": cachedApplicationJson['mainEssay'],
          "extraCertification": cachedApplicationJson['extraCertification'],
          "reccomendationLetter": cachedApplicationJson['reccomendationLetter'],
          "extraEssay": application.extraEssay.value.fold((l) => "", (r) => r),
          "proficencyTest":
              application.proficencyTest.value.fold((l) => "", (r) => r),
          "departmentSelection":
              application.departmentSelection.value.fold((l) => "", (r) => r),
          "militaryFamilyStatus":
              application.militaryFamilyStatus.value.fold((l) => "", (r) => r),
          "universityFamilyStatus": application.universityFamilyStatus.value
              .fold((l) => "", (r) => r),
        };

        // Send api call
        final apiResult = await http.post(
          Uri.parse("$apiUrl/user/application"),
          body: {
            "application": jsonEncode(outJsonApplication),
          },
        ).timeout(
          const Duration(seconds: 10),
          onTimeout: () {
            return http.Response("Server Timeout", 503);
          },
        );

// Success Scenario
        if (apiResult.statusCode == 201) {
          // Cache Application Id
          final resultBody = jsonDecode(apiResult.body);
          cacheSentApplicationId(
            applicationId: ApplicationId(
              applicationId: resultBody['applicationId'].toString(),
            ),
          );
          clearSQLDB();
          getIt<ApplicationBloc>().add(const ApplicationEvent.initialEvent());
          return right(application);
        }
        // Duplicate Scenario
        else if (apiResult.statusCode == 409) {
          return left(
            const ApplicationFailure.duplicateApplication(),
          );
        }
        // No Connection Scenario
        else if (apiResult.statusCode == 503) {
          return left(
            const ApplicationFailure.serverError(),
          );
        }
        // Server Error Scenario
        else {
          return left(
            const ApplicationFailure.serverError(),
          );
        }
      }
    } else {}

    return right(application);
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
  // IMPLEMENTED
  @override
  Future<List<Map<String, dynamic>>> getCacheApplication() async {
    return dbService.getCacheApplications();
  }

// Function to Cache application ID of a sent application --ON Shared Preference
// IMPLEMENTED
  @override
  Future<Either<ApplicationFailure, List>> getCacheSentApplicationId() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final List<String>? allApplications =
        prefs.getStringList("allApplications");

    if (allApplications == null) {
      return right([]);
    } else {
      final List allApplications = [];
      // ignore: avoid_function_literals_in_foreach_calls
      allApplications.forEach((element) {
        allApplications.add(ApplicationId(applicationId: element.toString()));
      });

      return right(allApplications);
    }
  }

// IMPLEMENTED
  @override
  Future<Either<ApplicationFailure, dynamic>> getFromSharedPreference(
      {required String itemToGet}) async {
    try {
      final SharedPreferences prefs = await SharedPreferences.getInstance();

      final fetchedValue = prefs.get(itemToGet);
      if (fetchedValue == null) {
        return right("");
      } else {
        return right(fetchedValue);
      }
    } catch (e) {
      return left(const ApplicationFailure.databaseError());
    }
  }

  @override
  Future<Either<ApplicationFailure, Application>> getServerApplication(
      {required ApplicationId applicationId}) {
    // TODO: implement getServerApplication
    throw UnimplementedError();
  }

  @override
  void clearSQLDB() {
    dbService.clearDB();
  }

  @override
  Future<Either<ApplicationFailure, List<ApplicationHighlightDto>>>
      getApplicationHighlights() async {
    // Get All Application Ids from cache
    final List<String> allCachedApplicationIds = [
      "613368431057ce51907482ff",
      "613369701057ce5190748302",
      "61336a061057ce5190748305"
    ];

    // if cache is empty
    if (allCachedApplicationIds.isEmpty) {
      return right([]);
    } else {
      // Call the api
      final applicationResult =
          await http.post(Uri.parse("$apiUrl/user/id/application"), body: {
        "applicationIds": jsonEncode(allCachedApplicationIds),
      }).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          return http.Response("Server Timeout", 503);
        },
      );

      // print("@api repo the result is ${jsonDecode(applicationResult.body)[1]}");

      if (applicationResult.statusCode == 200) {
        // Create ApplicationHightLight Dtos
        final List allApplicationsHighight =
            jsonDecode(applicationResult.body) as List;

        final List<ApplicationHighlightDto> allApplicationHighlightDtos = [];

        // ignore: avoid_function_literals_in_foreach_calls
        allApplicationsHighight.forEach((applicationHighlight) {
          // Get Each applicationHighlight as Map
          final Map<String, dynamic> currentItem =
              allApplicationsHighight[0] as Map<String, dynamic>;

          // Create the DTO
          final ApplicationHighlightDto dto =
              ApplicationHighlightDto.fromJson(currentItem);

          // Add to array
          allApplicationHighlightDtos.add(dto);
        });

        return right(allApplicationHighlightDtos);
      } else {
        return left(const ApplicationFailure.serverError());
      }
    }
  }

  @override
  Future<Either<ApplicationFailure, Application>> saveCacheApplication(
      {required ApplicationDto applicationDto}) {
    return dbService.cacheApplication(applicationDto);
  }
}

class DatabaseService {
  // Database - Sql Lite vars
  static const _databaseName = "itu_scholarship.db";
  static const _databaseVersion = 1;
  static const tableName = "applications";

  static const columnId = "id";
  static const schoolTranscript = "schoolTranscript";
  static const mainEssay = "mainEssay";
  static const extraEssay = "extraEssay";
  static const departmentSelection = "departmentSelection";
  static const extraCertification = "extraCertification";
  static const proficiencyTest = "proficiencyTest";
  static const reccomendationLetter = "reccomendationLetter";
  static const militaryFamilyStatus = "militaryFamilyStatus";
  static const universityFamilyStatus = "universityFamilyStatus";

  DatabaseService._privateConstructor();
  static final DatabaseService dbInstance =
      DatabaseService._privateConstructor();

  static Database? _db;
  Future<Database?> get db async {
    if (_db != null) {
      return _db;
    }

    // ignore: join_return_with_assignment
    _db = await _initDB();
    return _db;
  }

  Future<Database?> _initDB() async {
    final String path = join(await getDatabasesPath(), _databaseName);
    getDatabasesPath().then((value) => {});

    return openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $tableName (
        $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
        $schoolTranscript TEXT NOT NULL,
        $mainEssay TEXT NOT NULL,
        $extraCertification TEXT NOT NULL,
        $reccomendationLetter TEXT NOT NULL
      )
      ''');
  }

// Cache First Part of Application
  Future<Either<ApplicationFailure, Application>> cacheApplication(
      ApplicationDto applicationDto) async {
    final Database? db = await dbInstance.db;

    // Save to Local DB
    try {
      // ignore: unused_local_variable
      final val = await db!.insert(
        tableName,
        {
          "$schoolTranscript ": applicationDto.schoolTranscript,
          "$mainEssay": applicationDto.mainEssay,
          "$extraCertification": applicationDto.extraCertification,
          "$reccomendationLetter": applicationDto.recomendationLetter,
        },
      );

      // Get Id of last saved
      final result = await db.rawQuery("SELECT last_insert_rowid() AS lastid");

      // Save cacheId to Shared Preferences
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(
          "cachedApplicationId", result[0]['lastid'].toString());
      return right(Application.initial());
    } catch (e) {
      return left(ApplicationFailure.databaseError());
    }
  }

  Future<List<Map<String, dynamic>>> getCacheApplications() async {
    final Database? db = await dbInstance.db;
    return db!.query(tableName);
  }

  Future<List<Map<String, dynamic>>> getCacheApplication(
      {required int id}) async {
    final Database? db = await dbInstance.db;
    return db!.query(tableName, where: "$columnId = ?", whereArgs: [id]);
  }

  // ignore: avoid_void_async
  void clearDB() async {
    final Database? db = await dbInstance.db;
    await db!.rawQuery("Delete FROM $tableName");
  }
}

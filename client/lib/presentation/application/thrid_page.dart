import 'package:client/domain/application/i_application_repository.dart';
import 'package:client/injectable.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThirdApplicationPage extends StatefulWidget {
  const ThirdApplicationPage({Key? key}) : super(key: key);

  @override
  _ThirdApplicationPageState createState() => _ThirdApplicationPageState();
}

class _ThirdApplicationPageState extends State<ThirdApplicationPage> {
  final IApplicationRepository _iApplicationRepository =
      getIt<IApplicationRepository>();

  // ignore: avoid_void_async
  void getApps() async {
    final result = await _iApplicationRepository.getCacheApplication();
    // ignore: avoid_print
    print(result);
  }

  // ignore: avoid_void_async
  void getPrefs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // ignore: avoid_print
    print(prefs.getStringList("allApplications"));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: const Center(child: Text("Work Page")),
          ),

          /**
           * 
           * PROFILE
           */
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: MaterialButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                // ignore: avoid_print
                print("PROFILE : ${prefs.get("applicationProfile")}");
              },
              color: Colors.purple,
              child: const Text(
                "Get Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: MaterialButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                prefs.remove("applicationProfile");
                // ignore: avoid_print
                print("Application Profile Cleared");
              },
              color: Colors.purple,
              child: const Text(
                "Clear Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),

          /**
           * 
           * 
           * CACHED APPLICATION
           */

          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: MaterialButton(
              onPressed: () async {
                final _iA = getIt<IApplicationRepository>();
                // ignore: avoid_print
                print(await _iA.getCacheApplication());
              },
              color: Colors.purple,
              child: const Text(
                "Get Cached Application",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: MaterialButton(
              onPressed: () async {
                final _iA = getIt<IApplicationRepository>();
                _iA.clearSQLDB();

                // ignore: avoid_print
                print("DELETED");
              },
              color: Colors.purple,
              child: const Text(
                "Clear Cached Application",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: MaterialButton(
              onPressed: () async {
                // ignore: avoid_print
                print(await _iApplicationRepository.getFromSharedPreference(
                    itemToGet: "cachedApplicationId"));
              },
              color: Colors.purple,
              child: const Text(
                "Get Cached Application ID",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: MaterialButton(
              onPressed: () async {
                // ignore: avoid_print
                print(await _iApplicationRepository.getFromSharedPreference(
                    itemToGet: "allApplications"));
              },
              color: Colors.purple,
              child: const Text(
                "Get All Application ID",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

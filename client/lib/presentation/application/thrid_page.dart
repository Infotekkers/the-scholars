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

  void getApps() async {
    final result = await _iApplicationRepository.getCacheApplication();
    print(result);
  }

  void getPrefs() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getStringList("allApplications"));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          Container(
            child: Center(child: Text("Work Page")),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: MaterialButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                prefs.remove("applicationProfile");
                print("Application Profile Cleared");
              },
              child: Text("Clear Profile"),
              color: Colors.purple,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: MaterialButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                print("PROFILE : ${prefs.get("applicationProfile")}");
              },
              child: Text("Get Profile"),
              color: Colors.purple,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: MaterialButton(
              onPressed: () async {
                final _iA = getIt<IApplicationRepository>();
                print(await _iA.getCacheApplication());
              },
              child: Text("Get Cached Application"),
              color: Colors.purple,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: MaterialButton(
              onPressed: () async {
                final _iA = getIt<IApplicationRepository>();
                _iA.clearSQLDB();

                print("DELETED");
              },
              child: Text("Clear Cached Application"),
              color: Colors.purple,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: MaterialButton(
              onPressed: () async {
                print(await _iApplicationRepository.getFromSharedPreference(
                    itemToGet: "cachedApplicationId"));
              },
              child: Text("Get Cached Application ID"),
              color: Colors.purple,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: MaterialButton(
              onPressed: () async {
                print(await _iApplicationRepository.getFromSharedPreference(
                    itemToGet: "allApplications"));
              },
              child: Text("Get All Application ID"),
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  final bool showMessage;
  const ProfilePage({required this.showMessage});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.close),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.amber,
          child: const Center(
            child: Text(
              "Profile Page",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 1),
            ),
          ),
        ),
      ],
    );
  }
}

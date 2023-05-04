import 'package:flutter/material.dart';


class Settings extends StatelessWidget {
  static String routname = "settings";
  const Settings({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Settings"),
      ),
    );
  }
}

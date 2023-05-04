import 'package:flutter/material.dart';


class SavedMessenger extends StatelessWidget {
  static String routname = "savedMessenger";
  const SavedMessenger({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Saved Messenger"),
      ),
    );
  }
}

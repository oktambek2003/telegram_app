import 'package:flutter/material.dart';
import 'package:image/drawerScreen/Calll.dart';
import 'package:image/drawerScreen/Contact.dart';
import 'package:image/drawerScreen/newChannel.dart';
import 'package:image/drawerScreen/newGroup.dart';
import 'package:image/drawerScreen/savedMessenger.dart';
import 'package:image/drawerScreen/settings.dart';

class HomeSceen extends StatefulWidget {
  static String routName = "/";

  const HomeSceen({super.key});

  @override
  State<HomeSceen> createState() => _HomeSceenState();
}

class _HomeSceenState extends State<HomeSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 23, 33, 43),
      drawer: Container(
        width: 280,
        color: Color.fromARGB(255, 23, 33, 43),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: CircleAvatar(
                  backgroundImage: AssetImage("image/flutter.png"),
                ),
              ),
              ListTile(
                title: Text(
                  "To'xtayev O'ktambek",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  "Start emoji Status",
                  style: TextStyle(color: Colors.blue),
                ),
                trailing: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 2,
                color: Color.fromARGB(255, 23, 33, 10),
              ),
              TextButton(
                  onHover: (value) {},
                  onPressed: () {
                    Navigator.pushNamed(context, NewGroupPage.routname);
                  },
                  child: Row(
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color.fromARGB(255, 237, 159, 32)),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "New Group",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 16),
                        ),
                      )
                    ],
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, NewChannelPage.routname);
                  },
                  child: Row(
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color.fromARGB(255, 237, 159, 32)),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "New Channel",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 16),
                        ),
                      )
                    ],
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Contact.routname);
                  },
                  child: Row(
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color.fromARGB(255, 240, 105, 100)),
                          child: Icon(
                            Icons.person,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Contact",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 16),
                        ),
                      )
                    ],
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Call.routname);
                  },
                  child: Row(
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color.fromARGB(255, 109, 197, 52)),
                          child: Icon(
                            Icons.local_phone,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Calls",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 16),
                        ),
                      )
                    ],
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SavedMessenger.routname);
                  },
                  child: Row(
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color.fromARGB(255, 86, 179, 245)),
                          child: Icon(
                            Icons.message,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Saved Meesenger",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 16),
                        ),
                      )
                    ],
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Settings.routname);
                  },
                  child: Row(
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color.fromARGB(255, 181, 128, 226)),
                          child: Icon(
                            Icons.settings,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Settings ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 16),
                        ),
                      )
                    ],
                  )),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Color.fromARGB(255, 117, 149, 255)),
                          child: Icon(
                            Icons.bedtime,
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Night Mode ",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 16),
                        ),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Telegram"),
      ),
    );
  }
}

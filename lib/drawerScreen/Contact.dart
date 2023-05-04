import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/drawerScreen/newContact.dart';
import '../data.dart';

class Contact extends StatelessWidget {
  static String routname = "Contact";
  const Contact({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Kontaktlar"),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Icons.search),
                  ),
                  Icon(Icons.sort)
                ],
              )
            ],
          ),
        ),
        backgroundColor: Color.fromARGB(255, 23, 33, 43),
        floatingActionButton: Container(
          width: 60,
          height: 50,
          child: ElevatedButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, NewContact.routName);
              },
              child: Icon(Icons.person_add)),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Column(children: [
                ListTile(
                  leading: Icon(
                    Icons.person_add_alt_1_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Tanishlarni taklif qilish',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Yaqin atrofdagi odamlarni topish',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 500,
                  color: Color.fromARGB(255, 20, 28, 39),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, top: 5),
                    child: Text(
                      "Oxirgi faollik bo'yicha qidiruvlar",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 80, 90, 102)),
                    ),
                  ),
                )
              ]),
            ),
            Expanded(
              flex: 8,
              child: ListView.builder(
                  itemCount: itemsout,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(
                        titleIsm[index] + " " + titleFamilya[index],
                        style: TextStyle(color: Colors.white, fontSize: 21),
                      ),
                      subtitle: Text(
                        "Yaqinda onlayn edi",
                        style: TextStyle(
                            color: Color.fromARGB(255, 80, 90, 102),
                            fontSize: 20),
                      ),
                      leading: CircleAvatar(
                        radius: 30,
                        child:
                            Text(titleIsm[index][0].toUpperCase()),
                        backgroundColor: Colors.blue,
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image/drawerScreen/Contact.dart';
import '../data.dart';

String valuRext = "";
TextEditingController textControllerism = TextEditingController();
TextEditingController textControllerifamilya = TextEditingController();
final _formKey = GlobalKey<FormState>();
TextEditingController textControllernumber = TextEditingController();

class NewContact extends StatelessWidget {
  static String routName = "NewContact";
  const NewContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yangi Kontakt qo'shish"),
        leading: TextButton(
            onPressed: () {
              Navigator.popAndPushNamed(context,Contact.routname);
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
      ),
      backgroundColor: Color.fromARGB(255, 23, 33, 43),
      body: Form(
        key: _formKey,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Yangi Kontakt',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Yangi kontaktning ismini kiritish majbiy';
                          }
                          return null;
                        },
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        controller: textControllerism,
                        onChanged: (value) {
                          valuRext = value;
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(255, 55, 67, 83)),
                            ),
                            labelText: "Ism (Majvuriy)",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 57, 67, 83)))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: TextFormField(
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255)),
                        controller: textControllerifamilya,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 3,
                                  color: Color.fromARGB(255, 55, 67, 83)),
                            ),
                            labelText: "Familya (Ixtiyoriy)",
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 55, 67, 83)))),
                  ),
                  TextFormField(
                      validator: (value) {
                        if (value.toString().length < 9) {
                          return "telefon raqam xato kiritilgan";
                        }
                        return null;
                      },
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                      controller: textControllernumber,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                width: 3,
                                color: Color.fromARGB(255, 55, 67, 83)),
                          ),
                          labelText: "Telefon raqami",
                          prefixText: "+998    ",
                          prefixStyle: TextStyle(color: Colors.white),
                          hintText: "00-0000000",
                          hintStyle:
                              TextStyle(color: Color.fromARGB(255, 55, 67, 83)),
                          labelStyle: TextStyle(
                              color: Color.fromARGB(255, 55, 67, 83)))),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            width: 250,
            height: 35,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  itemsout++;
                  if (textControllerifamilya.toString().length == 0) {
                    textControllerifamilya.text = "";
                  }

                  titleIsm.add(textControllerism.text);
                  textControllerism.text = "";
                  titleFamilya.add(textControllerifamilya.text);
                  textControllerifamilya.text = "";
                  phonenyumbers.add(textControllernumber.text);
                  textControllernumber.text = "";
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text(
                          "Kontakingizga ${titleIsm[itemsout - 1]}ni qo'shdingiz"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.popAndPushNamed(
                                context, Contact.routname);
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: const Text('Kontakt Yaratish'),
            ),
          ),
        ]),
      ),
    );
  }
}

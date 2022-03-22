import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:motiva8/welcomepage.dart';

class MyTextInput extends StatefulWidget {
  @override
  MyTextInputState createState() => new MyTextInputState();
}

class MyTextInputState extends State<MyTextInput> {
  static String result = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xfff4f4f4),
            body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.fromLTRB(35, 70, 35, 100),
                      child: Text('What would you like us to call you.',
                          style: TextStyle(fontSize: 30))),
                  Padding(
                      padding: EdgeInsets.fromLTRB(35, 0, 35, 25),
                      child: TextField(onChanged: (String str) {
                        setState(() {
                          result = str;
                        });
                        decoration:
                        InputDecoration(
                          //border: OutlineInputBorder(),
                          labelText: 'Pick your name or nick name.',
                        );
                      })),
                  Padding(
                    padding: EdgeInsets.fromLTRB(70, 35, 70, 18),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                          child: Text(
                            'Next',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 0, 112, 74),
                              onPrimary: Colors.white,
                              shape: StadiumBorder()),
                          onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WelcomePage()),
                                )
                              }),
                    ),
                  )
                ],
              ),
            )));
  }
}

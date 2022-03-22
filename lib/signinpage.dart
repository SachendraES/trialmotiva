import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:motiva8/nicknamepage.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color(0xfff4f4f4),
            body: Stack(children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  //BoxDecoration Widget
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 112, 74),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(76.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 59, 59, 59),
                        offset: const Offset(
                          5.0,
                          5.0,
                        ), //Offset
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                    ],
                  ),
                  child: Row(
                    children: [
                      Padding(
                          padding: EdgeInsets.fromLTRB(100, 10, 35, 100),
                          child: Text('Sign In',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18))),
                      Padding(
                          padding: EdgeInsets.fromLTRB(35, 15, 35, 100),
                          child: Text('Sign Up',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18))),
                    ],
                  )),
              Column(
                  //mainAxisSize: MainAxisSize.max,
                  //mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Padding(
                        padding: EdgeInsets.fromLTRB(0, 120, 0, 0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: 350,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(40),
                                    child: Column(
                                      children: [
                                        TextField(
                                            decoration: InputDecoration(
                                          //border: OutlineInputBorder(),
                                          labelText: 'User Name',
                                        )),
                                        TextField(
                                            decoration: InputDecoration(
                                          //border: OutlineInputBorder(),
                                          labelText: 'Email',
                                        )),
                                        TextField(
                                            decoration: InputDecoration(
                                          //border: OutlineInputBorder(),
                                          labelText: 'Password',
                                        )),
                                      ],
                                    ),
                                  )),
                            ])),
                    Padding(
                      padding: EdgeInsets.fromLTRB(70, 35, 70, 18),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                            child: Text(
                              'Create an account',
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
                                        builder: (context) => MyTextInput()),
                                  )
                                }),
                      ),
                    )
                  ])
            ])));
  }
}

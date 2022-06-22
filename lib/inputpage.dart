import 'package:flutter/material.dart';
import 'package:motiva8/assets.dart';
import 'package:motiva8/imagepage.dart';
import 'package:motiva8/nicknamepage.dart';
import 'package:motiva8/widgets/inputwidget.dart';
import 'package:motiva8/widgets/inputwidget.dart';

class InputPage extends StatelessWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfff4f4f4),
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 75,
                  decoration: BoxDecoration(),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 0, 112, 74),
                              borderRadius: BorderRadius.circular(76),
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
                          ),
                        ),
                      ),
                      Positioned(
                        child: Padding(
                          padding: EdgeInsets.all(2),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Color.fromARGB(255, 0, 112, 74),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/profile.png'),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
                  child: Text(
                    'Recording your emotional energy level will help you build power to manage your energy level',
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 270,
                  child: Stack(children: <Widget>[
                    Positioned(
                      child: Center(
                        child: Container(
                          width: 180,
                          height: 180,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 241, 239, 233),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 109, 108, 108),
                                  blurRadius: 10.0,
                                  spreadRadius: 2.0,
                                )
                              ]),
                        ),
                      ),
                    ),
                    Center(child: InputWidjet()),
                  ]),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40)),
                      color: Color(0xfff4f4f4),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 150, 150, 150),
                          offset: const Offset(
                            0.0,
                            0.0,
                          ), //Offset
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                      ],
                    ), //BoxShadow),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 20, right: 20, top: 15, bottom: 8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("User's last week chart"),
                              Icon(Icons.density_medium_rounded),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "AVG",
                                style: TextStyle(fontSize: 25),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ]),
        ),
      ),
    );
  }
}

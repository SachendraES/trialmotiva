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
            body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(18, 25, 18, 0),
                  child: ListTile(
                    trailing: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/profile.png',
                        width: 50,
                        height: 50,
                      ),
                    ),
                    title: Text(
                      'Hello ' + MyTextInputState.result,
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    tileColor: Color.fromARGB(255, 0, 112, 74),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(300, 20, 20, 0),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: ElevatedButton(
                        child: Text(
                          '>',
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
                                    builder: (context) => ImagePage()),
                              )
                            }),
                  ),
                ),
                InputWidjet(),
              ]),
            )));
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:motiva8/signinpage.dart';
import 'package:motiva8/widgets/firstpagewidget.dart';

class getstarted extends StatelessWidget {
  const getstarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      firstpagewidget(),
      Padding(
          padding: EdgeInsets.fromLTRB(35, 35, 35, 18),
          child: Image(image: AssetImage('assets/getstarted.png'))),
      Padding(
        padding: EdgeInsets.fromLTRB(70, 35, 70, 18),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
              child: Text(
                'Get Started',
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
                          builder: (context) => const SignInPage()),
                    )
                  }),
        ),
      )
    ]);
  }
}

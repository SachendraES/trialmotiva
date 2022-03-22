import 'package:flutter/material.dart';

class firstpagewidget extends StatelessWidget {
  const firstpagewidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      //BoxDecoration Widget
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 112, 74),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(76.0)),
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
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(35, 35, 35, 18),
            child: Text(
              'Ride your motivation wave and achieve your goals',
              style: TextStyle(
                fontFamily: 'Oswald',
                fontSize: 22,
                color: const Color(0xfff4f4f4),
                letterSpacing: 0.1375,
                height: 1.2272727272727273,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(35, 1, 35, 18),
            child: Text(
              'Human Motivation is like unpredictable waves - It goes up and down and can’t quite predict . ',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 15,
                color: const Color(0xfff4f4f4),
                letterSpacing: 0.09375,
                height: 1.2,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(35, 1, 35, 18),
            child: Text(
              'Motiva8 help to ride that wave by giving you visibility and science based strategies to manage.',
              style: TextStyle(
                fontFamily: 'Inter',
                fontSize: 15,
                color: const Color(0xfff4f4f4),
                height: 1.2,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
            ),
          ),
        ],
      ),
    ); //Container
  }
}

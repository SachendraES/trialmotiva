import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class InputWidjet extends StatelessWidget {
  const InputWidjet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final slider = SleekCircularSlider(
        appearance: CircularSliderAppearance(
            size: 250,
            startAngle: 90,
            angleRange: 360,
            customColors: CustomSliderColors(
              trackColor: Color.fromARGB(255, 153, 211, 191),
              progressBarColor: Color.fromARGB(255, 0, 112, 74),
              hideShadow: true,
            ),
            customWidths: CustomSliderWidths(
              progressBarWidth: 15,
            ),
            infoProperties: InfoProperties(
                mainLabelStyle: TextStyle(
                    color: Color.fromARGB(255, 34, 25, 25), fontSize: 70))),
        onChange: (double value) {
          print(value);
        });
    return Container(
        child:
            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0), child: slider));
  }
}

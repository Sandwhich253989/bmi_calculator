import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';
import '../components/box_cover.dart';
import '../components/IconContent.dart';
import '../components/bmi_button.dart';
import 'result_page.dart';
import 'package:bmi_calculator/calculate_bmi.dart';

class Input extends StatefulWidget {
  const Input({Key? key}) : super(key: key);

  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  var h = 180;
  var weight = 40;
  var age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
        ),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        backgroundColor: Color(0xFF0A0D22),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: box_cover(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: kTextStyleS,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "$h",
                        style: kTextStyleN,
                      ),
                      Text(
                        "cm",
                        style: kTextStyleS,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF888993),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0xFF29EB1555),
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                    ),
                    child: Slider(
                      value: h.toDouble(),
                      min: 100,
                      max: 220,
                      onChanged: (a) {
                        setState(() {
                          h = a.round();
                        });
                      },
                    ),
                  ),
                  //Range needed
                ],
              ),
            ),
          ),
          Expanded(
            child: box_cover(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "WEIGHT",
                    style: kTextStyleS,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "$weight",
                        style: kTextStyleN,
                      ),
                      Text(
                        "kg",
                        style: kTextStyleS,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF888993),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0xFF29EB1555),
                      thumbShape:
                      RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                    ),
                    child: Slider(
                      value: weight.toDouble(),
                      min: 10,
                      max: 200,
                      onChanged: (a) {
                        setState(() {
                          weight = a.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: box_cover(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "AGE",
                    style: kTextStyleS,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "$age",
                        style: kTextStyleN,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF888993),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0xFF29EB1555),
                      thumbShape:
                      RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0,
                      ),
                    ),
                    child: Slider(
                      value: age.toDouble(),
                      min: 1,
                      max: 100,
                      onChanged: (a) {
                        setState(() {
                          age = a.round();
                        });
                      },
                    ),
                  ),
                  //Range needed
                ],
              ),
            ),
          ),
          // ElevatedButton(onPressed: (){}, child: Text("Calculate your BMI score",style: TextStyle(fontSize: 26),),)
          bmi_button(
            onTap: () {
              Calculator_bmi bmi = new Calculator_bmi(h, weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => result_page(
                      bmi: bmi.Calculator(),
                      result_a: bmi.getResult(),
                      result_b: bmi.getInterpretation(),
                    ),
                  ));
            },
            buttonT: "Calculate your BMI score",
          )
        ],
      ),
    );
  }
}

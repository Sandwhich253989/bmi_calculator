import 'package:flutter/material.dart';
import '../components/box_cover.dart';
import '../components/bmi_button.dart';
import 'package:bmi_calculator/calculate_bmi.dart';

class result_page extends StatelessWidget {
  final String? bmi;
  final String? result_a;
  final String? result_b;

  result_page({this.bmi, this.result_a, this.result_b});

  // final height;
  // final weight;
  //
  // result_page({this.height,this.weight});

  // var bmi =  Calculator_bmi(height, weight);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0D22),
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "YOUR RESULT",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: box_cover(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "$result_a",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF41D389),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "$bmi",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 100.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Normal body range : ",
                        style: TextStyle(color: Colors.grey, fontSize: 20.0),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "18.5 - 25 kg/m^2",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "$result_b",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          bmi_button(
            onTap: () {
              Navigator.pop(context);
            },
            buttonT: "Recalculate your BMI score",
          ),
        ],
      ),
    );
  }
}

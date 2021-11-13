import 'package:flutter/material.dart';

class bmi_button extends StatelessWidget {

  var onTap;
  final String? buttonT;
  bmi_button({@required this.onTap, @required this.buttonT});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
         child: Text(buttonT.toString() , style: TextStyle(fontSize: 25),),
        ),
        color: Color(0xFFEB1555),
        margin: const EdgeInsets.only(top: 10.0),
        padding: const EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: 80.0,
      ),
      onTap: onTap,
    );
  }
}

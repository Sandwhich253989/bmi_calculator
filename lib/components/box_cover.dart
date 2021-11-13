import 'package:flutter/material.dart';

class box_cover extends StatelessWidget {
  final Widget? cardChild;

  box_cover({@required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color(0xFF1D1F33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}

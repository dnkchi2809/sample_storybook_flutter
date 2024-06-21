import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoolButton extends StatelessWidget {
  final String buttonValue;
  final Color buttonColor;
  final double buttonSize;

  CoolButton(
      {super.key,
      required this.buttonValue,
      required this.buttonColor,
      required this.buttonSize});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
          child: Text(
            buttonValue,
            style: TextStyle(color: Colors.white, fontSize: buttonSize),
          )),
    );
  }
}

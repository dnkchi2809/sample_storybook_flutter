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
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
            child: Text(
              buttonValue,
              style: TextStyle(color: Colors.white, fontSize: buttonSize),
            )),
        // Image.asset(
        //   'image002.jpg',
        //   package: 'assets',
        // )

      ],
    );
  }
}

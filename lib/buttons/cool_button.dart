import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoolButton extends StatelessWidget {
  const CoolButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: null, child: Text('CoolButton', style: TextStyle(color: Colors.white),));
  }
}

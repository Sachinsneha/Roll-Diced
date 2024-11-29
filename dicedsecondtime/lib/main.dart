import 'package:dicedsecondtime/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          color1: Colors.purple,
          color2: Color.fromARGB(255, 24, 14, 89),
          color3: Color.fromARGB(255, 11, 5, 49)),
    ),
  ));
}

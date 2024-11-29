import 'package:dicedsecondtime/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(
      {super.key,
      required this.color1,
      required this.color2,
      required this.color3});
  final Color color1;
  final Color color2;
  final Color color3;
  @override
  Widget build(BuildContext Context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [color1, color2, color3])),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

final Randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var CurrentDicedRoll = 1;

  void rolldice() {
    setState(() {
      CurrentDicedRoll = Randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-images/dice-$CurrentDicedRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 100,
        ),
        Container(
          width: 200,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 151, 51, 51),
                  textStyle: TextStyle(fontSize: 18)),
              onPressed: rolldice,
              child: Text('Roll')),
        )
      ],
    );
  }
}

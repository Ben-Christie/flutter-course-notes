// stateful widget used when we want UI to reflect user provided input, e.g. clicking a button to roll dice
// and change image

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:dice/text_widget.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// underscore denotes a private class
class _DiceRollerState extends State<DiceRoller> {
  int currentDiceRoll = 1;

  void rollDice() {
    //update UI
    setState(() {
      // random number between 1 and 6
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      // centre vertically
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
          ),
          child: TextWidget('Roll Dice'),
        ),
      ],
    );
  }
}

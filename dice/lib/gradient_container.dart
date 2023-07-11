import 'package:flutter/material.dart';
import 'package:dice/dice_roller.dart';

// can apply explicit type definition to make code safer (like TypeScript)
const Alignment gradientAlignmentStart = Alignment.topLeft;
const Alignment gradientAlignmentEnd = Alignment.bottomRight;

// custom widget
class GradientContainer extends StatelessWidget {
  // constructor
  const GradientContainer(this.startGradient, this.endGradient, {super.key});

  final Color startGradient;
  final Color endGradient;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            startGradient,
            endGradient,
          ],
          begin: gradientAlignmentStart,
          end: gradientAlignmentEnd,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

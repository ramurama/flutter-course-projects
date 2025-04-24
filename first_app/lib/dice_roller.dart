import 'package:flutter/material.dart';
import 'dart:math';

// this could also be created with final in the state class
final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

// private class used only inside the DiceRoller class and other classes cannot import it
class _DiceRollerState extends State<DiceRoller> {
  var currenDiceNumber = 2;

  void rollDice() {
    setState(() {
      // this is not a good practice as this will create a new instance of Random every time the function is called
      // eventually this Random object will be garbage collected but still not a good practice for a production scale app
      // Random().nextInt()
      currenDiceNumber =
          random.nextInt(6) + 1; // Generates a number between 1 and 6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/dice-$currenDiceNumber.png', width: 200),
        const SizedBox(height: 20), // similar to padding
        TextButton(
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.all(16),
            // padding: const EdgeInsets.only(top: 20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: rollDice,
          child: const Text('Roll Dice!', textAlign: TextAlign.center),
        ),
      ],
    );
  }
}

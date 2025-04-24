import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const topAlignmnt = Alignment.topLeft;
const bottomAlignmnt = Alignment.bottomRight;

class Gradientcontainer extends StatelessWidget {
  const Gradientcontainer({
    super.key,
    required this.color1,
    required this.color2,
  });

  const Gradientcontainer.purple({super.key})
    : color1 = Colors.purple,
      color2 = Colors.blue;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: topAlignmnt,
            end: bottomAlignmnt,
          ),
        ),
        child: Center(child: DiceRoller()),
      ),
    );
  }
}

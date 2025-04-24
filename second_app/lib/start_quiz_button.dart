import 'package:flutter/material.dart';

class StartQuizButton extends StatefulWidget {
  const StartQuizButton(this.onStartQuiz, {super.key});

  final void Function() onStartQuiz;

  @override
  State<StartQuizButton> createState() => _StartQuizButtonState();
}

class _StartQuizButtonState extends State<StartQuizButton> {
  var buttonColor = Colors.purple;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        widget.onStartQuiz();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      ),
      icon: const Icon(Icons.arrow_right_alt, size: 24),
      label: const Text('Start Quiz'),
    );
  }
}

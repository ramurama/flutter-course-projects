import 'package:flutter/material.dart';
import 'package:second_app/data/questions_data.dart';
import 'package:second_app/gradient_container.dart';
import 'package:second_app/questions_screen.dart';
import 'package:second_app/start_screen.dart';

import 'results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  String? activeScreen;

  List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = 'start-screen';

    super.initState();
  }

  void selectAnswer(String value) {
    selectedAnswers.add(value);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [Colors.deepPurple, Colors.purple],
          child:
              activeScreen == 'start-screen'
                  ? StartScreen(switchScreen)
                  : activeScreen == 'results-screen'
                  ? ResultsScreen(selectedAnswers: selectedAnswers)
                  : QuestionsScreen(selectAnswer),
        ),
      ),
    );
  }
}

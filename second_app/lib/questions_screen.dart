import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_app/answer_button.dart';
import 'package:second_app/data/questions_data.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen(this.onSelectAnswer, {super.key});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              questions[currentQuestionIndex].question,
              style: GoogleFonts.lato(
                fontSize: 20,
                color: const Color.fromARGB(255, 197, 165, 255),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),

            ...questions[currentQuestionIndex].shuffledOptions.map(
              (item) => AnswerButton(
                answerText: item,
                onTap: () {
                  answerQuestion();
                  widget.onSelectAnswer(item);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

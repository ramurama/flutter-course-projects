import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:second_app/data/questions_data.dart';
import 'package:second_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  final List<String> selectedAnswers;

  const ResultsScreen({super.key, required this.selectedAnswers});

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < questions.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].correctAnswer,
        'user_answer': selectedAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You have answered\n out of ${questions.length} questions correctly!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 197, 165, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          QuestionsSummary(summaryData: getSummaryData()),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${(data['question_index'] as int? ?? 0) + 1}.',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 197, 165, 255),
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // display the question
                          Text(
                            'Question: ${data['question']}',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 197, 165, 255),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 5),
                          // display the user's answer
                          Text(
                            'Your Answer: ${data['user_answer']}',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 197, 165, 255),
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 5),
                          // display the correct answer
                          Text(
                            'Correct Answer: ${data['correct_answer']}',
                            style: const TextStyle(
                              color: Color.fromARGB(255, 197, 165, 255),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}

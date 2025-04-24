import 'package:flutter/material.dart';
import 'package:second_app/gradient_container.dart';
import 'package:second_app/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [Colors.deepPurple, Colors.purple],
          child: Quiz(),
        ),
      ),
    );
  }
}

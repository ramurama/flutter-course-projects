import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // body: Gradientcontainer(color1: Colors.blue, color2: Colors.green),
        body: Gradientcontainer.purple(),
      ),
    ),
  );
}

import 'package:expense_tracker/expenses.dart';
import 'package:expense_tracker/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    MaterialApp(
      home: Expenses(),
      theme: lightThemeData,
      darkTheme: darkThemeData,
    ),
  );
}

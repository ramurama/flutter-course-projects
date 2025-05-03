import 'package:second_app/models/quiz_question_model.dart';

const questions = [
  QuizQuestionModel(
    question: 'What are the main building blocks of Flutter UI?',
    options: ['Widgets', 'Components', 'Elements', 'Classes'],
    correctAnswer: 'Widgets',
  ),
  QuizQuestionModel(
    question:
        'What is the purpose of the pubspec.yaml file in a Flutter project?',
    options: [
      'To define the app\'s layout',
      'To manage dependencies',
      'To configure the app\'s theme',
      'To handle routing',
    ],
    correctAnswer: 'To manage dependencies',
  ),
  QuizQuestionModel(
    question: 'Which widget is used to create a scrollable list in Flutter?',
    options: ['ListView', 'GridView', 'Column', 'Row'],
    correctAnswer: 'ListView',
  ),
  QuizQuestionModel(
    question: 'What is the purpose of the setState() method in Flutter?',
    options: [
      'To update the UI',
      'To manage state',
      'To handle user input',
      'To navigate between screens',
    ],
    correctAnswer: 'To update the UI',
  ),
  QuizQuestionModel(
    question: 'Which widget is used to display an image in Flutter?',
    options: ['Image', 'Picture', 'Icon', 'Graphic'],
    correctAnswer: 'Image',
  ),
  // QuizQuestionModel(
  //   question: 'What is the main function in a Flutter app?',
  //   options: ['main()', 'runApp()', 'startApp()', 'initApp()'],
  //   correctAnswer: 'main()',
  // ),
  // QuizQuestionModel(
  //   question: 'Which widget is used to create a button in Flutter?',
  //   options: ['Button', 'RaisedButton', 'FlatButton', 'All of the above'],
  //   correctAnswer: 'All of the above',
  // ),
  // QuizQuestionModel(
  //   question: 'What is the purpose of the Scaffold widget in Flutter?',
  //   options: [
  //     'To create a basic layout structure',
  //     'To manage app navigation',
  //     'To handle user input',
  //     'To display images',
  //   ],
  //   correctAnswer: 'To create a basic layout structure',
  // ),
  // QuizQuestionModel(
  //   question: 'Which widget is used to create a text field in Flutter?',
  //   options: ['TextField', 'InputField', 'TextBox', 'FormField'],
  //   correctAnswer: 'TextField',
  // ),
];

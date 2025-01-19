import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

//custome files
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite IDE?',
      'answers': ['vs code', 'IntelliJ', 'visual studio code'],
    },
    {
      'questionText': 'What\'s your favorite language?',
      'answers': ['Java', 'Dart&Flutter', 'Python', 'JS', 'HTML&CSS'],
    },
    {
      'questionText': 'What\'s your favorite framework?',
      'answers': ['Spring Boot', 'Flutter', 'React Native'],
    },
  ];

  var _questionNo = 0;

  //on clicked buttons
  void _printButton() {
    setState(() {
      if (_questionNo < _questions.length) {
        _questionNo++;
      } else {
        print('Not more questions');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: _questionNo < _questions.length
            ? Quiz(
                questions: _questions,
                printButton: _printButton,
                questionNo: _questionNo)
            : Result(),
      ),
    );
  }
}

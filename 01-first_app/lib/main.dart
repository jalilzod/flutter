import 'package:flutter/material.dart';

//custome files
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionNo = 0;

  //on clicked buttons
  void _printButton() {
    setState(() {
      _questionNo = (_questionNo + 1) % 3;
      print(_questionNo);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite IDE?',
        'answers': ['vs code', 'IntelliJ', 'Microsoft visual studio code'],
      },
      {
        'questionText': 'What\'s your favorite language?',
        'answers': ['Java', 'Dart&Flutter', 'Python', 'JS html css'],
      },
      {
        'questionText': 'What\'s your favorite framework?',
        'answers': ['Spring Boot', 'Flutter', 'React Native'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question((questions[_questionNo]['questionText'] as String)),
            ...(questions[_questionNo]['answers'] as List<String>)
                .map((answer) {
              return Answer(_printButton, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

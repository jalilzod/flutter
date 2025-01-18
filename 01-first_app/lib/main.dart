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
      'What\'s your name?',
      'How old are you?',
      'What is your hobby'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(questions.elementAt(_questionNo)),
            Answer(_printButton),
            Answer(_printButton),
            Answer(_printButton),
            Answer(_printButton),
          ],
        ),
      ),
    );
  }
}

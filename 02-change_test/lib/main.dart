import 'package:first_app/nextQuote.dart';
import 'package:flutter/material.dart';
import './displayText.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _quotes = const [
    '"Live as if you were to die tomorrow. Learn as if you were to live forever." – Mahatma Gandhi',
    '"The beautiful thing about learning is that no one can take it away from you." – B.B. King',
    '"Education is the most powerful weapon which you can use to change the world." – Nelson Mandela',
    '"Tell me and I forget. Teach me and I remember. Involve me and I learn." – Benjamin Franklin',
    '"Learning never exhausts the mind." – Leonardo da Vinci'
  ];

  var _quoteIndex = 0;
  void _getNextQuote() {
    setState(() {
      if (_quoteIndex < _quotes.length - 1) {
        _quoteIndex++;
      } else {
        _quoteIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Click to change the text'),
        ),
        body: Center(
          child: Column(
            children: [
              Displaytext(_quotes[_quoteIndex]),
              Nextquote(_getNextQuote),
            ],
          ),
        ),
      ),
    );
  }
}

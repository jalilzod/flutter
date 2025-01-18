import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void printButton() {
    print('Button clicked');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Text('The Question!'),
            ElevatedButton(onPressed: printButton, child: Text('Option1')),
            ElevatedButton(onPressed: printButton, child: Text('Option2')),
            ElevatedButton(onPressed: printButton, child: Text('Option3')),
            ElevatedButton(onPressed: printButton, child: Text('Option4')),
          ],
        ),
      ),
    );
  }
}

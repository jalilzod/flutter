import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
            ElevatedButton(
                onPressed: () {
                  print('Clicked option1');
                },
                child: Text('Option1')),
            ElevatedButton(
                onPressed: () {
                  print('Clicked option2');
                },
                child: Text('Option2')),
            ElevatedButton(
                onPressed: () {
                  print('Clicked option3');
                },
                child: Text('Option3')),
            ElevatedButton(
                onPressed: () {
                  print('Clicked option4');
                },
                child: Text('Option4')),
          ],
        ),
      ),
    );
  }
}

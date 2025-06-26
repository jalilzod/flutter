import 'package:flutter/material.dart';
import 'package:learning_path/first.dart';
import 'package:learning_path/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation basic',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => FisrtPage(),
        '/second': (context) => SecondPage(),
      },
    );
  }
}

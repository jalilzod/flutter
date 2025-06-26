import 'package:flutter/material.dart';
import 'package:learning_path/first.dart';
import 'package:learning_path/nav.dart';
import 'package:learning_path/previous/row_column_container.dart';

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
      home: FisrtPage(),
    );
  }
}

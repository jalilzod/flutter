import 'package:flutter/material.dart';
import 'package:learning_path/counter_app.dart';
import 'package:learning_path/row_column_container.dart';

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
      home: RowColContainer(),
    );
  }
}

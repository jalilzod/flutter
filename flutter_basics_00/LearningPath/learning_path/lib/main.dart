import 'package:flutter/material.dart';
import 'package:learning_path/click_to_change_color_app.dart';
import 'package:learning_path/mood_selector.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Basic now..",
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const ClickToChangeColorApp(),
    );
  }
}

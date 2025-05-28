import 'package:flutter/material.dart';
import 'package:learning_path/list_view.dart';

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
      home: const ContactListApp(),
    );
  }
}

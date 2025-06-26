import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hi, $message'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go first'),
            ),
          ],
        ),
      ),
    );
  }
}

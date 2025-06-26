import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_path/second.dart';

class FisrtPage extends StatefulWidget {
  const FisrtPage({super.key});

  @override
  State<FisrtPage> createState() => _FisrtPageState();
}

class _FisrtPageState extends State<FisrtPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
        backgroundColor: Colors.blue,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Enter your name',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: 10,
                top: 10,
              ),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 80, 80, 80),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Enter your name...',
                  alignLabelWithHint: true,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(message: controller.text),
                  ),
                );
              },
              child: Text('Go second'),
            ),
          ],
        ),
      ),
    );
  }
}

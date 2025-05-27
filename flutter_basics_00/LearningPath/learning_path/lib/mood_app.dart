import 'dart:math';
import 'package:flutter/material.dart';

class MoodeApp extends StatefulWidget {
  const MoodeApp({super.key});

  @override
  State<MoodeApp> createState() => _MoodeAppState();
}

class _MoodeAppState extends State<MoodeApp> {
  final List<String> _moodes = [
    'Happy',
    'Angree',
    'Sad',
    'Relaxed',
    'Confused',
  ];
  String _currentMoode = 'Click to see my mood🖱️';
  var random = Random();
  void _changeMood() {
    setState(() {
      _currentMoode = _moodes[random.nextInt(_moodes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 110, 228),
      appBar: AppBar(
        title: const Text(
          'Moode App',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "I'm feeling $_currentMoode",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: _changeMood,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color.fromARGB(255, 57, 57, 57),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10),
                  ),
                  elevation: 7,
                  shadowColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                ),
                child: const Text('Click to change moode'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

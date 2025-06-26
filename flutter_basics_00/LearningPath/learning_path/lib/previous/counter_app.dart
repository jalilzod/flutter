import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    if (_count > 0) {
      setState(() {
        _count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter app'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: const Color.fromARGB(255, 58, 58, 58),
          fontSize: 24,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Count: $_count',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: _incrementCount,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _decrementCount,
            child: Icon(Icons.minimize_outlined),
          ),
        ],
      ),
    );
  }
}

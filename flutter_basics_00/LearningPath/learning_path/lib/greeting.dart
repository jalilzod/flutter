import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Greeting extends StatefulWidget {
  const Greeting({super.key});

  @override
  State<Greeting> createState() => _GreetingState();
}

class _GreetingState extends State<Greeting> {
  final String _greetingMsg = '👋Hello dear Ming Yuan!Congrats for first app🎉';
  final String _afterClick = 'You doing well👍 with button move on !';
  String _currentMsg = 'Click to change text';
  bool _isClicked = false;

  void _changeGreeting() {
    setState(() {
      _isClicked = !_isClicked;
      if (_isClicked) {
        _currentMsg = _afterClick;
      } else {
        _currentMsg = _greetingMsg;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Greeting',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _currentMsg,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _changeGreeting,
                child: const Text("Click to change"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

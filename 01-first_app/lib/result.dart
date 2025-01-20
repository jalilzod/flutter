import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function() resetQuiz;
  Result(this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Finished test!!!',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: const Color.fromARGB(255, 198, 196, 196)),
              onPressed: resetQuiz,
              child: Text('Reset Quiz!')),
        ],
      ),
    );
  }
}

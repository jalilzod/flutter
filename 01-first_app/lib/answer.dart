import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        onPressed: selectHandler,
        child: Text(
          'Answer 1',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

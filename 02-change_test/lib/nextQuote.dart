import 'package:flutter/material.dart';

class Nextquote extends StatelessWidget {
  final Function() getNextQuote;
  Nextquote(this.getNextQuote);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue, foregroundColor: Colors.white),
        onPressed: getNextQuote,
        child: Text(
          'Next Quote',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}

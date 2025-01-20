import 'package:flutter/material.dart';

class Displaytext extends StatelessWidget {
  final String theQuote;
  Displaytext(this.theQuote);

  @override
  Widget build(BuildContext context) {
    return Text(
      theQuote,
      style: TextStyle(
          fontSize: 20,
          color: const Color.fromARGB(255, 78, 78, 78),
          fontStyle: FontStyle.italic),
    );
  }
}

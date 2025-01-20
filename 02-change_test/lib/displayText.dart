import 'package:flutter/material.dart';

class Displaytext extends StatelessWidget {
  final String theQuote;
  Displaytext(this.theQuote);

  @override
  Widget build(BuildContext context) {
    return Text(
      theQuote,
      style: TextStyle(fontSize: 25, color: Colors.blueAccent),
    );
  }
}

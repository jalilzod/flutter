import 'package:flutter/material.dart';

class Nextquote extends StatelessWidget {
  final Function() getNextQuote;
  Nextquote(this.getNextQuote);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: getNextQuote, child: Text('Next Quote'));
  }
}

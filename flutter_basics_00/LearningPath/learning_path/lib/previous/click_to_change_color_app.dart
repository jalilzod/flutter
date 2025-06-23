import 'package:flutter/material.dart';

class ClickToChangeColorApp extends StatefulWidget {
  const ClickToChangeColorApp({super.key});
  @override
  State<ClickToChangeColorApp> createState() => _ClickToChangeColorSatate();
}

class _ClickToChangeColorSatate extends State<ClickToChangeColorApp> {
  Color _backgroundColor = Colors.yellow[400]!;
  String _currentCollor = 'Yellow';
  ButtonStyle btnStyle(Color bgColor, Color txtColor) {
    return ElevatedButton.styleFrom(
      backgroundColor: bgColor,
      foregroundColor: txtColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 4,
    );
  }

  void _changeColorTo(Color color, String nameOfColor) {
    setState(() {
      _backgroundColor = color;
      _currentCollor = nameOfColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Click&Change APP',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current collor is $_currentCollor',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        _changeColorTo(Colors.red, 'red');
                      },
                      style: btnStyle(Colors.red, Colors.white),
                      child: const Text("Click for red"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        _changeColorTo(Colors.blue, 'blue');
                      },
                      style: btnStyle(Colors.blue, Colors.white),
                      child: const Text('Click for blue'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        _changeColorTo(Colors.green, 'green');
                      },
                      style: btnStyle(Colors.green, Colors.white),
                      child: const Text("Click for green"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        _changeColorTo(Colors.orange, 'orange');
                      },
                      style: btnStyle(Colors.orange, Colors.white),
                      child: const Text('Click for orange'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        _changeColorTo(Colors.purpleAccent, 'purple');
                      },
                      style: btnStyle(Colors.purpleAccent, Colors.white),
                      child: const Text("Click for purple"),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsGeometry.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        _changeColorTo(Colors.black, 'black');
                      },
                      style: btnStyle(Colors.black, Colors.white),
                      child: const Text('Click for black'),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

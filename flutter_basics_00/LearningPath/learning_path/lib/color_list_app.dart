import 'package:flutter/material.dart';

class ColorListApp extends StatefulWidget {
  const ColorListApp({super.key});

  @override
  State<ColorListApp> createState() => _ColorListAppState();
}

class _ColorListAppState extends State<ColorListApp> {
  Color _backgroundColor = Colors.white;
  String _currentColor = 'None';
  final List<Map<String, dynamic>> _colors = [
    {'name': 'Red', 'color': Colors.red},
    {'name': 'Blue', 'color': Colors.blue},
    {'name': 'Green', 'color': Colors.green},
    {'name': 'Orange', 'color': Colors.orange},
    {'name': 'Purple', 'color': Colors.purpleAccent},
    {'name': 'Black', 'color': Colors.black},
  ];

  void _changeColor(Color color, String name) {
    setState(() {
      _backgroundColor = color;
      _currentColor = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(
        title: const Text(
          'Color List App',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Selected color: $_currentColor',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _colors.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: _colors[index]['color'],
                  ),
                  title: Text(_colors[index]['name']),
                  onTap: () {
                    _changeColor(
                      _colors[index]['color'],
                      _colors[index]['name'],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

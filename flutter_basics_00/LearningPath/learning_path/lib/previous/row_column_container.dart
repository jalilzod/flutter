import 'package:flutter/material.dart';

class RowColContainer extends StatefulWidget {
  const RowColContainer({super.key});

  @override
  State<RowColContainer> createState() => _RowColContainerState();
}

class _RowColContainerState extends State<RowColContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Containers'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(40),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'New Items',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 46, 46, 46),
                      fontSize: 19,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(40),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                    ),
                  ),
                  child: Text(
                    'New Items1',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 19,
                    ),
                  ),
                ),
              ],
            ),
            Text("me in the dark...."),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.done)),
          ],
        ),
      ),
    );
  }
}

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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("me in the dark...."),
            ElevatedButton(onPressed: () {}, child: Icon(Icons.done)),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 200),
                padding: EdgeInsets.all(100),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Me in here ',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

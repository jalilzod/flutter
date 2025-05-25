import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: const Color.fromARGB(255, 2, 84, 178),
        width: 1.5,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    );

    // TODO: implement build
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 56, 126),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Currency convertor..",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter your currency...',
                  hintStyle: TextStyle(
                    color: const Color.fromARGB(255, 163, 166, 167),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 47, 47, 48),
                  focusedBorder: border,
                  enabledBorder: border,
                  prefixIcon: Icon(Icons.currency_exchange),
                  prefixIconColor: const Color.fromARGB(255, 247, 247, 247),
                ),
                keyboardType: TextInputType.numberWithOptions(),
              ),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Clicked..');
              },
              style: ButtonStyle(
                backgroundColor: const WidgetStatePropertyAll(
                  Color.fromARGB(255, 45, 116, 238),
                ),
                fixedSize: const WidgetStatePropertyAll(Size(200, 50)),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: const Text(
                'Convert',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

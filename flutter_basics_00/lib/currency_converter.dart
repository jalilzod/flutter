import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});
  @override
  State<CurrencyConverter> createState() => _CurrencyConverter();
}

class _CurrencyConverter extends State<CurrencyConverter> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: const Color.fromARGB(255, 2, 84, 178),
        width: 1.5,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 4, 115, 201),
        elevation: 0,
        title: Text(
          'Currency Converter',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 3, 56, 126),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'TJS ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  hintText: 'Enter your amount in USD...',
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
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: ElevatedButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 10.20;
                  setState(() {
                    result = double.parse(textEditingController.text) * 10.20;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: const WidgetStatePropertyAll(
                    Color.fromARGB(255, 45, 116, 238),
                  ),
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  elevation: WidgetStatePropertyAll(4),
                ),
                child: const Text(
                  'Convert',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

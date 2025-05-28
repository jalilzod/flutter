import 'package:flutter/material.dart';

class TextFieldForms extends StatefulWidget {
  const TextFieldForms({super.key});

  @override
  State<TextFieldForms> createState() => _TextFieldFormsState();
}

class _TextFieldFormsState extends State<TextFieldForms> {
  TextEditingController _controller = TextEditingController();
  String _name = '';
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TextFiled Forms',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 69, 70, 70),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You're: $_name", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'Enter your name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    _name = value;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InputTasks extends StatefulWidget {
  const InputTasks({super.key});

  @override
  State<InputTasks> createState() => _InputTasksState();
}

class _InputTasksState extends State<InputTasks> {
  List<String> _tasks = [];
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 46, 46),
      appBar: AppBar(
        title: Text(
          'Input tasks',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 29, 28, 28),
      ),

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _controller,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Enter a task',
                hintStyle: TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: Text('Add task')),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                return ListTile(title: Text(_tasks[index]));
              },
            ),
          ),
        ],
      ),
    );
  }
}

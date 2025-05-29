import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InputTasks extends StatefulWidget {
  const InputTasks({super.key});

  @override
  State<InputTasks> createState() => _InputTasksState();
}

class _InputTasksState extends State<InputTasks> {
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final List<String> _tasks = [];
  final TextEditingController _controller = TextEditingController();
  String _dateOfTask = '';
  void _addTheTask() {
    DateTime now = DateTime.now();
    _dateOfTask =
        "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}";
    setState(() {
      if (_controller.text != '') {
        _tasks.add(_controller.text);
      }
    });
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
          ElevatedButton(
            onPressed: _addTheTask,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 28, 138, 248),
              foregroundColor: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text('Add task'),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(10),
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 0.1, horizontal: 2),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 78, 85, 88),
                  ),
                  child: ListTile(
                    title: Text(
                      _tasks[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      _dateOfTask,
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      setState(() {
                        _tasks.removeAt(index);
                      });
                    },
                    trailing: Icon(
                      Icons.delete,
                      color: const Color.fromARGB(255, 173, 13, 2),
                    ),
                    leading: Icon(Icons.task_outlined, color: Colors.green),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

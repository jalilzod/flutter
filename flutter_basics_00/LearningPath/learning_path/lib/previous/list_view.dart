import 'package:flutter/material.dart';

class ContactListApp extends StatefulWidget {
  const ContactListApp({super.key});

  @override
  State<ContactListApp> createState() => _ContactListAppState();
}

class _ContactListAppState extends State<ContactListApp> {
  String _currentEmail = 'None';
  int? _selectedIndex;
  final List<Map<String, dynamic>> _contacts = [
    {'name': 'Ming', 'email': 'ming@qq.com'},
    {'name': 'Yuan', 'email': 'yuan@qq.com'},
    {'name': 'Ali', 'email': 'ali@qq.com'},
    {'name': 'Jaha', 'email': 'jaha@qq.com'},
  ];

  void _selectContact(int index) {
    setState(() {
      _selectedIndex = index;
      _currentEmail = _contacts[index]['email'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contact List',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(5),
              itemCount: _contacts.length,
              itemBuilder: (context, index) {
                return Material(
                  color: Colors.transparent,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 1),
                    margin: const EdgeInsets.symmetric(
                      vertical: 1,
                      horizontal: 2,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: _selectedIndex == index
                          ? Colors.grey[700]
                          : const Color.fromARGB(255, 81, 81, 81),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(3),
                      onTap: () => _selectContact(index),
                      splashColor: Colors.white,
                      child: ListTile(
                        title: Text(
                          _contacts[index]['name'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        leading: const Icon(Icons.person, color: Colors.white),
                        subtitle: const Text(
                          'Student',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: _selectedIndex == index
                            ? const Icon(Icons.check, color: Colors.white)
                            : const Icon(Icons.more_horiz, color: Colors.white),
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        selected: _selectedIndex == index,
                        selectedTileColor: Colors.grey[300],
                        tileColor: Colors.transparent,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Student email: $_currentEmail',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                shadows: [Shadow(blurRadius: 2, color: Colors.white)],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

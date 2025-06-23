import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GroceryListApp extends StatefulWidget {
  const GroceryListApp({super.key});

  @override
  State<GroceryListApp> createState() => _GroceryListAppState();
}

class _GroceryListAppState extends State<GroceryListApp> {
  @override
  void dispose() {
    _itemName.dispose();
    _category.dispose();
    super.dispose();
  }

  String _message = '';
  TextEditingController _itemName = TextEditingController();
  TextEditingController _category = TextEditingController();
  final List<Map<String, dynamic>> _cart = [];
  bool _noErros = false;
  bool _inCart = false;
  void _addToCart() {
    setState(() {
      if (_itemName.text.isNotEmpty && _category.text.isNotEmpty) {
        _cart.add({
          'name': _itemName.text,
          'category': _category.text,
          'isInCart': false,
        });
        _message = 'Success';
        _noErros = true;
      } else {
        _message = 'All the fields are required!!';
        _noErros = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 83, 83, 83),
      appBar: AppBar(
        title: Text('Grocery list'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 245, 229, 9),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _itemName,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 226, 225, 225),
                      hintText: 'Item name',
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 5, 5, 5),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _category,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 12, 12, 12),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(255, 218, 216, 216),
                      hintText: 'Item category',
                      hintStyle: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _addToCart,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Add'),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _cart.clear();
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text('Clear'),
              ),
            ],
          ),

          Expanded(
            child: ListView.builder(
              itemCount: _cart.length,
              padding: EdgeInsets.all(2),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 1, horizontal: 5),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 29, 29, 29),
                  ),
                  child: ListTile(
                    title: Text(
                      _cart[index]['name'],
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      _cart[index]['category'],
                      style: TextStyle(
                        color: const Color.fromARGB(255, 177, 178, 179),
                      ),
                    ),
                    leading: Icon(Icons.shopping_cart, color: Colors.green),
                    trailing: Icon(
                      _cart[index]['isInCart'] ? Icons.done : Icons.add,
                      color: Colors.amber,
                    ),
                    onTap: () {
                      setState(() {
                        _cart[index]['isInCart'] = true;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              _message,
              style: TextStyle(color: _noErros ? Colors.white : Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}

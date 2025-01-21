import 'package:first_app/transactions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Expenses App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transactions> transactions = [
    Transactions(
        id: 't1', title: 'New Hoody', amount: 45.29, date: DateTime.now()),
    Transactions(
        id: 't2', title: 'New Shoose', amount: 65.49, date: DateTime.now()),
    Transactions(
        id: 't3', title: 'iPhone', amount: 85.91, date: DateTime.now()),
    Transactions(
        id: 't4', title: 'Jacket', amount: 99.94, date: DateTime.now()),
  ];

  String formatDate(DateTime date) {
    String formated = DateFormat("yyyy-MM-dd HH:mm").format(date);
    return formated;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blueAccent,
              child: Text('CHART'),
            ),
          ),
          Column(
            children: transactions.map((transaction) {
              return Card(
                color: const Color.fromARGB(255, 80, 81, 82),
                child: Row(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                      decoration: BoxDecoration(),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$' + transaction.amount.toString(),
                        style: TextStyle(
                            color: const Color.fromARGB(255, 7, 235, 83),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transaction.title,
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          formatDate(transaction.date),
                          style: TextStyle(
                              color: const Color.fromARGB(255, 219, 215, 215)),
                        )
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}

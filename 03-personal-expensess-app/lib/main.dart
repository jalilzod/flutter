import 'package:first_app/Widgets/new_transaction.dart';
import 'package:first_app/Widgets/transaction_list.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Modules/transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'Personal Expenses',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Transactions> _userTransactions = [
    Transactions(
        id: 't1', title: 'New Hoody', amount: 45.29, date: DateTime.now()),
    Transactions(
        id: 't2', title: 'New Shoose', amount: 65.49, date: DateTime.now()),
    Transactions(
        id: 't3', title: 'iPhone', amount: 85.91, date: DateTime.now()),
    Transactions(
        id: 't4', title: 'Jacket', amount: 99.94, date: DateTime.now()),
  ];

  void _addNewTrans(String title, double amount) {
    final newTx = Transactions(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  void _satrtAddNewTrabsaction(BuildContext cxt) {
    showModalBottomSheet(
      context: cxt,
      builder: (_) {
        return NewTransaction(_addNewTrans);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal Expeses'),
        actions: [
          IconButton(
            onPressed: () {
              _satrtAddNewTrabsaction(context);
            },
            icon: Icon(Icons.add),
            color: Colors.white,
          )
        ],
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blueAccent,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'CHART',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            TransactionList(_userTransactions),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _satrtAddNewTrabsaction(context);
        },
        backgroundColor: Colors.blueAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}

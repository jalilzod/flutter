import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../Modules/transactions.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTrans),
        TransactionList(_userTransactions)
      ],
    );
  }
}

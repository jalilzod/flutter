import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addNewTrans;
  NewTransaction(this.addNewTrans);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredAmount <= 0 || enteredTitle.isEmpty) return;

    widget.addNewTrans(enteredTitle, enteredAmount);

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 231, 227, 227),
            borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
              onPressed: () {
                submitData;
              },
              child: Text(
                'Add Transaction',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

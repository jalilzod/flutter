import 'package:flutter/material.dart';
import '../Modules/transactions.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  String formatDate(DateTime date) {
    String formated = DateFormat.yMMMEd().format(date);
    return formated;
  }

  final List<Transactions> transactions;
  final Function(String id) deletedTX;

  const TransactionList(this.transactions, this.deletedTX);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      // Wrap the Column in a SingleChildScrollView
      child: transactions.isEmpty
          ? Column(
              children: [
                Text(
                  'No Transactions added yet!',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    child: Image.asset(
                      'assets/images/waiting.png',
                      fit: BoxFit.cover,
                    ))
              ],
            )
          : ListView.builder(
              itemBuilder: (ctx, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
                  elevation: 2,
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: FittedBox(
                          child: Text('\$${transactions[index].amount}'),
                        ),
                      ),
                    ),
                    title: Text(
                      transactions[index].title,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    subtitle: Text(
                        DateFormat.yMMMEd().format(transactions[index].date)),
                    trailing: IconButton(
                        onPressed: () {
                          deletedTX(transactions[index].id);
                        },
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}

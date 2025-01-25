import 'package:flutter/material.dart';
import '../Modules/transactions.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  String formatDate(DateTime date) {
    String formated = DateFormat.yMMMEd().format(date);
    return formated;
  }

  final List<Transactions> transactions;

  TransactionList(this.transactions);

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
                  color: const Color.fromARGB(255, 80, 81, 82),
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(),
                          child: Text(
                            '\$${transactions[index].amount.toStringAsFixed(2)}',
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
                              transactions[index].title,
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              formatDate(transactions[index].date),
                              style: TextStyle(
                                color: const Color.fromARGB(255, 219, 215, 215),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}

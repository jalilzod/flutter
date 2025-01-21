// import 'package:flutter/material.dart';
// import '../Modules/transactions.dart';
// import 'package:intl/intl.dart';

// class TransactionList extends StatelessWidget {
//   String formatDate(DateTime date) {
//     String formated = DateFormat.yMMMEd().format(date);
//     return formated;
//   }

//   final List<Transactions> transactions;
//   TransactionList(this.transactions);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView(
//         children: transactions.map((transaction) {
//           return Card(
//             color: const Color.fromARGB(255, 80, 81, 82),
//             margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//             child: Padding(
//               padding: EdgeInsets.all(10),
//               child: Row(
//                 children: [
//                   Container(
//                     margin: EdgeInsets.symmetric(horizontal: 15),
//                     padding: EdgeInsets.all(10),
//                     decoration: BoxDecoration(),
//                     child: Text(
//                       '\$${transaction.amount.toStringAsFixed(2)}',
//                       style: TextStyle(
//                           color: const Color.fromARGB(255, 7, 235, 83),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20),
//                     ),
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         transaction.title,
//                         style: TextStyle(color: Colors.white, fontSize: 18),
//                       ),
//                       Text(
//                         formatDate(transaction.date),
//                         style: TextStyle(
//                           color: const Color.fromARGB(255, 219, 215, 215),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }

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
    return SingleChildScrollView(
      // Wrap the Column in a SingleChildScrollView
      child: Column(
        children: transactions.map((transaction) {
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
                      '\$${transaction.amount.toStringAsFixed(2)}',
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
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        formatDate(transaction.date),
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
        }).toList(),
      ),
    );
  }
}

import 'package:first_app/Modules/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transactions> recentTrnasactions;
  Chart(this.recentTrnasactions);

  List<Map<String, Object>> get groupTransactionValue {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      var totalSum = 0.0;

      for (var i = 0; i < recentTrnasactions.length; i++) {
        if (recentTrnasactions[i].date.day == weekDay.day &&
            recentTrnasactions[i].date.month == weekDay.month &&
            recentTrnasactions[i].date.year == weekDay.year) {
          totalSum += recentTrnasactions[i].amount;
        }
      }
      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        'amount': totalSum
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: groupTransactionValue.map((data) {
          return Text(' ${data['day']} : ${data['amount']} ');
        }).toList(),
      ),
    );
  }
}

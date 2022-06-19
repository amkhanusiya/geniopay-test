import 'package:flutter/material.dart';

import '../colors.dart';
import '../models/transaction.dart';

class TransactionsList extends StatelessWidget {
  final List<Transaction> _transactions = [];

  TransactionsList({Key? key}) : super(key: key) {
    _addTransactions();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Transactions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View All',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _transactions.length,
              itemBuilder: ((context, index) {
                final Transaction _transaction = _transactions[index];
                return ListTile(
                  title: Text(_transaction.detail),
                  subtitle: Text(_transaction.date),
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: AppColor.lightPrimary,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipOval(
                        child: Image.network(_transaction.icon),
                      ),
                    ),
                  ),
                  trailing: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(_transaction.amount),
                      Text(_transaction.status)
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  void _addTransactions() {
    _transactions.add(
      Transaction(
          amount: "amount",
          date: "date",
          detail: "detail",
          icon: "https://via.placeholder.com/150",
          status: "status"),
    );
    _transactions.add(
      Transaction(
          amount: "amount",
          date: "date",
          detail: "detail",
          icon: "https://via.placeholder.com/150",
          status: "status"),
    );
  }
}

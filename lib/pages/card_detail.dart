import 'package:flutter/material.dart';

import '../colors.dart';
import '../models/home_banner.dart';
import '../models/transaction.dart';
import '../utils/hex_color.dart';

class CardDetails extends StatelessWidget {
  final List<HomeBanner> _banners = [];
  final List<Transaction> _transactions = [];

  CardDetails({Key? key}) : super(key: key) {
    _addBanners();
    _addTransactions();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 15),
          height: 160,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _banners.length,
            itemBuilder: (context, index) {
              final HomeBanner _banner = _banners[index];
              return Container(
                width: 200,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: HexColor(_banner.bgColor),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      _banner.banner,
                      width: 60,
                      height: 60,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      _banner.text,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
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
    );
  }

  void _addBanners() {
    _banners.add(HomeBanner("https://via.placeholder.com/150", "#FFF0B1",
        "Upto 15% cashback on clothing and apparels"));
    _banners.add(HomeBanner(
        "https://via.placeholder.com/150", "#E0F7FE", "Refer and earn \$20"));
    _banners.add(HomeBanner("https://via.placeholder.com/150", "#DCD1FD", ""));
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

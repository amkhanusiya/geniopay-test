import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:geniopay_test/pages/transaction_list.dart';

import '../colors.dart';
import 'card_detail.dart';
import 'chart.dart';

class WalletDetailScreen extends StatelessWidget {
  const WalletDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        actions: [
          Icon(
            Icons.help_outline,
            color: AppColor.primarySwatch,
          )
        ],
        centerTitle: true,
        title: const Text(
          'Activity',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: const WalletDetail(),
    );
  }
}

class WalletDetail extends StatelessWidget {
  const WalletDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColor.lightPrimary,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: size.height * 0.4,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(color: AppColor.primarySwatch),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  '\$450,49',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: AppColor.primarySwatch,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const ChartData(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Color.fromRGBO(0, 138, 167, 0.7),
                    blurRadius: 60.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              height: size.height * 0.38,
              margin: const EdgeInsets.only(bottom: 10),
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: CardDetails(isDetails: true),
              ),
            ),
          )
        ],
      ),
    );
  }
}

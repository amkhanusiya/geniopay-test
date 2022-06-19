import 'package:flutter/material.dart';

class AppBottomBar extends StatelessWidget {
  final _bottomNavigationBarColor = Colors.black;
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 8,
      color: Colors.white,
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
              icon: const Icon(Icons.credit_card),
              color: _bottomNavigationBarColor,
              onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.monetization_on),
              color: _bottomNavigationBarColor,
              onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.account_balance_wallet),
              color: _bottomNavigationBarColor,
              onPressed: () {}),
          IconButton(
              icon: const Icon(Icons.menu),
              color: _bottomNavigationBarColor,
              onPressed: () {})
        ],
      ),
    );
  }
}

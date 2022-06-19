import 'package:flutter/material.dart';
import 'package:geniopay_test/colors.dart';
import 'package:geniopay_test/pages/home_page.dart';

import 'bottom_appbar.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: AppColor.primarySwatch,
          onPressed: () {},
          tooltip: '',
          child: const Icon(
            Icons.home,
            color: Colors.white,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const AppBottomBar(),
      backgroundColor: AppColor.lightPrimary,
      body: const HomePage(),
    );
  }
}

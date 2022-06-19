import 'package:flutter/material.dart';

import 'bottom_navigation.dart';
import 'colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GenioPay',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        appBarTheme: AppBarTheme(
          backgroundColor: AppColor.lightPrimary,
          elevation: 0,
          centerTitle: false,
          titleTextStyle: TextStyle(
            color: AppColor.primarySwatch,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const BottomNavigationBarWidget(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:geniopay_test/colors.dart';

import 'card_detail.dart';
import 'top_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(
            Icons.park,
            color: AppColor.primarySwatch,
          ),
          Icon(
            Icons.notifications,
            color: AppColor.primarySwatch,
          ),
          Icon(
            Icons.help_outline,
            color: AppColor.primarySwatch,
          )
        ],
        leading: const Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            backgroundColor: Colors.transparent,
          ),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Good Morning'),
            Text(
              'Jane Smith',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColor.lightPrimary,
      child: Stack(
        children: [
          Container(
            child: const TopHeader(),
            width: double.infinity,
            height: size.height * 0.4,
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  width: 2.0,
                  color: AppColor.primarySwatch,
                ),
                left: BorderSide(
                  width: 2.0,
                  color: AppColor.primarySwatch,
                ),
                top: BorderSide(
                  width: 2.0,
                  color: AppColor.primarySwatch,
                ),
                bottom: BorderSide(
                  width: 2.0,
                  color: AppColor.primarySwatch,
                ),
              ),
              // borderRadius: BorderRadius.circular(20),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
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
                child: CardDetails(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

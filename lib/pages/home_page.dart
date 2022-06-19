import 'package:flutter/material.dart';
import 'package:geniopay_test/colors.dart';
import 'package:geniopay_test/models/home_banner.dart';
import 'package:geniopay_test/models/transaction.dart';
import 'package:geniopay_test/utils/hex_color.dart';

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
                    color: Color.fromRGBO(0, 138, 167, 0.4),
                    blurRadius: 60.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ],
              ),
              height: size.height * 0.36,
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

class TopHeader extends StatelessWidget {
  const TopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
        Container(
          child: const Text('USD'),
          // color: AppColor.primarySwatch,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            color: AppColor.primarySwatch.withOpacity(0.5),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        ),
        const SizedBox(
          height: 15,
        ),
        Divider(
          color: AppColor.primarySwatch,
          thickness: 0.5,
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.shopping_cart_checkout,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    primary: AppColor.primarySwatch,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Pay out',
                  style: TextStyle(color: AppColor.primarySwatch),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.add_shopping_cart,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    primary: AppColor.primarySwatch,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Pay in',
                  style: TextStyle(color: AppColor.primarySwatch),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.currency_exchange,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    primary: AppColor.primarySwatch,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Exchange',
                  style: TextStyle(color: AppColor.primarySwatch),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Icon(
                    Icons.grid_view,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                    primary: AppColor.primarySwatch,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'More',
                  style: TextStyle(color: AppColor.primarySwatch),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}

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

import 'package:flutter/material.dart';

import '../colors.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => Navigator.pushNamed(context, '/wallet-detail')),
      child: Column(
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
      ),
    );
  }
}

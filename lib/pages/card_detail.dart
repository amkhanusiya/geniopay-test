import 'package:flutter/material.dart';
import 'package:geniopay_test/colors.dart';
import 'package:geniopay_test/pages/transaction_list.dart';

import '../models/home_banner.dart';
import '../utils/hex_color.dart';

class CardDetails extends StatelessWidget {
  final List<HomeBanner> _banners = [];
  final bool isDetails;

  CardDetails({Key? key, this.isDetails = false}) : super(key: key) {
    _addBanners();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        !isDetails
            ? Container(
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
              )
            : Container(
                margin: const EdgeInsets.only(top: 15),
                height: 160,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 175,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: AppColor.lightPrimary,
                          width: 3,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: AppColor.lightPrimary,
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: ClipOval(
                                child: Icon(Icons.add_shopping_cart),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pay in',
                                style: TextStyle(color: AppColor.primarySwatch),
                              ),
                              Text(
                                '\$4,600.00',
                                style: TextStyle(color: AppColor.primarySwatch),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 175,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: AppColor.lightPrimary,
                          width: 3,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 25,
                            backgroundColor: AppColor.lightPrimary,
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: ClipOval(
                                child: Icon(Icons.shopping_cart_checkout),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pay Out',
                                style: TextStyle(color: AppColor.primarySwatch),
                              ),
                              Text(
                                '\$1,642.84',
                                style: TextStyle(color: AppColor.primarySwatch),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
        TransactionsList(),
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
}

import 'package:flutter/material.dart';

import 'the_info_item.dart';

class TheInfo extends StatelessWidget {
  const TheInfo({
    Key? key,
    required this.s,
    required this.height,
    required this.header,
    required this.bgColor,
    required this.infoItems,
    this.child,
  }) : super(key: key);

  final Size s;
  final double height;
  final String header;
  final Color bgColor;
  final List<TheInfoItem> infoItems;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (s.width * 375) / 375,
      height: (s.height * height) / 812,
      color: bgColor,
      padding: EdgeInsets.symmetric(
          horizontal: (s.width * 30) / 375, vertical: (s.height * 40) / 812),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            header,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          ...List.generate(infoItems.length, (index) => infoItems[index]),
          child ?? Container(),
        ],
      ),
    );
  }
}

List<TheInfoItem> basifInfoItems = [
  TheInfoItem(
    title: "Anonymity",
    subTitle:
        "Never worry about legit buyers or sellers – we’re in the middle.",
  ),
  TheInfoItem(
    title: "Transparency",
    subTitle: "Real-time market data for intelligent buying and selling.",
  ),
  TheInfoItem(
    title: "Authencity",
    subTitle: "Our experts authenticate every product sold on X-S-Store.",
  ),
];

List<TheInfoItem> buyingItems = [
  TheInfoItem(
    title: "Bid (Buy)",
    subTitle:
        "Make an offer that any seller can accept; or purchase immediately at the lowest Ask.",
  ),
  TheInfoItem(
    title: "Authencticate",
    subTitle:
        "Seller ships to us. We authenticate, then we release funds to the seller.",
  ),
  TheInfoItem(
    title: "Prosper",
    subTitle:
        "We ship to you. You sip a daiquiri, knowing you will never get a fake.",
  ),
];

List<TheInfoItem> sellingItems = [
  TheInfoItem(
    title: "Ask (Sell)",
    subTitle: "List an item for sale; or sell immediately at the highest Bid.",
  ),
  TheInfoItem(
    title: "Authencticate",
    subTitle:
        "Ship your item within 2 business days. We authenticate, then we ship to the buyer.",
  ),
  TheInfoItem(
    title: "Prosper",
    subTitle:
        "We release funds to you. You sip a daiquiri, knowing you will never get a chargeback.",
  ),
];

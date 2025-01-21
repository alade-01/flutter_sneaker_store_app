import 'package:flutter/material.dart';

import '../shared/CircleButton.dart';
import '../shared/StretchButton.dart';
import 'info_items_and_data.dart';

class StoryItemDetail extends StatelessWidget {
  const StoryItemDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: (s.width * 375) / 375,
              height: (s.height * 375) / 812,
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: (s.width * 30) / 375, top: (s.height * 54) / 812),
                child: CircleButton(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(Icons.arrow_back,color: Colors.black),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage("res/images/p7.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: (s.width * 375) / 375,
              height: (s.height * 244) / 812,
              color: Colors.black.withOpacity(0.10),
              padding: EdgeInsets.symmetric(
                  horizontal: (s.width * 30) / 375, vertical: (s.height * 40) / 812),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The stock market for things",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700)
                  ),
                  Spacer(),
                  Text(
                    "X-S-Store is the world’s first stock market for things – a live ‘bid/ask’ marketplace. Buyers place bids, sellers place asks and when a bid and ask meet, the transaction happens automatically. Retro Jordans, Nikes, Yeezys and more – now 100% authentic guaranteed.",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700)
                  ),
                ],
              ),
            ),
            TheInfo(
              s: s,
              header: "The Basic",
              bgColor: Colors.white,
              infoItems: basifInfoItems,
              height: (s.height * 372) / 812,
            ),
            TheInfo(
              s: s,
              header: "Buying on X-S-Store",
              bgColor: Colors.black.withOpacity(0.5),
              infoItems: buyingItems,
              height: (s.height * 444) / 812,
              child: Column(
                children: [
                  SizedBox(height: (s.height * 16) / 812),
                  StretchButton(
                    s: s,
                    child: Text(
                      "Learn More",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700)
                    ),
                    color: Colors.green,
                    tapColor: Colors.blue,
                    elevation: 3,
                    width: (s.width * 160) / 375,
                    onTap: () {},
                  ),
                ],
              ),
            ),
            TheInfo(
              s: s,
              header: "Selling on X-S-Store",
              bgColor: Colors.white,
              infoItems: sellingItems,
              height: (s.height * 444) / 812,
              child: Column(
                children: [
                  SizedBox(height: (s.height * 16) / 812),
                  Container(
                    child: Center(
                      child: StretchButton(
                        s: s,
                        child: Text(
                          "Learn More",
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700)
                        ),
                        color: Colors.red,
                        tapColor: Colors.blue,
                        elevation: 3,
                        width: (s.width * 160) / 375,
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

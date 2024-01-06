import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Source/source_shelf.dart';

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
              width: ww(s, 375),
              height: hh(s, 375),
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(left: ww(s, 30), top: hh(s, 54)),
                child: CircleButton(
                  s: s,
                  onTap: () => back(context),
                  color: white30,
                  child: SvgPicture.asset(
                    "assets/icons/chevronLeft.svg",
                    width: hh(s, 24),
                    height: hh(s, 24),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: red,
                image: DecorationImage(
                  image: AssetImage("assets/images/p7.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: ww(s, 375),
              height: hh(s, 244),
              color: black100,
              padding: EdgeInsets.symmetric(
                  horizontal: secondaryPadding(s), vertical: hh(s, 40)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The stock market for things",
                    style: bold20(s, white100),
                  ),
                  Spacer(),
                  Text(
                    "X-S-Store is the world’s first stock market for things – a live ‘bid/ask’ marketplace. Buyers place bids, sellers place asks and when a bid and ask meet, the transaction happens automatically. Retro Jordans, Nikes, Yeezys and more – now 100% authentic guaranteed.",
                    style: regular14(s, white60),
                  ),
                ],
              ),
            ),
            TheInfo(
              s: s,
              header: "The Basic",
              bgColor: white100,
              infoItems: basifInfoItems,
              height: hh(s, 372),
            ),
            TheInfo(
              s: s,
              header: "Buying on X-S-Store",
              bgColor: black5,
              infoItems: buyingItems,
              height: hh(s, 444),
              child: Column(
                children: [
                  SizedBox(height: hh(s, 16)),
                  Container(
                    child: Center(
                      child: StretchButton(
                        s: s,
                        child: Text(
                          "Learn More",
                          style: bold16(s, white100),
                        ),
                        color: green,
                        tapColor: blue,
                        elevation: 3,
                        width: ww(s, 160),
                        onTap: () {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            TheInfo(
              s: s,
              header: "Selling on X-S-Store",
              bgColor: white100,
              infoItems: sellingItems,
              height: hh(s, 444),
              child: Column(
                children: [
                  SizedBox(height: hh(s, 16)),
                  Container(
                    child: Center(
                      child: StretchButton(
                        s: s,
                        child: Text(
                          "Learn More",
                          style: bold16(s, white100),
                        ),
                        color: red,
                        tapColor: blue,
                        elevation: 3,
                        width: ww(s, 160),
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

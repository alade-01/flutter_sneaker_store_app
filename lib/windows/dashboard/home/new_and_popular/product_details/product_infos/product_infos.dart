import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:x_store/Source/source_shelf.dart';

import '../../../../../../Data/most_popular_data.dart';
import '../../new_and_popular.dart';
import 'latest_sales/latest_sales.dart';

class ProductInfos extends StatelessWidget {
  const ProductInfos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Positioned(
      top: hh(s, 351),
      left: 0,
      child: Container(
        width: s.width,
        height: s.height - hh(s, 351),
        padding:
            EdgeInsets.only(left: ww(s, 30), right: ww(s, 30), top: ww(s, 30)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Size All",
                    style: bold16(s, black100),
                  ),
                  SvgPicture.asset(
                    "assets/icons/chevronDown.svg",
                    width: ww(s, 24),
                  )
                ],
              ),
              SizedBox(height: hh(s, 30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(ww(s, 12)),
                    elevation: 0,
                    color: green,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        width: ww(s, 150),
                        height: hh(s, 72),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Buy \$214",
                              style: bold20(s, white100),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "or Bid",
                                  style: regular12(s, white60),
                                ),
                                SizedBox(width: ww(s, 10)),
                                Text(
                                  "Lowest Ask",
                                  style: regular12(s, white100),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [],
                        ),
                      ),
                    ),
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(ww(s, 12)),
                    elevation: 0,
                    color: red,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        width: ww(s, 150),
                        height: hh(s, 72),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sell \$265",
                              style: bold20(s, white100),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "or Ask",
                                  style: regular12(s, white60),
                                ),
                                SizedBox(width: ww(s, 10)),
                                Text(
                                  "Highest Bid",
                                  style: regular12(s, white100),
                                ),
                              ],
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: hh(s, 30)),
              Container(
                width: double.infinity,
                height: hh(s, 90),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jordan 14 Retro Gym Red Toro",
                      style: bold28(s, black100),
                    ),
                    RichText(
                      text: TextSpan(
                        style: regular12(s, black100),
                        children: [
                          TextSpan(
                            text: "Condition:",
                          ),
                          TextSpan(
                            text: "New",
                            style: regular12(s, green),
                          ),
                          TextSpan(
                            text: " • ",
                          ),
                          TextSpan(
                            text: "Ticker:JB-JO1RBGRBW",
                          ),
                          TextSpan(
                            text: " • ",
                          ),
                          TextSpan(
                            text: "100% Authentic",
                            style: regular12(s, green),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: hh(s, 60)),
              Container(
                width: double.infinity,
                height: hh(s, hh(s, 184)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Information",
                      style: bold16(s, black100),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: hh(s, 140),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      //   Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Container(
                      //       width: ww(s, 96),
                      //       child: Text(
                      //         variable,
                      //         style: regular12(s, black60),
                      //       ),
                      //     ),
                      //     Expanded(
                      //       child: Text(
                      //         value,
                      //         style: regular12(s, black100),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      //     InformationItem(s: s, variable: "Style", value: "487471-006"),
                      //     InformationItem(
                      //         s: s,
                      //         variable: "Colorway",
                      //         value: "BLACK\nWHITE-OFF WHITE-GYM RED"),
                      //     InformationItem(s: s, variable: "Retail Price", value: "\$190"),
                      //     InformationItem(
                      //         s: s, variable: "Release Date", value: "07/02/2020"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: hh(s, 60)),
              LatestSales(),
              SizedBox(height: hh(s, 60)),
              Container(
                width: double.infinity,
                height: hh(s, 282),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Related Products",
                      style: bold20(s, black100),
                    ),
                    Spacer(),
                    Container(
                      height: hh(s, 234),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: horizontalData(s, mostPopularItems).length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: ww(s, 15)),
                            child: horizontalData(s, mostPopularItems)[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: white100,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(ww(s, 24)),
          ),
          boxShadow: [
            BoxShadow(
              color: black10,
              offset: Offset(0, -6),
              blurRadius: 12,
            ),
          ],
        ),
      ),
    );
  }
}

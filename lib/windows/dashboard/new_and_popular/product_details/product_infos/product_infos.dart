import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      top: (s.height * 351) / 812,
      left: 0,
      child: Container(
        width: s.width,
        height: s.height - (s.height * 351) / 812,
        padding:
            EdgeInsets.only(left: (s.width * 30) / 375, right: (s.width * 30) / 375, top: (s.width * 30) / 375),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Size All",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  SvgPicture.asset(
                    "res/icons/chevronDown.svg",
                    width: (s.width * 24) / 375,
                  )
                ],
              ),
              SizedBox(height: (s.height * 30) / 812),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Material(
                    borderRadius: BorderRadius.circular((s.width * 12) / 375),
                    elevation: 0,
                    color: Colors.green,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        width: (s.width * 150) / 375,
                        height: (s.height * 72) / 812,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Buy \$214",
                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "or Bid",
                                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(width: (s.width * 10) / 375),
                                Text(
                                  "Lowest Ask",
                                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
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
                    borderRadius: BorderRadius.circular((s.width * 12) / 375),
                    elevation: 0,
                    color: Colors.red,
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(100),
                      child: Container(
                        width: (s.width * 150) / 375,
                        height: (s.height * 72) / 812,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Sell \$265",
                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "or Ask",
                                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(width: (s.width * 10) / 375),
                                Text(
                                  "Highest Bid",
                                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
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
              SizedBox(height: (s.height * 30) / 812),
              Container(
                width: double.infinity,
                height: (s.height * 90) / 812,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jordan 14 Retro Gym Red Toro",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                        children: [
                          TextSpan(
                            text: "Condition:",
                          ),
                          TextSpan(
                            text: "New",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
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
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: (s.height * 60) / 812),
              Container(
                width: double.infinity,
                height: (s.height * (s.height * 184) / 812) / 812 ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Information",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: (s.height * 140) / 812,
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
              SizedBox(height: (s.height * 60) / 812),
              LatestSales(),
              SizedBox(height: (s.height * 60) / 812),
              Container(
                width: double.infinity,
                height: (s.height * 282) / 812,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Related Products",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    Container(
                      height: (s.height * 234) / 812,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: horizontalData(s, mostPopularItems).length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(right: (s.width * 15) / 375),
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
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular((s.width * 24) / 375),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              offset: Offset(0, -6),
              blurRadius: 12,
            ),
          ],
        ),
      ),
    );
  }
}

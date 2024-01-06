import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Source/source_shelf.dart';

import '../../../Data/section_items_data.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: s.width,
        height: s.height,
        child: horizontalPadding30(
          s,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: hh(s, 52)),
                CircleButton(
                  s: s,
                  onTap: () => back(context),
                  child: SvgPicture.asset("assets/icons/chevronLeft.svg"),
                  color: black5,
                ),
                SizedBox(height: hh(s, 20)),
                Container(
                  height: hh(s, 44),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Settings",
                    style: bold20(s, black100),
                  ),
                ),
                SizedBox(height: hh(s, 20)),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Account",
                        style: bold12(s, black30),
                      ),
                      SizedBox(height: hh(s, 10)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          accountItems.length,
                              (index) => accountItems[index],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: hh(s, 40)),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Information",
                        style: bold12(s, black30),
                      ),
                      SizedBox(height: hh(s, 10)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          infoItems.length,
                              (index) => infoItems[index],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: hh(s, 40)),
                Container(
                  height: hh(s, 44),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: hh(s, 10)),
                  child: Text(
                    "Sign Out",
                    style: regular20(s, red),
                  ),
                ),
                SizedBox(height: hh(s, 40)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

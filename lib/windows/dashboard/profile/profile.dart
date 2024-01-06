import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x_store/Components/components_shelf.dart';
import 'package:x_store/Source/source_shelf.dart';

import '../../../core/router_generator.dart';
import 'settings.dart';
import 'user_infos.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: s.width,
      height: s.height,
      color: white100,
      child: horizontalPadding30(
        s,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: hh(s, 52)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Profile",
                    style: bold28(s, black100),
                  ),
                  CircleButton(
                    s: s,
                    onTap:  () => Navigator.pushNamed(context, RouterGenerator.settingsRoute),
                    child: SvgPicture.asset("assets/icons/setting.svg"),
                    color: black5,
                  ),
                ],
              ),
              SizedBox(height: hh(s, 52)),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(hh(s, 96)),
                    child: Container(
                      color: red,
                      width: hh(s, 96),
                      height: hh(s, 96),
                      child: Image.asset(
                        "assets/images/u1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: ww(s, 15)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Alicia",
                        style: bold20(s, black100),
                      ),
                      Text(
                        "jeans@jeans-studio.com",
                        style: bold12(s, black100),
                      ),
                      Text(
                        "jeans@jeans-studio.com",
                        style: regular11(s, black30),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: hh(s, 20)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: hh(s, 44),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Buying",
                      style: bold20(s, black100),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: hh(s, 92),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Current",
                              style: bold11(s, black100),
                            ),
                            Text(
                              "3",
                              style: bold20(s, green),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Pending",
                              style: bold11(s, black100),
                            ),
                            Text(
                              "0",
                              style: bold20(s, green),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "History",
                              style: bold11(s, black100),
                            ),
                            Text(
                              "5",
                              style: bold20(s, green),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ww(s, 12)),
                      color: red.withOpacity(0.05),
                    ),
                  ),
                ],
              ),
              SizedBox(height: hh(s, 20)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: hh(s, 44),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Selling",
                      style: bold20(s, black100),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: hh(s, 92),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Current",
                              style: bold11(s, black100),
                            ),
                            Text(
                              "3",
                              style: bold20(s, red),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Pending",
                              style: bold11(s, black100),
                            ),
                            Text(
                              "0",
                              style: bold20(s, red),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "History",
                              style: bold11(s, black100),
                            ),
                            Text(
                              "5",
                              style: bold20(s, red),
                            ),
                          ],
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(ww(s, 12)),
                      color: red.withOpacity(0.05),
                    ),
                  ),
                ],
              ),
              SizedBox(height: hh(s, 20)),
              UserInfos(s: s),
              SizedBox(height: hh(s, 124)),
            ],
          ),
        ),
      ),
    );
  }
}

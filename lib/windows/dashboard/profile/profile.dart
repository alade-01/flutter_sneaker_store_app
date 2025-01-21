import 'package:flutter/material.dart';


import '../../../Components/shared/CircleButton.dart';
import '../../../core/router_generator.dart';
import 'user_infos.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: s.width,
      height: s.height,
      color: Colors.white,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: (s.height * 52) / 812),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Profile",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                CircleButton(
                  onTap: () => Navigator.pushNamed(context, RouterGenerator.settingsRoute),
                  child: Icon(Icons.settings,color: Colors.black),
                ),
              ],
            ),
            SizedBox(height: (s.height * 52) / 812),
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular((s.height * 96) / 812),
                  child: Container(
                    color: Colors.red,
                    width: (s.height * 96) / 812,
                    height: (s.height * 96) / 812,
                    child: Image.asset(
                      "res/images/u1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: (s.width * 15) / 375),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Alicia",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "jeans@jeans-studio.com",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "jeans@jeans-studio.com",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: (s.height * 20) / 812),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: (s.height * 44) / 812,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Buying",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: (s.height * 92) / 812,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Current",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.black ,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "3",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pending",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "0",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "History",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "5",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.green,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular((s.width * 12) / 375),
                    color: Colors.red.withOpacity(0.05),
                  ),
                ),
              ],
            ),
            SizedBox(height: (s.height * 20) / 812),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: (s.height * 44) / 812,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Selling",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: (s.height * 92) / 812,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Current",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "3",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pending",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "0",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "History",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "5",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular((s.width * 12) / 375),
                    color: Colors.red.withOpacity(0.05),
                  ),
                ),
              ],
            ),
            SizedBox(height: (s.height * 20) / 812),
            UserInfos(s: s),
            SizedBox(height: (s.height * 124) / 812),
          ],
        ),
      ),
    );
  }
}

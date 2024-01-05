import 'package:flutter/material.dart';
import 'package:x_store/Source/source_shelf.dart';

import '../../Components/shared/app_button.dart';
import '../../core/constants.dart';
import '../../core/router_generator.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: ww(size, 253),
              height: hh(size, 164),
              padding: EdgeInsets.only(left: secondaryPadding(size)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Buy & Sell Authentic",
                    style: bold16(size, red),
                  ),
                  Text(
                    "X - Store",
                    style: TextStyle(
                      color: white100,
                      fontSize: hh(size, 48),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    "Real Time\nMarket Pricing",
                    style: bold24(size, white100),
                  ),
                ],
              ),
            ),
            Spacer(),
            AppButton(
              callback: () =>
                  Navigator.pushNamed(context, RouterGenerator.loginRoute),
              label: "Sign In",
              color: secondaryColor,
              solid: false,
              buttonType: ButtonType.SECONDARY,
              width: size.width * 0.9,
            ),
            AppButton(
              callback: () =>
                  Navigator.pushNamed(context, RouterGenerator.registerRoute),
              label: "Sign Up",
              color: secondaryColor,
              solid: false,
              buttonType: ButtonType.SECONDARY,
              width: size.width * 0.9,
            ),
            SizedBox(height: hh(size, 64)),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

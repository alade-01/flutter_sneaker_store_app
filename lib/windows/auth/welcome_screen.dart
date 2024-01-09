import 'package:flutter/material.dart';

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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("res/images/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Column(
                  children: [
                    Text(
                      "X - Store",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(
                              fontSize: 45,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Real Time\nMarket Pricing",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )),
                const SizedBox(height: BUTTON_SEPARATION_SPACE * 2.5),
                AppButton(
                  callback: () =>
                      Navigator.pushNamed(context, RouterGenerator.loginRoute),
                  label: "Sign In",
                  color: secondaryColor,
                  solid: false,
                  buttonType: ButtonType.SECONDARY,
                  width: size.width * 0.9,
                ),
                const SizedBox(height: BUTTON_SEPARATION_SPACE * 2.5),
                AppButton(
                  callback: () => Navigator.pushNamed(
                      context, RouterGenerator.registerRoute),
                  label: "Sign Up",
                  color: Colors.white,
                  buttonType: ButtonType.PRIMARY,
                  width: size.width * 0.9,
                ),
                const SizedBox(height: BUTTON_SEPARATION_SPACE * 1.5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

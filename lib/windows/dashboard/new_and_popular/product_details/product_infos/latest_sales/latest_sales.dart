import 'package:flutter/material.dart';

import '../../../../../../core/constants.dart';
import 'sales.dart';

class LatestSales extends StatelessWidget {
  const LatestSales({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Sales",
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.w500),
        ),
        Image.asset(
          "res/images/graph.png",
          fit: BoxFit.fitHeight,
        ),
        const SizedBox(height: BUTTON_SEPARATION_SPACE),
        Sales(size: size),
        const SizedBox(height: BUTTON_SEPARATION_SPACE),
        Text(
          "View All Sales",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: BUTTON_SEPARATION_SPACE),
        Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "52 Week",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "\$500",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "\$500",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "High",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Low",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "52 Week",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "\$500",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "\$500",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "High",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "Low",
                            style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}

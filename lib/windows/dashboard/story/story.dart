import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../Components/items/live_stroy_item.dart';
import '../../../../Components/shared/sender.dart';

class Story extends StatelessWidget {
  const Story({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: (s.height * 74) / 812),
    Text(
    "Today",
    style: Theme.of(context).textTheme.labelLarge!.copyWith(
    fontSize: 16,
    fontWeight: FontWeight.w500),
    ),
          LiveStroyItem(
            title: "Welcome to X-Store",
            sender: Sender(
              name: "X-Store",
              views: "2.1K views",
              time: "3min ago",
            ),
            img: "res/images/p7.png",
          ),
          SizedBox(height: (s.height * 20) / 812),
          LiveStroyItem(
            action: Container(
              width: (s.width * 48) / 375,
              height: (s.width * 48) / 375,
              child: SvgPicture.asset(
                "res/icons/play.svg",
                fit: BoxFit.cover,
              ),
            ),
            title: "Nike Adapt BB Unboxing - Futuristic Self Lacing Sneakers",
            sender: Sender(
              name: "Unbox theraphy",
              views: "2.1K views",
              time: "3min ago",
              img: "res/images/u1.png",
            ),
            img: "res/images/p6.png",
          ),
          SizedBox(height: (s.height * 20) / 812),
          LiveStroyItem(
            action: Container(
              width: (s.width * 36) / 375,
              height: (s.height * 20) / 812,
              child: Text(
                "LIVE",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                  color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular((s.width * 6) / 375),
                color: Colors.red,
              ),
            ),
            title:
                "Nike Alphafly Next% Full & Final Review | Carbon Fiber Plate Marathon Shoe",
            sender: Sender(
              name: "fideletty",
              views: "2.1K views",
              time: "3min ago",
              img: "res/images/u2.png",
            ),
            img: "res/images/p5.png",
          ),
          SizedBox(height: (s.height * 20) / 812),
          LiveStroyItem(
            title: "About Jordan 1 Mid Chicago Toe",
            sender: Sender(
              name: "TheOffWhite",
              views: "2.1K views",
              time: "3min ago",
              img: "res/images/u3.png",
            ),
            img: "res/images/p4.png",
          ),
          SizedBox(height: (s.height * 20) / 812),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../Components/shared/CircleButton.dart';

class Cover extends StatefulWidget {
  const Cover({
    Key? key,
    required this.s,
  }) : super(key: key);

  final Size s;

  @override
  _CoverState createState() => _CoverState();
}

class _CoverState extends State<Cover> {
  PageController controller = PageController();
  int page = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      width: (s.width * 375) / 375,
      height: (s.width * 375) / 375,
      color: Colors.white,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: images.length,
            controller: controller,
            physics: BouncingScrollPhysics(),
            onPageChanged: (val) => setState(() => page = val),
            itemBuilder: (context, index) {
              return Container(
                width: (s.width * 375) / 375,
                height: (s.width * 375) / 375,
                color: Colors.white,
                child: Center(
                  child: Container(
                    width: (s.width * 300) / 300,
                    height: (s.width * 214) / 214,
                    child: Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: (s.height * 54) / 812),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(images.length, (index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: (s.height * 2) / 812),
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 240),
                      width: index == page ? (s.width * 40) / 375 : (s.width * 6) / 375,
                      height: (s.height * 2) / 812,
                      decoration: BoxDecoration(
                        color: index == page ? Colors.black : Colors.black.withOpacity(0.1),
                        borderRadius: BorderRadius.circular((s.height * 2) / 812),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          Positioned(
            top: (s.height * 54) / 812,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: (s.width * 30) / 375),
              width: s.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleButton(
                    onTap: () => Navigator.of(context),
                    child: Icon(Icons.arrow_back,color: Colors.black),
                  ),
                  Row(
                    children: [
                      CircleButton(
                        onTap: () => Navigator.of(context),
                        child: Icon(Icons.add,color: Colors.black),
                      ),
                      SizedBox(width:(s.width * 10) / 375),
                      CircleButton(
                        onTap: () => Navigator.of(context),
                        child: Icon(Icons.more_horiz,color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

List<String> images = [
  "res/images/p21.png",
  "res/images/p20.png",
  "res/images/p19.png",
];

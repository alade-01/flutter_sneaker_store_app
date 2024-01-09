import 'package:flutter/material.dart';

import '../../core/router_generator.dart';


class LiveStroyItem extends StatelessWidget {
  const LiveStroyItem({
    Key? key,
    required this.title,
    required this.sender,
    required this.img,
    this.action,
  }) : super(key: key);
  final String title;
  final Widget sender;
  final String img;
  final Widget? action;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return GestureDetector(
      onTap:  () => Navigator.pushNamed(context, RouterGenerator.storyDetailRoute),
      child: Container(
        width: (s.width * 315) / 375,
        height: (s.width * 315) / 375,
        margin: EdgeInsets.only(left: (s.width * 30) / 375),
        child: Stack(
          children: [
            Container(
              width: (s.width * 315) / 375,
              height: (s.width * 315) / 375 ,
                padding: EdgeInsets.all((s.width * 24) / 375),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  action ?? Container(),
                  SizedBox(height: (s.height * 10) / 812),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: (s.height * 8) / 812),
                  sender,
                ],
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.3), Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                borderRadius: BorderRadius.circular((s.width * 12) / 375),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular((s.width * 12) / 375),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover,
          ),
          border: Border.all(
            color: Colors.black.withOpacity(0.5),
            width: (s.width * 0.5) / 375,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              offset: Offset(0, 8),
              blurRadius: 16,
            ),
          ],
        ),
      ),
    );
  }
}

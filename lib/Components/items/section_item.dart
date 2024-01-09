import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Container(
      height: (s.height * 44) / 812,
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(top: (s.height * 10) / 812),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500)
          ),
          SvgPicture.asset(icon),
        ],
      ),
    );
  }
}

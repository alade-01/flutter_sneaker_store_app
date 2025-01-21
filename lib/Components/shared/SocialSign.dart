import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'CircleButton.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    return  CircleButton(
      onTap: () {},
      child: SvgPicture.asset(icon),
    );
  }
}

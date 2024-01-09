import 'package:flutter/material.dart';

class TheInfoItem extends StatelessWidget {
  const TheInfoItem({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: (s.height * 8) / 812),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}

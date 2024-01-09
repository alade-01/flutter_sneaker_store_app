import 'package:flutter/material.dart';


class BaseSection extends StatelessWidget {
  const BaseSection({
    Key? key,
    required this.s,
    required this.header,
    required this.content,
    this.height,
  }) : super(key: key);

  final Size s;
  final String header;
  final Widget content;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? (s.height * 282) / 812,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            header,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
          color: Colors.black,
          fontSize: 30,
          fontWeight: FontWeight.w700)
          ),
          Spacer(),
          content,
        ],
      ),
    );
  }
}
